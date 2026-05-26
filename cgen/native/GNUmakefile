#
# Stage-1 split build for cgen.com.
#
# cgen.c is too large to self-compile in one translation unit (~50KB
# of code+data overflows Z80 16-bit jump displacements when linked).
# The original HI-TECH workflow split cgen across many .c files,
# compiled each with the appropriate optim treatment, and linked
# them together. unpack.pl reproduces that split from the merged
# cgen.c kept one level up.
#
# Per-file optim is selected by the trailing letter of the basename
# before .c:
#   *u.c  : compile only (-O peephole misbehaves on these)
#   *s.c  : compile, then pipe .as through optim3
#   *.c   : compile with -O (inline peephole)
#

OBJ =	data.obj lex1u.obj lex2.obj code.obj \
	sym1.obj sym2s.obj sym3.obj \
	cgen1.obj cgen2s.obj cgen3.obj \
	tree1.obj tree2.obj tree3.obj \
	local1s.obj local2.obj main.obj \
	malloc.obj getchar.obj

AS = $(OBJ:.obj=.as)
TARGET = cgen.com

HITECH_LIB ?= /vault/src/hitech/lib
LIBC = $(HITECH_LIB)/libc.lib
CRT  = $(HITECH_LIB)/crtcpm.obj

LFLAGS = -Z -Ptext=0,data,bss -C100H

stage1: $(TARGET)

# Split cgen.c into the per-function .c files this build expects.
unpack: ../cgen.c ../cgen.h unpack.pl
	./unpack.pl

# Build rules — last letter of name before .c selects optim treatment.
%s.as: %s.c cgen.h
	LIBDIR80=$(HITECH_LIB) INCDIR80=$(HITECH_LIB) zc3 -S -CPM $<
	optim3 < $*s.as > tmp.as
	mv tmp.as $*s.as

%u.as: %u.c cgen.h
	LIBDIR80=$(HITECH_LIB) INCDIR80=$(HITECH_LIB) zc3 -S -CPM $<

%.as: %.c cgen.h
	LIBDIR80=$(HITECH_LIB) INCDIR80=$(HITECH_LIB) zc3 -O -S -CPM $<

%.obj: %.as
	zasx3 -j -n -o$@ $<

$(TARGET): $(OBJ)
	linq3 $(LFLAGS) -O$@ $(CRT) $(OBJ) $(LIBC)

$(AS): cgen.h

clean:
	rm -f $(OBJ) $(AS) tmp.as

clobber: clean
	rm -f $(TARGET) $(OBJ:.obj=.c) cgen.h

# vim: tabstop=4 shiftwidth=4 noexpandtab:
