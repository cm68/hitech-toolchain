#
# cross build makefile for optim
#
# micronix/hitech/optim/GNUmakefile
#
# Changed: <2023-06-16 00:42:02 curt>

TARGETS = x.optim optim3 # optim.com optim

CSRCS =	optim1.c part21.c part31.c ctype1.c initvar1.c
NATSRC = optim.c

OBJS = $(CSRCS:.c=.obj)
OFILES = $(CSRCS:.c=.o)

all:	$(TARGETS)

.SUFFIXES:
.SUFFIXES: .c .obj

%.obj: %.c
	zxc -c $<

LEGACY = -fcommon -Wno-error=implicit-function-declaration \
         -Wno-error=implicit-int -Wno-error=int-conversion \
         -Wno-error=incompatible-pointer-types

x.optim: $(NATSRC)
	gcc -O2 $(LEGACY) -ox.optim $(NATSRC)

optim3:	$(NATSRC)
	gcc -O2 $(LEGACY) -ooptim3 $(NATSRC)

PREFIX ?= /usr/local
BINDIR  = $(PREFIX)/bin

HITECH_LIB ?= /vault/src/hitech/lib
stage1: optim.com
optim.com: optim.c
	LIBDIR80=$(HITECH_LIB) INCDIR80=$(HITECH_LIB) zc3 -O -CPM -E$@ optim.c

install: optim3
	install -d $(DESTDIR)$(BINDIR)
	install -m 755 optim3 $(DESTDIR)$(BINDIR)/optim3

clean:
	rm -f $(OBJECTS) $(OFILES) optim.map optim.sym

clobber:
	rm -f $(TARGETS)

# vim: tabstop=4 shiftwidth=4 noexpandtab:

