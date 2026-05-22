#
# native build makefile for cpp
#
# micronix/hitech/cpp/makefile
#
# Changed: <2023-06-25 15:08:30 curt>

TARGETS = cpp

CSRCS = cpp.c cpy.c fname.c getargs.c
HDRS = cpp.h version.h

%.o: %.c
	cc -c -O $<

$(OFILES): $(HDRS)

cpp:	$(OFILES)
	cc -o cpp $(OFILES)
 
clean:
	rm -f $(OFILES)

clobber: clean
	rm -f $(TARGETS)

# vim: tabstop=4 shiftwidth=4 noexpandtab:

