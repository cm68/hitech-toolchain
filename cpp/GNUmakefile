#
# cross build makefile for cpp
#
# micronix/hitech/cpp/GNUmakefile
#
# Changed: <2023-06-16 00:42:02 curt>

TARGETS = x.cpp cpp_new3 # cpp.com cpp

CSRCS_CPM =	cpp.c cpy.c
CSRCS =	cpp.c cpy.c fname.c getargs.c

OBJS = $(CSRCS_CPM:.c=.obj)
OFILES = $(CSRCS:.c=.o)

all:	$(TARGETS)

.SUFFIXES:		# delete the default suffixes
.SUFFIXES: .c .obj

%.o: %.c
	zxc -Dmicronix -c $<

%.obj: %.c
	zxc -c -o  $<

LEGACY = -fcommon -Wno-error=implicit-function-declaration \
         -Wno-error=implicit-int -Wno-error=int-conversion \
         -Wno-error=incompatible-pointer-types

x.cpp:	$(CSRCS)
	gcc -O3 $(LEGACY) -o x.cpp $(CSRCS)

cpp_new3:	$(CSRCS)
	gcc -O3 $(LEGACY) -o cpp_new3 $(CSRCS)

cpp:	$(OFILES)
	#zxc -Dmicronix -ocpp cpp.c cpy.c

PREFIX ?= /usr/local
BINDIR  = $(PREFIX)/bin

# stage 1: build CP/M cpp.com. getargs.c is the Linux-host wildcard
# expander; the CP/M build gets _getargs from libc.lib instead.
HITECH_LIB ?= /vault/src/hitech/lib
stage1: cpp.com
cpp.com: cpp.c cpy.c fname.c
	LIBDIR80=$(HITECH_LIB) INCDIR80=$(HITECH_LIB) zc3 -O -CPM -E$@ cpp.c cpy.c fname.c

install: cpp_new3
	install -d $(DESTDIR)$(BINDIR)
	install -m 755 cpp_new3 $(DESTDIR)$(BINDIR)/cpp_new3

clean:
	rm -f $(OBJS) $(OFILES)

clobber: clean
	rm -f $(TARGETS)

# vim: tabstop=4 shiftwidth=4 noexpandtab:

