#
# End-to-end tests for the cross-toolchain.
#
# `make test` builds and runs each test .com under a CP/M emulator and
# checks stdout matches the expected output. Set CPM_EMU to point at
# the emulator binary; defaults to `cpm` on PATH (matching the binary
# from https://github.com/jhallen/cpm).
#

CPM_EMU ?= cpm

# Tools must be on PATH (install with `sudo make install` at top level).
ZAS  = zasx3
LINK = linq3
ZC   = zc3

LFLAGS = -Z -Ptext=0,data,bss -C100H

TESTS = ahello

all:	$(addsuffix .com,$(TESTS))

ahello.com: ahello.as
	$(ZAS) -n -o$(@:.com=.obj) $<
	$(LINK) $(LFLAGS) -O$@ $(@:.com=.obj)

# `make test` builds each test, runs it under the emulator, and greps
# the captured output for the expected substring. Each test_NAME rule
# corresponds to a TESTS entry.
test: test_ahello

test_ahello: ahello.com
	@out=$$( $(CPM_EMU) --exec ahello < /dev/null 2>&1 ); \
	if echo "$$out" | grep -q 'hello, world'; then \
		echo "PASS  test_ahello"; \
	else \
		echo "FAIL  test_ahello"; \
		echo "------ captured ------"; \
		echo "$$out"; \
		echo "----------------------"; \
		exit 1; \
	fi

clean:
	rm -f *.obj *.com *.sym *.map

clobber: clean
	rm -f xx

# vim: tabstop=4 shiftwidth=4 noexpandtab:
