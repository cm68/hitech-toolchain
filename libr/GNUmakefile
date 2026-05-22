#
# cross build makefile for libr (librarian)
#
# micronix/hitech/libr/GNUmakefile
#

TARGETS = x.libr libr3

LEGACY = -fcommon -Wno-error=implicit-function-declaration \
         -Wno-error=implicit-int -Wno-error=int-conversion \
         -Wno-error=incompatible-pointer-types

all:	$(TARGETS)

x.libr:	libr3.c
	gcc -O2 $(LEGACY) -ox.libr libr3.c

libr3:	libr3.c
	gcc -O2 $(LEGACY) -olibr3 libr3.c

PREFIX ?= /usr/local
BINDIR  = $(PREFIX)/bin

install: libr3
	install -d $(DESTDIR)$(BINDIR)
	install -m 755 libr3 $(DESTDIR)$(BINDIR)/libr3

clean:
	rm -f *.o *.obj

clobber: clean
	rm -f $(TARGETS)

# vim: tabstop=4 shiftwidth=4 noexpandtab:
