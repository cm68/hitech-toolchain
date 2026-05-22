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
