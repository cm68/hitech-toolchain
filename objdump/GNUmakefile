#
# cross build makefile for objdump (HI-TECH .obj inspector)
#
# micronix/hitech/objdump/GNUmakefile
#

TARGETS = x.dump dump3

LEGACY = -fcommon -Wno-error=implicit-function-declaration \
         -Wno-error=implicit-int -Wno-error=int-conversion \
         -Wno-error=incompatible-pointer-types

all:	$(TARGETS)

x.dump:	dump3.c
	gcc -O2 $(LEGACY) -ox.dump dump3.c

dump3:	dump3.c
	gcc -O2 $(LEGACY) -odump3 dump3.c

PREFIX ?= /usr/local
BINDIR  = $(PREFIX)/bin

HITECH_LIB ?= /vault/src/hitech/lib
stage1: dump.com
dump.com: dump3.c
	LIBDIR80=$(HITECH_LIB) INCDIR80=$(HITECH_LIB) zc3 -O -CPM -E$@ dump3.c

install: dump3
	install -d $(DESTDIR)$(BINDIR)
	install -m 755 dump3 $(DESTDIR)$(BINDIR)/dump3

clean:
	rm -f *.o *.obj

clobber: clean
	rm -f $(TARGETS)

# vim: tabstop=4 shiftwidth=4 noexpandtab:
