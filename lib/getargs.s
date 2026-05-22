; Generated from /home/curt/src/hitech/lib/getargs.obj by wsnm -g
	.extern __argc_
	.extern __ctype_
	.extern __iob
	.extern _bdos
	.extern _bmove
	.extern _exit
	.extern _fprintf
	.extern _freopen
	.extern _gets
	.extern _getuid
	.extern _isatty
	.extern _sbrk
	.extern _setfcb
	.extern _setuid
	.extern _sprintf
	.extern _strchr
	.extern _strcpy
	.extern _strlen
	.extern adiv
	.extern cret
	.extern csv
	.extern indir
	.extern ncsv
	.extern shal
	.extern wrelop
	.global __getargs

	.text
__getargs:
	call ncsv
	ld d,h
	ld iy,0000h
	ld (B0),hl
	ld a,l
	ld hl,B1
	ld (hl),a
	ld hl,B2
	ld (hl),a
	ld (B3),a
	ld (ix-52),a
	ld l,(ix+8)
	ld h,(ix+9)
	ld (B4),hl
	ld l,(ix+6)
	ld h,(ix+7)
	ld (B5),hl
	ld a,l
	or h
	ld hl,0001h
	jr z,R0
	dec hl
R0:
	ld a,l
	ld (B6),a
	or a
	jr z,R1
	ld hl,D0
	ld (B5),hl
R1:
	push ix
	pop de
	ld hl,0fe38h
	add hl,de
	ld de,(B4)
	ld (hl),e
	inc hl
	ld (hl),d
	ld (ix-50),001h
	ld (ix-49),000h
	jp T0
T14:
	ld de,00c8h
	ld l,(ix-50)
	ld h,(ix-49)
	or a
	sbc hl,de
	jr nz,R2
	ld hl,0000h
	push hl
	ld hl,D1
	push hl
	call T1
	pop bc
	pop bc
R2:
	call T2
	ld a,l
	ld (ix-51),a
	ld l,a
	rla
	sbc a,a
	ld h,a
	push hl
	call T3
	pop bc
	ld a,l
	or a
	jr nz,R2
	ld a,(ix-51)
	or a
	jp z,T4
	push ix
	pop de
	ld hl,0fd54h
	add hl,de
	push hl
	pop iy
	ld l,a
	rla
	sbc a,a
	ld h,a
	push hl
	call T5
	pop bc
	ld a,l
	or a
	ld a,(ix-51)
	jp z,T6
	ld (iy+0),a
	inc iy
	cp 3eh
	jp nz,T7
	ld hl,(B5)
	ld a,(hl)
	cp 3eh
	jp nz,T7
	call T2
	ld e,l
	ld (iy+0),e
	inc iy
	jp T7
T8:
R11:
	push ix
	pop de
	ld hl,0fdb8h
	add hl,de
	push iy
	pop de
	or a
	sbc hl,de
	jr nz,R3
	ld hl,0000h
	push hl
	ld hl,D2
	push hl
	call T1
	pop bc
	pop bc
R3:
	ld a,(ix-51)
	cp (ix-52)
	jr nz,R4
	ld (ix-52),000h
	jr R5
R4:
	ld a,(ix-52)
	or a
	jr nz,R6
	ld a,(ix-51)
	cp 27h
	jr z,R7
	cp 22h
	jr nz,R6
R7:
	ld (ix-52),a
	jr R5
R6:
	ld a,(ix-52)
	or a
	ld a,(ix-51)
	jr z,R8
	or 80h
	ld (ix-51),a
R8:
	ld (iy+0),a
	inc iy
R5:
	ld a,(ix-52)
	or a
	jr nz,R9
	ld hl,(B5)
	ld a,(hl)
	ld l,a
	rla
	sbc a,a
	ld h,a
	push hl
	call T5
	pop bc
	ld a,l
	or a
	jr nz,R10
R9:
	call T2
	ld e,l
	ld (ix-51),e
	ld a,e
T6:
	or a
	jr z,R10
	ld a,(ix-52)
	or a
	jr nz,R11
	ld a,(ix-51)
	ld l,a
	rla
	sbc a,a
	ld h,a
	push hl
	call T5
	pop bc
	ld a,l
	or a
	jr nz,R10
	ld a,(ix-51)
	ld l,a
	rla
	sbc a,a
	ld h,a
	push hl
	call T3
	pop bc
	ld a,l
	or a
	jp z,T8
T7:
R10:
	ld (iy+0),000h
	push ix
	pop de
	ld hl,0fd54h
	add hl,de
	push hl
	call T9
	pop bc
	ld a,l
	or a
	push ix
	pop de
	ld hl,0fd54h
	jp z,T10
	add hl,de
	push hl
	pop iy
	jr R12
R13:
	inc iy
R12:
	ld a,(iy+0)
	ld e,a
	rla
	sbc a,a
	ld d,a
	ld hl,__ctype_+1
	add hl,de
	bit 2,(hl)
	jr nz,R13
	ld a,e
	cp 3ah
	jr nz,R14
	push ix
	pop de
	ld hl,0fd54h
	add hl,de
	push iy
	pop de
	or a
	sbc hl,de
	jr z,R14
	ld hl,0001h
	jr R15
R14:
	ld hl,0000h
R15:
	ld (ix-52),l
	push ix
	pop de
	ld hl,0fd54h
	add hl,de
	push hl
	push ix
	pop de
	ld hl,0ffd4h
	add hl,de
	push hl
	call _setfcb
	pop bc
	push ix
	pop de
	ld hl,0fdb8h
	add hl,de
	ex (sp),hl
	ld hl,001ah
	push hl
	call _bdos
	pop bc
	pop bc
	call _getuid
	ld (ix-51),l
	ld l,(ix-3)
	ld h,00h
	push hl
	call _setuid
	push ix
	pop de
	ld hl,0ffd4h
	add hl,de
	ex (sp),hl
	ld hl,0011h
	push hl
	call _bdos
	pop bc
	pop bc
	ld h,00h
	ld (ix-56),l
	ld (ix-55),h
	ld de,00ffh
	or a
	sbc hl,de
	jp z,T11
T13:
	push ix
	pop de
	ld hl,0fd54h
	add hl,de
	push hl
	pop iy
	ld a,(ix-52)
	or a
	jr z,R16
	ld l,(ix-3)
	ld h,00h
	push hl
	ld hl,D3
	push hl
	push iy
	call _sprintf
	pop bc
	pop bc
	pop bc
	push iy
	call _strlen
	pop bc
	ld e,l
	ld d,h
	db 0fdh,019h
R16:
	ld a,(ix-44)
	or a
	jr z,R17
	ld l,a
	ld h,00h
	add a,40h
	ld (iy+0),a
	inc iy
	ld (iy+0),03ah
	inc iy
R17:
	push ix
	pop de
	ld b,05h
	ld l,(ix-56)
	ld h,(ix-55)
	call shal
	add hl,de
	ld de,0fdb8h
	add hl,de
	ld (ix-46),l
	ld (ix-45),h
	inc hl
	ld (ix-48),l
	ld (ix-47),h
	jr R18
R20:
	ld l,(ix-48)
	ld h,(ix-47)
	ld a,(hl)
	inc hl
	ld (ix-48),l
	ld (ix-47),h
	and 7fh
	ld (iy+0),a
	inc iy
R18:
	ld l,(ix-48)
	ld h,(ix-47)
	ld a,(hl)
	cp 20h
	jr z,R19
	ld e,(ix-46)
	ld d,(ix-45)
	ld hl,0009h
	add hl,de
	ex de,hl
	ld l,(ix-48)
	ld h,(ix-47)
	call wrelop
	jr c,R20
R19:
	ld (iy+0),02eh
	inc iy
	ld e,(ix-46)
	ld d,(ix-45)
	ld hl,0009h
	add hl,de
	ld (ix-48),l
	ld (ix-47),h
	jr R21
R23:
	ld l,(ix-48)
	ld h,(ix-47)
	ld a,(hl)
	inc hl
	ld (ix-48),l
	ld (ix-47),h
	and 7fh
	ld (iy+0),a
	inc iy
R21:
	ld l,(ix-48)
	ld h,(ix-47)
	ld a,(hl)
	cp 20h
	jr z,R22
	ld e,(ix-46)
	ld d,(ix-45)
	ld hl,000ch
	add hl,de
	ex de,hl
	ld l,(ix-48)
	ld h,(ix-47)
	call wrelop
	jr c,R23
R22:
	ld (iy+0),000h
	inc iy
	push ix
	pop de
	ld hl,0fd54h
	add hl,de
	push hl
	push ix
	pop de
	ld hl,0fd54h
	add hl,de
	ex de,hl
	push iy
	pop hl
	or a
	sbc hl,de
	inc hl
	push hl
	call T12
	pop bc
	push hl
	push ix
	pop de
	ld l,(ix-50)
	ld h,(ix-49)
	inc hl
	ld (ix-50),l
	ld (ix-49),h
	dec hl
	add hl,hl
	add hl,de
	ld de,0fe38h
	add hl,de
	pop de
	ld (hl),e
	inc hl
	ld (hl),d
	push de
	call _strcpy
	pop bc
	ld hl,0012h
	ex (sp),hl
	call _bdos
	pop bc
	ld h,00h
	ld (ix-56),l
	ld (ix-55),h
	ld de,00ffh
	or a
	sbc hl,de
	jp nz,T13
	jr R24
T11:
	ld a,(ix-51)
	ld l,a
	rla
	sbc a,a
	ld h,a
	push hl
	call _setuid
	ld hl,0000h
	ex (sp),hl
	ld hl,D4
	push hl
	push ix
	pop de
	ld hl,0fd54h
	add hl,de
	push hl
	call T1
	pop bc
	pop bc
	pop bc
R24:
	ld a,(ix-51)
	ld l,a
	rla
	sbc a,a
	ld h,a
	push hl
	call _setuid
	pop bc
	jr R25
T10:
	add hl,de
	ex de,hl
	push iy
	pop hl
	or a
	sbc hl,de
	inc hl
	push hl
	call T12
	pop bc
	ex de,hl
	push de
	pop iy
	push de
	push ix
	pop de
	ld l,(ix-50)
	ld h,(ix-49)
	inc hl
	ld (ix-50),l
	ld (ix-49),h
	dec hl
	add hl,hl
	add hl,de
	ld de,0fe38h
	add hl,de
	pop de
	ld (hl),e
	inc hl
	ld (hl),d
	push ix
	pop de
	ld hl,0fd54h
	add hl,de
	ld (ix-48),l
	ld (ix-47),h
R26:
	ld l,(ix-48)
	ld h,(ix-47)
	ld a,(hl)
	and 7fh
	ld (iy+0),a
	inc iy
	ld a,(hl)
	inc hl
	ld (ix-48),l
	ld (ix-47),h
	or a
	jr nz,R26
T0:
R25:
	ld hl,(B5)
	ld a,(hl)
	or a
	jp nz,T14
T4:
	ld hl,0000h
	ld (ix-56),l
	ld (ix-55),h
	ld (ix-54),l
	ld (ix-53),h
	jp T15
T18:
	push ix
	pop de
	ld l,(ix-56)
	ld h,(ix-55)
	add hl,hl
	add hl,de
	ld de,0fe38h
	add hl,de
	ld a,(hl)
	inc hl
	ld h,(hl)
	ld l,a
	ld a,(hl)
	ld (ix-51),a
	ld l,a
	rla
	sbc a,a
	ld h,a
	push hl
	call T5
	pop bc
	ld a,l
	or a
	jp z,T16
	ld e,(ix-56)
	ld d,(ix-55)
	ld l,(ix-50)
	ld h,(ix-49)
	dec hl
	or a
	sbc hl,de
	jr nz,R27
	ld hl,0000h
	push hl
	push ix
	pop de
	ld l,(ix-56)
	ld h,(ix-55)
	add hl,hl
	add hl,de
	ld de,0fe38h
	add hl,de
	ld c,(hl)
	inc hl
	ld b,(hl)
	push bc
	ld hl,D5
	push hl
	call T1
	pop bc
	pop bc
	pop bc
R27:
	ld a,(ix-51)
	cp 3ch
	jr nz,R28
	ld hl,__iob
	push hl
	ld hl,D6
	push hl
	push ix
	pop de
	ld l,(ix-56)
	ld h,(ix-55)
	inc hl
	add hl,hl
	add hl,de
	ld de,0fe38h
	add hl,de
	ld c,(hl)
	inc hl
	ld b,(hl)
	push bc
	ld hl,D7
	push hl
	call T17
	pop bc
	pop bc
	pop bc
	pop bc
	jr R29
R28:
	push ix
	pop de
	ld l,(ix-56)
	ld h,(ix-55)
	add hl,hl
	add hl,de
	ld de,0fe38h
	add hl,de
	ld a,(hl)
	inc hl
	ld h,(hl)
	ld l,a
	inc hl
	ld a,(hl)
	cp 3eh
	jr z,R30
	ld hl,D8
	jr R31
R30:
	ld hl,D9
R31:
	push hl
	pop iy
	ld hl,__iob+8
	push hl
	push iy
	push ix
	pop de
	ld l,(ix-56)
	ld h,(ix-55)
	inc hl
	add hl,hl
	add hl,de
	ld de,0fe38h
	add hl,de
	ld c,(hl)
	inc hl
	ld b,(hl)
	push bc
	ld hl,D10
	push hl
	call T17
	pop bc
	pop bc
	pop bc
	pop bc
R29:
	ld l,(ix-56)
	ld h,(ix-55)
	inc hl
	ld (ix-56),l
	ld (ix-55),h
	jr R32
T16:
	push ix
	pop de
	ld l,(ix-56)
	ld h,(ix-55)
	add hl,hl
	add hl,de
	ld de,0fe38h
	add hl,de
	ld c,(hl)
	inc hl
	ld b,(hl)
	push ix
	pop de
	ld l,(ix-54)
	ld h,(ix-53)
	inc hl
	ld (ix-54),l
	ld (ix-53),h
	dec hl
	add hl,hl
	add hl,de
	ld de,0fe38h
	add hl,de
	ld (hl),c
	inc hl
	ld (hl),b
R32:
	ld l,(ix-56)
	ld h,(ix-55)
	inc hl
	ld (ix-56),l
	ld (ix-55),h
T15:
	ld e,(ix-50)
	ld d,(ix-49)
	ld l,(ix-56)
	ld h,(ix-55)
	call wrelop
	jp c,T18
	ld l,(ix-54)
	ld h,(ix-53)
	ld (__argc_),hl
	push ix
	pop de
	ld l,(ix-54)
	ld h,(ix-53)
	inc hl
	ld (ix-54),l
	ld (ix-53),h
	dec hl
	add hl,hl
	add hl,de
	ld de,0fe38h
	add hl,de
	ld de,0000h
	ld (hl),e
	inc hl
	ld (hl),d
	ld l,(ix-54)
	ld h,(ix-53)
	add hl,hl
	push hl
	call T12
	ld (ix-2),l
	ld (ix-1),h
	ld l,(ix-54)
	ld h,(ix-53)
	add hl,hl
	ex (sp),hl
	ld l,(ix-2)
	ld h,(ix-1)
	push hl
	push ix
	pop de
	ld hl,0fe38h
	add hl,de
	push hl
	call _bmove
	pop bc
	pop bc
	pop bc
	ld l,(ix-2)
	ld h,(ix-1)
	jp cret
T2:
	call csv
	ld a,(B6)
	or a
	ld hl,(B5)
	ld a,(hl)
	jr z,R33
	cp 5ch
	jr nz,R34
	ld iy,(B5)
	ld a,(iy+1)
	or a
	jr nz,R34
	ld hl,(B0)
	ld a,l
	or h
	jr nz,R35
	ld hl,0100h
	push hl
	call T12
	pop bc
	ld (B0),hl
R35:
	ld hl,__iob+7
	ld l,(hl)
	ld h,00h
	push hl
	call _isatty
	pop bc
	ld a,l
	or h
	jr z,R36
	ld hl,(B4)
	push hl
	ld hl,D11
	push hl
	ld hl,__iob+16
	push hl
	call _fprintf
	pop bc
	pop bc
	pop bc
R36:
	ld hl,(B0)
	push hl
	call _gets
	pop bc
	ld hl,(B0)
	ld (B5),hl
R34:
	ld hl,(B5)
	ld a,(hl)
R33:
	or a
	jr z,R37
	ld hl,(B5)
	inc hl
	ld (B5),hl
	dec hl
	ld l,(hl)
	jp cret
R37:
	ld l,00h
	jp cret
T1:
	call csv
	push hl
	push ix
	pop de
	ld hl,0006h
	add hl,de
	ld (ix-2),l
	ld (ix-1),h
	jr R38
R39:
	ld l,(ix-2)
	ld h,(ix-1)
	ld c,(hl)
	inc hl
	ld b,(hl)
	inc hl
	ld (ix-2),l
	ld (ix-1),h
	push bc
	call T19
	pop bc
R38:
	ld l,(ix-2)
	ld h,(ix-1)
	ld a,(hl)
	inc hl
	or (hl)
	jr nz,R39
	ld hl,D12
	push hl
	call T19
	ld hl,0ffffh
	ex (sp),hl
	call _exit
	jp cret
T19:
	call csv
	ld l,(ix+6)
	ld h,(ix+7)
	push hl
	pop iy
	jr R40
R42:
	ld a,(iy+0)
	cp 0ah
	jr nz,R41
	ld hl,000dh
	push hl
	ld hl,0002h
	push hl
	call _bdos
	pop bc
	pop bc
R41:
	ld a,(iy+0)
	inc iy
	ld l,a
	rla
	sbc a,a
	ld h,a
	push hl
	ld hl,0002h
	push hl
	call _bdos
	pop bc
	pop bc
R40:
	ld a,(iy+0)
	or a
	jr nz,R42
	jp cret
T12:
	call csv
	push hl
	ld l,(ix+6)
	ld h,(ix+7)
	push hl
	call _sbrk
	pop bc
	ld (ix-2),l
	ld (ix-1),h
	ld de,0ffffh
	or a
	sbc hl,de
	jr nz,R43
	ld hl,0000h
	push hl
	ld hl,D13
	push hl
	call T1
	pop bc
	pop bc
R43:
	ld l,(ix-2)
	ld h,(ix-1)
	jp cret
T17:
	call csv
	ld de,__iob
	ld l,(ix+12)
	ld h,(ix+13)
	or a
	sbc hl,de
	ld de,0008h
	call adiv
	ld de,B3
	add hl,de
	ld a,(hl)
	inc (hl)
	or a
	jr z,R44
	ld hl,0000h
	push hl
	ld hl,D14
	push hl
	ld l,(ix+6)
	ld h,(ix+7)
	push hl
	ld hl,D15
	push hl
	call T1
	pop bc
	pop bc
	pop bc
	pop bc
R44:
	ld l,(ix+12)
	ld h,(ix+13)
	push hl
	ld l,(ix+10)
	ld h,(ix+11)
	push hl
	ld l,(ix+8)
	ld h,(ix+9)
	push hl
	call _freopen
	pop bc
	pop bc
	pop bc
	ld e,(ix+12)
	ld d,(ix+13)
	or a
	sbc hl,de
	jp z,cret
	ld hl,0000h
	push hl
	ld l,(ix+6)
	ld h,(ix+7)
	push hl
	ld hl,D16
	push hl
	ld l,(ix+8)
	ld h,(ix+9)
	push hl
	ld hl,D17
	push hl
	call T1
	jp cret
T9:
	call csv
	ld hl,002ah
	push hl
	ld l,(ix+6)
	ld h,(ix+7)
	push hl
	call _strchr
	pop bc
	pop bc
	ld a,l
	or h
	jr nz,R45
	ld hl,003fh
	push hl
	ld l,(ix+6)
	ld h,(ix+7)
	push hl
	call _strchr
	pop bc
	pop bc
	ld a,l
	or h
	jr z,R46
R45:
	ld hl,0001h
	jp cret
R46:
	ld hl,0000h
	jp cret
T5:
	call csv
	ld a,(ix+6)
	cp 3ch
	jr z,R47
	cp 3eh
	jr nz,R48
R47:
	ld hl,0001h
	jp cret
R48:
	ld hl,0000h
	jp cret
T3:
	call csv
	ld a,(ix+6)
	cp 20h
	jr z,R49
	cp 09h
	jr z,R49
	cp 0ah
	jr nz,R50
R49:
	ld hl,0001h
	jp cret
R50:
	ld hl,0000h
	jp cret

	.data
D0:
	.db	05ch,000h
D1:
	.db	"too many arguments",000h
D2:
	.db	"argument too long",000h
D3:
	.db	"%u:",000h
D4:
	.db	": no match",000h
D5:
	.db	"no name after ",000h
D7:
	.db	"input",000h
D6:
	.db	"r",000h
D9:
	.db	"a",000h
D8:
	.db	"w",000h
D10:
	.db	"output",000h
D11:
	.db	"%s> ",000h
D12:
	.db	00ah,000h
D13:
	.db	"no room for arguments",000h
D15:
	.db	"Ambiguous ",000h
D14:
	.db	" redirection",000h
D17:
	.db	"Can't open ",000h
D16:
	.db	" for ",000h

	.bss
_.bss:
B5:
	.ds 2
B6:
	.ds 1
B4:
	.ds 2
B3:
	.ds 1
B2:
	.ds 1
B1:
	.ds 1
B0:
	.ds 2
