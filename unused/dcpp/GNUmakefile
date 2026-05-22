#
# broken
# cross build makefile for cpp
#
# micronix/hitech/dzas/GNUmakefile
#
# Changed: <2023-06-16 00:42:02 curt>

TARGETS = cpp.com x.cpp cpp

CSRCS =	cpp_new.c cpy.c vprintf.c

OBJS = $(CSRCS:.c=.obj)
OFILES = $(CSRCS:.c=.o)

all:	$(TARGETS)

.SUFFIXES:		# delete the default suffixes
.SUFFIXES: .c .obj .asm

$(OBJS): %.obj: %.c
	zxc -c -o  $<

cpp.com: $(OBJS) lkcpp
	zxcc link -"<" +lkcpp
	sort cpp_new.sym | uniq > cpp_new.sym.sorted

x.cpp:	$(CSRCS)
	gcc -O3 -ox.cpp $(CSRCS)

clean:
	rm -f $(OBJS) $(OFILES)

clobber: clean
	rm -f $(TARGETS)

# vim: tabstop=4 shiftwidth=4 noexpandtab:

