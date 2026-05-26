#!/usr/bin/env python3
"""
asm-diff.py — align named functions between our stage-1 build and the
original HI-TECH .com binary, and print byte-size diffs.

usage:
    asm-diff.py [--name NAME] OURS.com OURS.sym ORIG.com

Strategy:

  1. Parse OURS.sym for `_`-prefixed C symbols. Each is a candidate
     function entry point; the next-higher address is its end.

  2. For each function, scan its bytes for "string-literal load"
     sequences:  21 lo hi  (LD HL,imm16). If imm16 points into a
     readable ASCII string in OURS.com, record (function, string).

  3. For each anchor string, look up its address in ORIG.com (strings
     are stable across builds, just at different addresses). Find all
     `21 lo hi` references to that address in ORIG. Each is the
     start of a function (or a callsite inside one).

  4. From the matching reference site, walk backwards in ORIG to find
     the most recent likely-function-entry (RET followed by something
     that isn't NOP padding, or `call csv` pattern), and forward to
     the matching exit. Report the size and a snippet.

  5. If --name is given, focus on that one function. Otherwise emit a
     CSV-style table of (name, ours_size, orig_size, ratio) for every
     anchored function.

This is a pragmatic tool — won't find unanchored functions (no string
refs) and may misalign when a string is referenced from multiple
sites. Both classes are reported as `?` in the output.
"""

from __future__ import annotations
import argparse
import re
import sys
from dataclasses import dataclass


# ---- generic binary helpers ---------------------------------------------

def cpm_load_addr(file_offset: int) -> int:
    """File offset N in a CP/M .com → memory address N+0x100."""
    return file_offset + 0x100


def find_strings(blob: bytes, min_len: int = 4) -> dict[int, bytes]:
    """Return {memory_addr: string_bytes} for printable runs >= min_len."""
    out: dict[int, bytes] = {}
    start = None
    for i, b in enumerate(blob):
        printable = (32 <= b < 127) or b in (9, 10, 13)
        if printable:
            if start is None:
                start = i
        else:
            if start is not None and i - start >= min_len:
                out[cpm_load_addr(start)] = blob[start:i]
            start = None
    if start is not None and len(blob) - start >= min_len:
        out[cpm_load_addr(start)] = blob[start:]
    return out


def find_imm16_refs(blob: bytes, target_addr: int) -> list[int]:
    """Memory addresses of `21 lo hi` instructions where lohi == target_addr."""
    lo = target_addr & 0xff
    hi = (target_addr >> 8) & 0xff
    needle = bytes([0x21, lo, hi])
    out = []
    i = 0
    while True:
        j = blob.find(needle, i)
        if j < 0:
            break
        out.append(cpm_load_addr(j))
        i = j + 1
    return out


# ---- symbol table --------------------------------------------------------

@dataclass
class Symbol:
    name: str
    addr: int

    @property
    def is_text(self) -> bool:
        # Heuristic: text section in cgen.com runs from 0x100 to ~0xb000.
        # Anything above is data/bss.
        return 0x100 <= self.addr < 0xb000


def parse_sym(path: str) -> list[Symbol]:
    """HI-TECH linker .sym format: `<hex_addr> <name>` per line."""
    syms = []
    with open(path) as f:
        for line in f:
            parts = line.split()
            if len(parts) < 2:
                continue
            try:
                addr = int(parts[0], 16)
            except ValueError:
                continue
            name = parts[1]
            if name.startswith("_"):
                syms.append(Symbol(name, addr))
    return sorted(syms, key=lambda s: s.addr)


def function_ranges(syms: list[Symbol]) -> dict[str, tuple[int, int]]:
    """Map function name → (start_addr, end_addr_exclusive)."""
    out: dict[str, tuple[int, int]] = {}
    text_syms = [s for s in syms if s.is_text]
    for i, s in enumerate(text_syms):
        end = text_syms[i + 1].addr if i + 1 < len(text_syms) else 0xb000
        out[s.name] = (s.addr, end)
    return out


# ---- main analysis ------------------------------------------------------

@dataclass
class Anchor:
    """A `LD HL,imm16` reference to a string literal, with its location
    inside the containing function."""
    string: bytes
    offset_in_func: int     # bytes from start of function to this LD HL


def collect_anchors(ours_blob: bytes, start: int, end: int,
                    ours_strings: dict[int, bytes]) -> list[Anchor]:
    """Return all `LD HL,strlit` anchors inside [start, end)."""
    body = ours_blob[start - 0x100:end - 0x100]
    out: list[Anchor] = []
    for j in range(len(body) - 2):
        if body[j] != 0x21:
            continue
        target = body[j + 1] | (body[j + 2] << 8)
        if target in ours_strings:
            out.append(Anchor(string=ours_strings[target], offset_in_func=j))
    return out


@dataclass
class CallAnchor:
    """A `CALL imm16` reference to a known function, with its location
    inside the containing function."""
    callee_our_addr: int    # address in our build
    callee_orig_addr: int   # address of same function in orig (resolved)
    offset_in_func: int     # bytes from start of function to this CALL


def collect_call_anchors(ours_blob: bytes, start: int, end: int,
                         func_map: dict[int, int]) -> list[CallAnchor]:
    """Return `CALL imm16` instructions where imm16 names a function
    whose orig address we already know (via func_map: our_addr → orig_addr)."""
    body = ours_blob[start - 0x100:end - 0x100]
    out: list[CallAnchor] = []
    for j in range(len(body) - 2):
        if body[j] != 0xcd:                  # CALL imm16
            continue
        target = body[j + 1] | (body[j + 2] << 8)
        if target in func_map:
            out.append(CallAnchor(
                callee_our_addr=target,
                callee_orig_addr=func_map[target],
                offset_in_func=j,
            ))
    return out


# Opcodes whose immediately-following 2 bytes are absolute 16-bit
# addresses (which differ between builds). When fingerprinting a
# function for byte-level matching, mask out those operand bytes so a
# function that only differs in linker-resolved targets still matches.
WILD_OPCODES_3B = {
    0xc3,  # JP imm16
    0xc2, 0xca, 0xd2, 0xda, 0xe2, 0xea, 0xf2, 0xfa,  # JP cc, imm16
    0xcd,  # CALL imm16
    0xc4, 0xcc, 0xd4, 0xdc, 0xe4, 0xec, 0xf4, 0xfc,  # CALL cc, imm16
    0x21,  # LD HL, imm16
    0x01,  # LD BC, imm16
    0x11,  # LD DE, imm16
    0x31,  # LD SP, imm16
    0x22,  # LD (imm16), HL
    0x2a,  # LD HL, (imm16)
    0x32,  # LD (imm16), A
    0x3a,  # LD A, (imm16)
}


def mask_blob_inplace(blob: bytes, start_off: int = 0) -> bytes:
    """Walk blob from `start_off`, decode instruction widths well
    enough to identify imm16 operand positions, and return a copy with
    those operand bytes zeroed. Two function bodies with the same
    opcodes but different linker-resolved targets give identical masked
    bytes for the same starting offset."""
    out = bytearray(blob)
    i = start_off
    while i < len(out):
        op = out[i]
        if op == 0xed and i + 1 < len(out):
            sub = out[i + 1]
            if sub in (0x43, 0x53, 0x63, 0x73, 0x4b, 0x5b, 0x6b, 0x7b):
                if i + 4 <= len(out):
                    out[i + 2] = 0
                    out[i + 3] = 0
                i += 4
                continue
            i += 2
            continue
        if op in (0xdd, 0xfd):
            # IX/IY prefix; treat subsequent byte normally
            i += 1
            continue
        if op == 0xcb:
            i += 2
            continue
        if op in WILD_OPCODES_3B and i + 3 <= len(out):
            out[i + 1] = 0
            out[i + 2] = 0
            i += 3
            continue
        i += 1
    return bytes(out)


def find_by_fingerprint(masked_orig: bytes,
                        masked_ours_func: bytes
                       ) -> list[int]:
    """Find all positions in masked_orig where masked_ours_func appears.
    Returns memory addresses (file offset + 0x100)."""
    matches: list[int] = []
    i = 0
    while True:
        j = masked_orig.find(masked_ours_func, i)
        if j < 0:
            break
        matches.append(cpm_load_addr(j))
        i = j + 1
    return matches


def locate_function_by_calls(orig_blob: bytes,
                             call_anchors: list[CallAnchor],
                             tolerance: int = 16
                            ) -> tuple[str, int | None, int]:
    """Same as locate_function_in_orig but uses CALL targets (known
    orig addresses of other anchored functions) instead of string
    refs. Each CallAnchor names where in ours the CALL is and what
    orig address it points to."""
    # For each call anchor, find all `cd lo hi` in orig with that target
    anchor_refs: list[list[tuple[int, int]]] = []
    for c in call_anchors:
        lo = c.callee_orig_addr & 0xff
        hi = (c.callee_orig_addr >> 8) & 0xff
        needle = bytes([0xcd, lo, hi])
        sites = []
        i = 0
        while True:
            j = orig_blob.find(needle, i)
            if j < 0:
                break
            sites.append(cpm_load_addr(j))
            i = j + 1
        anchor_refs.append([(c.offset_in_func, s) for s in sites])

    if all(not refs for refs in anchor_refs):
        return ('no-call-match', None, 0)

    from collections import Counter
    votes: Counter[int] = Counter()

    # Pairwise voting on candidate function-starts (same logic as
    # string anchoring, but each pair must agree on relative offset).
    for i in range(len(call_anchors)):
        for j in range(i + 1, len(call_anchors)):
            ai, aj = call_anchors[i], call_anchors[j]
            expected = aj.offset_in_func - ai.offset_in_func
            for off_i, ref_i in anchor_refs[i]:
                for off_j, ref_j in anchor_refs[j]:
                    if abs((ref_j - ref_i) - expected) <= tolerance:
                        cand = ref_i - ai.offset_in_func
                        votes[cand] += 2

    # Need pairwise confirmation — single-call anchoring is too noisy
    # (the same orig function is typically called from many places).
    if not votes:
        return ('no-call-match', None, 0)

    top = votes.most_common(2)
    if len(top) > 1 and top[0][1] == top[1][1]:
        return ('ambig', None, top[0][1])
    return ('found', top[0][0], top[0][1])


def locate_function_in_orig(orig_blob: bytes,
                            orig_strings: dict[int, bytes],
                            anchors: list[Anchor],
                            tolerance: int = 16
                           ) -> tuple[str, int | None, int]:
    """Find the most likely function start address in `orig` matching
    a function in `ours` characterised by the given anchors.

    Strategy: each anchor names a string `S` and the offset within the
    function where `LD HL,&S` appears. In the original, find all
    addresses where `LD HL,&S_in_orig` appears. For every pair of
    anchors (a, b) and every pair of orig refs (a_ref, b_ref), if
    b_ref - a_ref ≈ b.offset - a.offset (within ±tolerance), then
    a candidate function-start = a_ref - a.offset_in_func. Vote.
    The candidate with most votes wins; one anchor with one orig
    ref still works (single-anchor fallback).

    Returns (status, addr, vote_count) where status is one of:
        'found'        - addr is the inferred orig function start
        'string-not-in-orig'  - no anchors map to orig strings
        'ambig'        - multiple candidates tied
    """
    rev = {s: addr for addr, s in orig_strings.items()}

    # For each anchor: list of (offset_in_ours_func, orig_ref_addr)
    anchor_refs: list[list[tuple[int, int]]] = []
    for a in anchors:
        if a.string not in rev:
            anchor_refs.append([])
            continue
        sites = find_imm16_refs(orig_blob, rev[a.string])
        anchor_refs.append([(a.offset_in_func, s) for s in sites])

    if all(not refs for refs in anchor_refs):
        return ('string-not-in-orig', None, 0)

    # Vote on each candidate function-start. A vote = a confirmed pair
    # of anchors at the right relative distance, OR a singleton anchor
    # whose ref position implies a start.
    from collections import Counter
    votes: Counter[int] = Counter()

    # Pairwise voting (preferred)
    for i in range(len(anchors)):
        for j in range(i + 1, len(anchors)):
            ai, aj = anchors[i], anchors[j]
            expected = aj.offset_in_func - ai.offset_in_func
            for off_i, ref_i in anchor_refs[i]:
                for off_j, ref_j in anchor_refs[j]:
                    if abs((ref_j - ref_i) - expected) <= tolerance:
                        cand = ref_i - ai.offset_in_func
                        votes[cand] += 2  # 2 anchors confirming

    # Single-anchor fallback (each ref contributes one vote)
    if not votes:
        for i, a in enumerate(anchors):
            for off, ref in anchor_refs[i]:
                cand = ref - a.offset_in_func
                votes[cand] += 1

    if not votes:
        return ('string-not-in-orig', None, 0)

    top = votes.most_common(2)
    if len(top) > 1 and top[0][1] == top[1][1]:
        return ('ambig', None, top[0][1])
    return ('found', top[0][0], top[0][1])


def find_cret(blob: bytes) -> int:
    """Return the address of `cret` (HI-TECH's standard function epilogue),
    inferred from the most popular `JP imm16` target in the binary.
    Every HI-TECH-compiled function tail-jumps to cret."""
    from collections import Counter
    tgts: Counter[int] = Counter()
    for i in range(len(blob) - 2):
        if blob[i] == 0xc3:
            tgts[blob[i + 1] | (blob[i + 2] << 8)] += 1
    # The top target with at least ~20 jumps wins; otherwise no cret.
    top, n = tgts.most_common(1)[0]
    return top if n >= 20 else 0


def is_function_exit(blob: bytes, k: int, cret: int) -> int | None:
    """If blob[k] starts a function-exit instruction, return its size.
    A `JP` only counts as an exit if it targets cret."""
    b = blob[k]
    if b == 0xc9:                       # RET
        return 1
    if b == 0xc3 and k + 3 <= len(blob):
        target = blob[k + 1] | (blob[k + 2] << 8)
        if target == cret:
            return 3
    return None


def function_extent_from_ref(blob: bytes, ref_addr: int,
                             cret: int) -> tuple[int, int]:
    """Given a `21 lo hi` ref site inside a function, guess (start, end)
    by walking outwards. A function-end is either RET (c9) or JP cret
    (c3 <cret_lo> <cret_hi>). Padding 00 between functions is skipped."""
    file_off = ref_addr - 0x100

    start_off = 0
    for k in range(file_off - 1, -1, -1):
        sz = is_function_exit(blob, k, cret)
        if sz is None:
            continue
        j = k + sz
        while j < len(blob) and blob[j] == 0x00:
            j += 1
        if j > file_off:
            continue
        start_off = j
        break

    end_off = len(blob)
    for k in range(file_off, len(blob)):
        sz = is_function_exit(blob, k, cret)
        if sz is None:
            continue
        end_off = k + sz
        break

    return (cpm_load_addr(start_off), cpm_load_addr(end_off))


def main():
    ap = argparse.ArgumentParser()
    ap.add_argument("--name", help="focus on a single function")
    ap.add_argument("--limit", type=int, default=0,
                    help="cap number of functions reported")
    ap.add_argument("ours", help="our stage-1 .com")
    ap.add_argument("sym",  help="our linker .sym")
    ap.add_argument("orig", help="original .com (no symbols)")
    args = ap.parse_args()

    ours_blob = open(args.ours, "rb").read()
    orig_blob = open(args.orig, "rb").read()
    ours_strings = find_strings(ours_blob)
    orig_strings = find_strings(orig_blob)
    orig_cret = find_cret(orig_blob)

    syms = parse_sym(args.sym)
    ranges = function_ranges(syms)

    names = [args.name] if args.name else [
        s.name for s in syms if s.is_text and s.name in ranges
    ]
    if args.limit:
        names = names[:args.limit]

    # Two-pass alignment.
    # Pass 1: string-anchor each function. Functions sized.
    # Pass 2: for unanchored functions, anchor by CALLs to functions
    #         resolved in pass 1. Iterate until quiescent.
    results: dict[str, tuple[int, int | None, int, str]] = {}
    # name → (ours_size, orig_size_or_None, orig_start_or_-1, status_tag)
    func_map: dict[int, int] = {}  # our_addr → orig_addr (resolved)

    def record(name: str, ours_size: int, orig_start: int, ours_addr: int,
               method: str):
        orig_end_addr = function_extent_from_ref(
            orig_blob, orig_start + 0, orig_cret)[1]
        # Re-do extent from a known-internal ref - use first anchor ref
        # if we have it; else assume orig_start is the function start
        # and forward-walk for end.
        # Walker already keys off the ref site inside the func; reuse
        # locate logic by treating orig_start itself as the start and
        # forward-walking for the end.
        forward_end = len(orig_blob)
        for k in range(orig_start - 0x100, len(orig_blob)):
            sz = is_function_exit(orig_blob, k, orig_cret)
            if sz is not None:
                forward_end = k + sz
                break
        orig_end_addr = cpm_load_addr(forward_end)
        orig_size = orig_end_addr - orig_start
        if orig_size > 2 * ours_size or ours_size > 2 * orig_size:
            results[name] = (ours_size, None, orig_start, f'walker-unsure[{method}]')
        else:
            results[name] = (ours_size, orig_size, orig_start, method)
            func_map[ours_addr] = orig_start

    # ---- pass 1: string anchors --------------------------------
    pending: list[str] = []
    for name in names:
        if name not in ranges:
            continue
        start, end = ranges[name]
        ours_size = end - start
        anchors = collect_anchors(ours_blob, start, end, ours_strings)
        if not anchors:
            pending.append(name)
            results[name] = (ours_size, None, -1, 'no-anchor')
            continue
        status, hint, votes = locate_function_in_orig(
            orig_blob, orig_strings, anchors)
        if status == 'found':
            record(name, ours_size, hint, start, 'str')
        elif status == 'ambig':
            pending.append(name)
            results[name] = (ours_size, None, -1, f'str-ambig({votes}v)')
        else:
            pending.append(name)
            results[name] = (ours_size, None, -1, 'no-string-match')

    # ---- pass 2: byte-fingerprint match (libc and other byte-perfect funcs)
    # Walks the orig blob once with imm16 operands masked, then for
    # each remaining unanchored function in ours, fingerprints its
    # body the same way and checks bytes.find() for a unique location.
    masked_orig = mask_blob_inplace(orig_blob)
    for name in list(pending):
        start, end = ranges[name]
        ours_size = end - start
        masked_ours = mask_blob_inplace(
            ours_blob[start - 0x100:end - 0x100])
        if len(masked_ours) < 12:
            continue                       # too short, unreliable
        hits = find_by_fingerprint(masked_orig, masked_ours)
        if len(hits) == 1:
            record(name, ours_size, hits[0], start, 'fp')
            pending.remove(name)
        elif len(hits) > 1:
            results[name] = (ours_size, None, -1, f'fp-ambig({len(hits)})')

    # ---- pass 3+: call-target anchors, iterated until stable ----
    for iteration in range(3):
        progress = 0
        for name in list(pending):
            start, end = ranges[name]
            ours_size = end - start
            calls = collect_call_anchors(ours_blob, start, end, func_map)
            if len(calls) < 2:
                continue
            status, hint, votes = locate_function_by_calls(orig_blob, calls)
            if status == 'found':
                record(name, ours_size, hint, start, f'call[r{iteration+1}]')
                pending.remove(name)
                progress += 1
        if not progress:
            break

    # ---- emit report --------------------------------------------
    print(f"{'function':<28} {'ours':>6} {'orig':>6} {'delta':>9} {'note'}")
    print("-" * 80)
    for name in names:
        if name not in results:
            continue
        ours_size, orig_size, orig_start, method = results[name]
        if orig_size is None:
            print(f"{name:<28} {ours_size:>6} {'?':>6} {'':>9} {method}")
        else:
            delta = ours_size - orig_size
            pct = f"{100*delta/orig_size:+.1f}%" if orig_size else "?"
            print(f"{name:<28} {ours_size:>6} {orig_size:>6} {pct:>9} "
                  f"orig=0x{orig_start:04x} via-{method}")


if __name__ == "__main__":
    main()
