#
# cross build makefile for cgen
#
# micronix/hitech/cgen/GNUmakefile
#

TARGETS = x.cgen cgen3

LEGACY = -fcommon -Wno-error=implicit-function-declaration \
         -Wno-error=implicit-int -Wno-error=int-conversion \
         -Wno-error=incompatible-pointer-types

all:	$(TARGETS)

x.cgen: cgen.c cgen.h
	gcc -O3 $(LEGACY) -ox.cgen cgen.c

cgen3:	cgen.c cgen.h
	gcc -O3 $(LEGACY) -ocgen3 cgen.c

PREFIX ?= /usr/local
BINDIR  = $(PREFIX)/bin

install: cgen3
	install -d $(DESTDIR)$(BINDIR)
	install -m 755 cgen3 $(DESTDIR)$(BINDIR)/cgen3

clean:
	rm -f *.o *.obj

clobber: clean
	rm -f $(TARGETS)

# vim: tabstop=4 shiftwidth=4 noexpandtab:
