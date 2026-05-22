#
# cross build makefile for cref
#
# micronix/hitech/cref/GNUmakefile
# 
# Changed: <2023-06-16 00:42:02 curt>

LEGACY = -fcommon -Wno-error=implicit-function-declaration \
         -Wno-error=implicit-int -Wno-error=int-conversion \
         -Wno-error=incompatible-pointer-types

all:	x.cref cref3 # cref.com cref

x.cref:	cref.c
	gcc -O3 $(LEGACY) -ox.cref cref.c

cref3:	cref.c
	gcc -O3 $(LEGACY) -ocref3 cref.c

cref.com:	cref.c
	zxc cref.c

cref: cref.c
	x.cc -o cref cref.c

PREFIX ?= /usr/local
BINDIR  = $(PREFIX)/bin

install: cref3
	install -d $(DESTDIR)$(BINDIR)
	install -m 755 cref3 $(DESTDIR)$(BINDIR)/cref3

clean:
	rm -f *.obj

clobber: clean
	rm -f cref cref.com x.cref cref3

# vim: tabstop=4 shiftwidth=4 noexpandtab:

