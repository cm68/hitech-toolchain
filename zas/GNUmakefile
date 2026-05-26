#
# cross build makefile for zas
#
# micronix/hitech/zas/GNUmakefile
#
# Changed: <2023-06-16 00:42:02 curt>

TARGETS = x.zas zasx3 # zas.com zas

CSRCS = code.c cclass.c expr.c lex.c macro.c main.c kwd.c parse.c sym.c tlab.c emulate.c
HDRS  = cclass.h kwd.h zas.h

OBJS = $(CSRCS:.c=.obj)
OFILES = $(CSRCS:.c=.o)

CFLAGS = -g
LEGACY = -fcommon -Wno-error=implicit-function-declaration \
         -Wno-error=implicit-int -Wno-error=int-conversion \
         -Wno-error=incompatible-pointer-types

all:	$(TARGETS)

.SUFFIXES:
.SUFFIXES: .c .obj .o

%.obj: %.c
	zxc -c -O  $<

%.o: %.c
	x.cc -c -O $<

zas:	$(OFILES)
	x.cc -o zas $(OFILES)
 
x.zas:	$(CSRCS) $(HDRS)
	cc $(CFLAGS) $(LEGACY) -O -o x.zas $(CSRCS)

zasx3:	$(CSRCS) $(HDRS)
	cc $(CFLAGS) $(LEGACY) -O -o zasx3 $(CSRCS)

$(OBJS) : $(HDRS)
$(OFILES) : $(HDRS)

PREFIX ?= /usr/local
BINDIR  = $(PREFIX)/bin

# stage 1: build CP/M zas.com. -LF pulls in libf.lib for atof().
HITECH_LIB ?= /vault/src/hitech/lib
stage1: zas.com
zas.com: $(CSRCS) $(HDRS)
	LIBDIR80=$(HITECH_LIB) INCDIR80=$(HITECH_LIB) zc3 -O -CPM -LF -E$@ $(CSRCS)

install: zasx3
	install -d $(DESTDIR)$(BINDIR)
	install -m 755 zasx3 $(DESTDIR)$(BINDIR)/zasx3

clean:
	$(RM) $(OBJS) *.map *.sym *.sym.sorted

clobber: clean
	rm -f $(TARGETS)

# vim: tabstop=4 shiftwidth=4 noexpandtab:

