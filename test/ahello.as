; Minimal CP/M hello, no HI-TECH C runtime.
;
; Exercises zasx3 (assembler) and linq3 (linker) and verifies the
; resulting .com runs correctly under a CP/M emulator. Bypasses libc
; entirely by calling BDOS 9 (print $-terminated string) directly.

	psect	text

	global	start

	defs	100h		; CP/M TPA: code lives at 0100h

start:
	ld	c,9		; BDOS 9 = print $-terminated string
	ld	de,msg
	call	5
	ret			; return to CCP

msg:
	defm	'hello, world'
	defb	13,10,'$'

	psect	bss
	psect	data

	end	start
