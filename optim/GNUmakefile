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

optim.com: $(OBJS)
	$(file >$@.in,-Z -Doptim.sym -N -C -Moptim.map -Ptext=0,data,bss -C100H -OP:$@ crtcpm.obj \)
	$(foreach O,$(OBJS),$(file >>$@.in,P:$O \))
	$(file >>$@.in,LIBC.LIB LIBF.LIB)
	zxcc linq <$@.in
	$(RM) $@.in

PREFIX ?= /usr/local
BINDIR  = $(PREFIX)/bin

install: optim3
	install -d $(DESTDIR)$(BINDIR)
	install -m 755 optim3 $(DESTDIR)$(BINDIR)/optim3

clean:
	rm -f $(OBJECTS) $(OFILES) optim.map optim.sym

clobber:
	rm -f $(TARGETS)

# vim: tabstop=4 shiftwidth=4 noexpandtab:

