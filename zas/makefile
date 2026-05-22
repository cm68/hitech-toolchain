#
# native build makefile for zas
#
# micronix/hitech/zas/makefile
#
# Changed: <2023-06-25 15:08:30 curt>

TARGETS = zas

CSRCS = code.c cclass.c expr.c lex.c macro.c main.c kwd.c parse.c sym.c tlab.c emulate.c
HDRS  = cclass.h kwd.h zas.h
OFILES = code.o cclass.o expr.o lex.o macro.o main.o kwd.o parse.o sym.o tlab.o emulate.o

%.o: %.c
	cc -c -O $<

$(OFILES): $(HDRS)

zas:	$(OFILES)
	cc -o zas $(OFILES)
 
clean:
	rm -f $(OFILES)

clobber: clean
	rm -f $(TARGETS)

# vim: tabstop=4 shiftwidth=4 noexpandtab:

