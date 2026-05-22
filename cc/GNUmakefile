#
# cross build makefile for cc
#
# micronix/hitech/cc/GNUmakefile
#
# Changed: <2023-06-16 00:42:02 curt>

TARGETS = zc3 # x.cc cc cc.com
CSRCS = cc.c
HDRS  = exec.h paths.h

# Flags to compile pre-C99 / K&R-era HI-TECH source with modern gcc (14+).
LEGACY = -fcommon \
         -Wno-error=implicit-function-declaration \
         -Wno-error=implicit-int \
         -Wno-error=int-conversion \
         -Wno-error=incompatible-pointer-types

OBJS = $(CSRCS:.c=.obj) 
OFILES = $(CSRCS:.c=.o)

CFLAGS=-O -dOLDLIB
LIBS=LIBCORIG.LIB
CRT=CRTORIG.OBJ 
#CFLAGS=-O
#LIBS=LIBC.LIB
#CRT=CRTCPM.OBJ 

all:	$(TARGETS)

.SUFFIXES:
.SUFFIXES: .c .obj

%.obj: %.c
	zxc -c -O $(CFLAGS) $<

x.cc:	$(CSRCS)
	gcc -O2 -ox.cc $(CSRCS)

zc3:	zc3.c
	gcc -O2 $(LEGACY) -o zc3 zc3.c

cc:	$(CSRCS)
	x.cc -o p1 $(CSRCS)

cc.com: $(OBJS) 
	zxc -occ.com $(CSRCS)

$(OBJS) : $(HDRS)

PREFIX ?= /usr/local
BINDIR  = $(PREFIX)/bin

install: zc3
	install -d $(DESTDIR)$(BINDIR)
	install -m 755 zc3 $(DESTDIR)$(BINDIR)/zc3

clean:
	rm -f $(OBJS) *.map *.sym *.sym.sorted

clobber: clean
	rm -f $(TARGETS)

# vim: tabstop=4 shiftwidth=4 noexpandtab:

