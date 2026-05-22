# HI-TECH C v3.09 cross-toolchain

A buildable, runnable HI-TECH C v3.09 Z80 cross-compiler toolchain
assembled from the C-reconstructed sources of each compiler pass. The
goal is one source tree that produces working binaries for three target
environments:

- **Linux native** — pass binaries (`zc3`, `cpp_new3`, `p1x3`, `cgen3`,
  `optim3`, `zasx3`, `linq3`, `libr3`, `dump3`, `cref3`) run on the
  host and emit Z80 object code.
- **CP/M** — the same compiler passes built as Z80 `.com` files using
  the HI-TECH compiler itself (via `zxcc`), so the toolchain is
  self-hosting on a real or emulated CP/M system.
- **Micronix** — Z80 a.out-format binaries for Curt Mayer's Micronix
  Unix port (via the legacy `x.cc` driver).

All three flavors share the same source tree. Interoperability of the
toolchain components is a hard requirement: a `.obj` produced by any
form of `zasx3`/`zas.com`/`zas` must link with any form of `linq3`/
`link.com`/`link`, the libraries must be consumable from any pass, and
`zc3` (Linux) must produce a `.com` that runs unchanged under `zxcc`.

## Provenance

The C sources of each pass were reconstructed from the original
HI-TECH CP/M `.com` binaries by **Andrey Nikitin** and **Mark Ogden**,
with bug fixes and platform ports by others. This umbrella tree
gathers their per-pass repositories under one buildable root.

| dir       | pass                  | upstream                                                                    |
|-----------|-----------------------|-----------------------------------------------------------------------------|
| `cc/`     | driver (`zc3`)        | <https://github.com/nikitinprior/Control-program-Cross-compiler-z80>        |
| `cpp/`    | preprocessor          | <https://github.com/nikitinprior/Preprocessor-source-code>                  |
| `p1/`     | C parser (pass 1)     | <https://github.com/nikitinprior/dp1>                                       |
| `cgen/`   | code generator        | <https://github.com/nikitinprior/dcgenv2>                                   |
| `optim/`  | peephole optimizer    | <https://github.com/nikitinprior/doptim>                                    |
| `zas/`    | Z80 assembler         | <https://github.com/nikitinprior/dzas>                                      |
| `link/`   | linker                | <https://github.com/nikitinprior/dlink>                                     |
| `libr/`   | librarian             | <https://github.com/nikitinprior/dlibr>                                     |
| `objdump/`| object inspector      | <https://github.com/nikitinprior/ddump>                                     |
| `cref/`   | cross-reference       | <https://github.com/nikitinprior/dcref>                                     |
| `make/`   | make for UZI-180      | <https://github.com/nikitinprior/Make-for-UZI-180>                          |

Related upstreams referenced by individual passes:

- **HI-TECH-Z80-C** archive (Tony Nicholson) —
  <https://github.com/agn453/HI-TECH-Z80-C> — the original CP/M
  compiler binaries, libraries, headers, and the `huff`/`dehuff`
  source-distribution tools.
- **ZXCC** (John Elliott, patched by Tony Nicholson) —
  <https://github.com/agn453/ZXCC> — the Z80 CP/M emulator used to
  run the original HI-TECH `.com` binaries from a host shell.
- **UZI-180** (Hector Peraza) — <https://github.com/hperaza/UZI180> —
  the Unix-like OS that motivated Andrey Nikitin's reconstruction work
  and that the `zc3` driver targets by default.

The original HI-TECH C v3.09 compiler is © HI-TECH Software, released
free for any use, private or commercial, strictly as-is. See each
pass's `LICENSE` for the upstream notice; the reconstruction work
inherits the same terms.

## Preserved upstream history (`.git.upstream/`)

Each pass directory keeps a renamed `.git.upstream/` folder that holds
the original per-pass repo's commits and `origin` remote. The umbrella
git tree does not see these (the name avoids git's nested-repo
detection), but they remain functional repositories: cd into a pass
dir and run

    mv .git.upstream .git
    git fetch origin
    git log --oneline

…to re-engage with the upstream and contribute fixes back. Fixes made
in this tree that belong upstream (for example the
`getCh()` CRLF handling fix in `p1/lex.c`) should be cherry-picked
into the corresponding `.git.upstream` repo and pushed there.

This is a deliberate, reversible choice — not git submodules. We want
one repository that holds the whole working toolchain, while keeping
the door open to send fixes upstream.

## Building

Requires `gcc` and GNU make. From the top of this tree:

    make            # build all 10 Linux-native passes
    sudo make install   # install to /usr/local/bin

`make install` writes the `*3` binaries (the names the `zc3` driver
invokes) to `$(PREFIX)/bin` where `PREFIX ?= /usr/local`. Override
with e.g. `make install PREFIX=$HOME/.local`.

K&R-era source needs a few relaxations under modern gcc (14+); each
pass's makefile applies them via a local `LEGACY` flag block
(`-fcommon -Wno-error=implicit-function-declaration` and friends).

### Library and include path

The compiler driver looks up CP/M startup files (`crtcpm.obj`) and
libraries (`libc.lib`, `libf.lib`) under `$LIBDIR80`, and headers under
`$INCDIR80`. For this tree:

    export LIBDIR80=/path/to/hitech/lib
    export INCDIR80=/path/to/hitech/lib

The library files ship in upper-case (`LIBC.LIB`, `CRTCPM.OBJ`,
`LIBF.LIB`) — the linker looks for lower-case names, so the `lib/`
directory carries lower-case symlinks alongside the upper-case files.

### Compile a hello-world for CP/M

    cat > hello.c <<'EOF'
    #include <stdio.h>
    int main(void) { printf("hello world\n"); return 0; }
    EOF
    zc3 -CPM -Ehello.com hello.c

Run the result under `zxcc`:

    zxcc hello.com

## Platforms

| target  | driver         | startup        | output       | host requirement                |
|---------|----------------|----------------|--------------|---------------------------------|
| Linux   | `zc3`          | `crtcpm.obj` / `crtuzi.obj` | `.com` / a.out | gcc                              |
| CP/M    | `zc3.com`      | `crtcpm.obj`   | `.com`       | `zxcc` (host) or real CP/M       |
| Micronix| `x.cc` (legacy)| `crtmicro.obj` | a.out (Z80)  | x.cc built (currently fails on modern gcc — see status) |

Same source for each pass produces all three flavors; the makefiles
select the build by target name. The default target builds only the
Linux natives because they're the only ones that build out of the box
without `zxcc` or a working `x.cc` driver.

## Status

- ✅ **Linux native** — all 10 passes build and install cleanly. End-to-end
  pipeline (`cpp_new3` → `p1x3` → `cgen3` → `optim3` → `zasx3` →
  `linq3`) produces a valid CP/M `.com` from C source.
- ⚙️ **CP/M self-hosting** — builds via `zxcc`/`zxc` (requires the
  patched ZXCC and the original HI-TECH `.com` binaries to bootstrap).
  Untested in this tree at the moment.
- ⚙️ **Micronix** — the `x.cc` driver does not build under modern gcc
  due to a missing `<sys/wait.h>` include in legacy code; needs a
  small patch (or build with an older toolchain).

## Acknowledgements

- **HI-TECH Software** — for releasing the v3.09 compiler free of
  charge and as-is.
- **Andrey Nikitin** — reconstructing the C source of every pass from
  disassembled `.com` binaries.
- **Mark Ogden** — bug fixes, comments, structural cleanup, and the
  conditional-compilation work that lets the same source run on
  modern 64-bit hosts.
- **Tony Nicholson** (`agn453`) — preserving and republishing the
  HI-TECH-Z80-C material; patches to ZXCC.
- **John Elliott** — the ZXCC emulator.
- **Hector Peraza** — UZI-180.
- **Michal Tomek, Fred Weigel, Ladislau Szilagyi** — bug reports and
  improvements during reconstruction.

Each pass's own `README.md` carries the more detailed per-pass
acknowledgements.
