#
# cross build makefile for p1
#
# micronix/hitech/p1/GNUmakefile
#
# Changed: <2023-06-16 00:42:02 curt>

TARGETS = x.p1 p1x3 # p1.cpm p1
NATSRCS = cclass.c emit.c expr.c lex.c main.c op.c program.c stmt.c sym.c type.c memchk.c
CSRCS = cclass.c emit.c expr.c lex.c main.c op.c program.c stmt.c sym.c type.c

HDRS  = cclass.h p1.h

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

LEGACY = -fcommon -Wno-error=implicit-function-declaration \
         -Wno-error=implicit-int -Wno-error=int-conversion \
         -Wno-error=incompatible-pointer-types

x.p1:	$(NATSRCS) $(HDRS)
	gcc -O2 $(LEGACY) -ox.p1 $(NATSRCS)

p1x3:	$(NATSRCS) $(HDRS)
	gcc -O2 $(LEGACY) -op1x3 $(NATSRCS)

p1:	$(CSRCS)
	x.cc -o p1 $(CSRCS)

$(OBJS) : $(HDRS)

PREFIX ?= /usr/local
BINDIR  = $(PREFIX)/bin

# stage 1: build CP/M p1.com. memchk.c is Linux/Windows-host only
# (uses gcc's etext/end), so the stage-1 build omits it.
HITECH_LIB ?= /vault/src/hitech/lib
stage1: p1.com
p1.com: $(CSRCS) $(HDRS)
	LIBDIR80=$(HITECH_LIB) INCDIR80=$(HITECH_LIB) zc3 -O -CPM -E$@ $(CSRCS)

install: p1x3
	install -d $(DESTDIR)$(BINDIR)
	install -m 755 p1x3 $(DESTDIR)$(BINDIR)/p1x3

clean:
	rm -f $(OBJS) *.map *.sym *.sym.sorted

clobber: clean
	rm -f $(TARGETS)

# vim: tabstop=4 shiftwidth=4 noexpandtab:

