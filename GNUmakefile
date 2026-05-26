#
# cross build makefile for hitech toolchain
#
# micronix/hitech/GNUmakefile
#
# Changed: <2023-06-16 00:42:02 curt>
#
# vim: tabstop=4 shiftwidth=4 noexpandtab:

# Linux-native cross-compiler build.
# Each subdir's GNUmakefile/Makefile builds a *3 binary that zc3 (the driver
# in cc/) invokes by name from $PATH: cpp_new3, p1x3, cgen3, optim3, zasx3,
# linq3, libr3, dump3, cref3.
DIRS = cc cpp cref zas p1 cgen optim link libr objdump

PREFIX ?= /usr/local
BINDIR  = $(PREFIX)/bin
export PREFIX BINDIR

all:
	@for i in $(DIRS); do \
		echo "==> $$i"; \
		( cd $$i && $(MAKE) $(MFLAGS) ) || exit $$?; \
	done

clean:
	@for i in $(DIRS); do \
		( cd $$i && $(MAKE) clean ) || exit $$?; \
	done

clobber:
	@for i in $(DIRS); do \
		( cd $$i && $(MAKE) clobber ) || exit $$?; \
	done

install: all
	install -d $(DESTDIR)$(BINDIR)
	@for i in $(DIRS); do \
		echo "==> install $$i"; \
		( cd $$i && $(MAKE) install ) || exit $$?; \
	done

# End-to-end test: assemble a hello.com via zasx3+linq3, run it under
# a CP/M emulator (CPM_EMU env, defaults to `cpm`), check output.
# Requires the toolchain to be installed (so zasx3/linq3 are on PATH).
.PHONY: all clean clobber install test stage1
test:
	@cd test && $(MAKE) test CPM_EMU="$(CPM_EMU)"

# stage 1: use the installed Linux-native toolchain (PREFIX/bin) to
# cross-compile each pass's source to a CP/M .com. cgen uses a
# split-source build (see cgen/native/) because the merged cgen.c
# overflows 16-bit jump displacements. Each pass dir's GNUmakefile
# owns the per-pass source list and any pass-specific flags.
STAGE1_DIRS = cref libr objdump optim cpp p1 zas link cgen
stage1:
	@for i in $(STAGE1_DIRS); do \
		echo "==> stage1 $$i"; \
		( cd $$i && $(MAKE) stage1 ) || exit $$?; \
	done
	@echo "stage1 binaries:"; \
	for i in $(STAGE1_DIRS); do \
		f=$$(ls $$i/*.com 2>/dev/null | head -1); \
		[ -n "$$f" ] && printf "  %-24s %6d bytes\n" "$$f" "$$(stat -c%s $$f)"; \
	done
