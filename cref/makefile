#
# native build makefile for cref
#
# micronix/hitech/cref/makefile
#
# Changed: <2023-06-25 15:08:30 curt>

TARGETS = cref

CSRCS = cref.c

$(OFILES): $(HDRS)

cref: $(CSRCS)
	cc -o cref $(CSRCS)
 
clean:

clobber: clean
	rm -f $(TARGETS)

# vim: tabstop=4 shiftwidth=4 noexpandtab:

