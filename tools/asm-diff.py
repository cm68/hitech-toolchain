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

def collect_anchors(ours_blob: bytes, name: str,
                    start: int, end: int,
                    ours_strings: dict[int, bytes]) -> list[bytes]:
    """Return string literals referenced from within [start,end) of ours."""
    body = ours_blob[start - 0x100:end - 0x100]
    anchors: list[bytes] = []
    # Scan for `21 lo hi` LD HL,imm16 instructions
    for j in range(len(body) - 2):
        if body[j] != 0x21:
            continue
        target = body[j + 1] | (body[j + 2] << 8)
        if target in ours_strings:
            anchors.append(ours_strings[target])
    return anchors


def locate_in_orig(orig_blob: bytes, orig_strings: dict[int, bytes],
                   anchors: list[bytes]) -> list[int]:
    """For each anchor string present in orig, return refs to it."""
    rev_strings = {s: addr for addr, s in orig_strings.items()}
    refs: list[int] = []
    for a in anchors:
        if a in rev_strings:
            refs.extend(find_imm16_refs(orig_blob, rev_strings[a]))
    return sorted(set(refs))


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

    # Header
    print(f"{'function':<28} {'ours':>6} {'orig':>6} {'delta':>7} {'note'}")
    print("-" * 70)

    for name in names:
        if name not in ranges:
            continue
        start, end = ranges[name]
        ours_size = end - start
        anchors = collect_anchors(ours_blob, name, start, end, ours_strings)
        if not anchors:
            print(f"{name:<28} {ours_size:>6} {'?':>6} {'':>7} no-anchor")
            continue

        refs = locate_in_orig(orig_blob, orig_strings, anchors)
        if not refs:
            print(f"{name:<28} {ours_size:>6} {'?':>6} {'':>7} string-not-in-orig")
            continue
        if len(refs) > 1:
            # Ambiguous — multiple sites reference the same string
            print(f"{name:<28} {ours_size:>6} {'?':>6} {'':>7} {len(refs)}-refs-ambig")
            continue

        ref = refs[0]
        orig_start, orig_end = function_extent_from_ref(orig_blob, ref, orig_cret)
        orig_size = orig_end - orig_start
        # If the walker disagrees with ours_size by more than 2x in
        # either direction it's almost certainly stopped at an early
        # RET inside our function (HI-TECH compiles some control
        # flows that way). Don't pretend to know the real orig size.
        if orig_size and (orig_size > 2 * ours_size or
                          ours_size > 2 * orig_size):
            print(f"{name:<28} {ours_size:>6} {'?':>6} {'':>7} "
                  f"walker-unsure orig~=0x{orig_start:04x}")
            continue
        delta = ours_size - orig_size
        pct = f"{100*delta/orig_size:+.1f}%" if orig_size else "?"
        print(f"{name:<28} {ours_size:>6} {orig_size:>6} {pct:>7} "
              f"orig=0x{orig_start:04x}")


if __name__ == "__main__":
    main()
