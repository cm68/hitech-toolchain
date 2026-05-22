;P:CPP_NEW.C: 94: extern char ** _getargs();
;P:CPP_NEW.C: 95: extern int     _argc_;
;c:stdio.h: 18: extern	struct	_iobuf
;c:stdio.h: 19: {
;c:stdio.h: 20:     char		*_ptr;
;c:stdio.h: 21:     int			 _cnt;
;c:stdio.h: 22:     char		*_base;
;c:stdio.h: 23:     unsigned short	 _flag;
;c:stdio.h: 24:     char		 _file;
;c:stdio.h: 25: } _iob[	8];
;c:stdio.h: 85: extern int	 fclose(	struct _iobuf *);
;c:stdio.h: 86: extern int	 fflush(	struct _iobuf *);
;c:stdio.h: 87: extern int	 fgetc(	struct _iobuf *);
;c:stdio.h: 88: extern int	 ungetc(int, 	struct _iobuf *);
;c:stdio.h: 89: extern int	 fputc(int, 	struct _iobuf *);
;c:stdio.h: 90: extern int	 getw(	struct _iobuf *);
;c:stdio.h: 91: extern int	 putw(int, 	struct _iobuf *);
;c:stdio.h: 92: extern char	*gets(char *);
;c:stdio.h: 93: extern int	 puts(char *);
;c:stdio.h: 94: extern int	 fputs(char *, 	struct _iobuf *);
;c:stdio.h: 95: extern int	 fread(void *, unsigned, unsigned, 	struct _iobuf *);
;c:stdio.h: 96: extern int	 fwrite(void *, unsigned, unsigned, 	struct _iobuf *);
;c:stdio.h: 97: extern int	 fseek(	struct _iobuf *, long, int);
;c:stdio.h: 98: extern int	 rewind(	struct _iobuf *);
;c:stdio.h: 99: extern int	 setbuf(	struct _iobuf *, char *);
;c:stdio.h: 100: extern int	 printf(char *, ...);
;c:stdio.h: 101: extern int	 fprintf(	struct _iobuf *, char *, ...);
;c:stdio.h: 102: extern int	 sprintf(char *, char *, ...);
;c:stdio.h: 103: extern int	 scanf(char *, ...);
;c:stdio.h: 104: extern int	 fscanf(	struct _iobuf *, char *, ...);
;c:stdio.h: 105: extern int	 sscanf(char *, char *, ...);
;c:stdio.h: 106: extern int	 remove(char *);
;c:stdio.h: 107: extern 	struct _iobuf	*fopen(char *, char *);
;c:stdio.h: 108: extern 	struct _iobuf	*freopen(char *, char *, 	struct _iobuf *);
;c:stdio.h: 109: extern 	struct _iobuf	*fdopen(int, char *);
;c:stdio.h: 110: extern long	 ftell(	struct _iobuf *);
;c:stdio.h: 111: extern char	*fgets(char *, int, 	struct _iobuf *);
;c:stdio.h: 112: extern char	*_bufallo(void);
;c:stdlib.h: 7: typedef	int		ptrdiff_t;
;c:stdlib.h: 8: typedef	unsigned	size_t;
;c:stdlib.h: 18: extern int	errno;
;c:stdlib.h: 23: extern double	 atof(char *);
;c:stdlib.h: 24: extern int	 atoi(char *);
;c:stdlib.h: 25: extern long	 atol(char *);
;c:stdlib.h: 26: extern int	 rand(void);
;c:stdlib.h: 27: extern void	 srand(unsigned int);
;c:stdlib.h: 28: extern void	*calloc(size_t, size_t);
;c:stdlib.h: 29: extern void	 free(void *);
;c:stdlib.h: 30: extern void	*malloc(size_t);
;c:stdlib.h: 31: extern void	*realloc(void *, size_t);
;c:stdlib.h: 32: extern void	 abort(void);
;c:stdlib.h: 33: extern void	 exit(int);
;c:stdlib.h: 34: extern char	*getenv(char *);
;c:stdlib.h: 35: extern int	 system(char *);
;c:stdlib.h: 36: typedef int (*__qsort_compf)(void *, void *);
;c:stdlib.h: 37: extern void	 qsort(void *, size_t, size_t, __qsort_compf);
;c:stdlib.h: 38: extern int	 abs(int);
;c:stdlib.h: 39: extern long	 labs(long);
;c:string.h: 17: extern int	errno;
;c:string.h: 19: extern void	*memcpy(void *, void *, size_t);
;c:string.h: 20: extern void	*memmove(void *, void *, size_t);
;c:string.h: 21: extern char	*strcpy(char *, char *);
;c:string.h: 22: extern char	*strncpy(char *, char *, size_t);
;c:string.h: 23: extern char	*strcat(char *, char *);
;c:string.h: 24: extern char	*strncat(char *, char *, size_t);
;c:string.h: 25: extern int	 memcmp(void *, void *, size_t);
;c:string.h: 26: extern int	 strcmp(char *, char *);
;c:string.h: 27: extern int	 strcasecmp(char *, char *);
;c:string.h: 29: extern int	 strncmp(char *, char *, size_t);
;c:string.h: 30: extern int	 strncasecmp(char *, char *, size_t);
;c:string.h: 33: extern void	*memchr(void *, int, size_t);
;c:string.h: 37: extern char	*strstr(char *, char *);
;c:string.h: 38: extern char	*strtok(char *, char *);
;c:string.h: 39: extern void	*memset(void *, int, size_t);
;c:string.h: 40: extern char	*strerror(int);
;c:string.h: 41: extern size_t	 strlen(char *);
;c:string.h: 42: extern char	*strchr(char *, int);
;c:string.h: 44: extern char	*index(char *, int);
;c:string.h: 45: extern char	*strrchr(char *, int);
;c:string.h: 47: extern char	*rindex(char *, int);
;c:string.h: 48: extern char	*strcasestr(char *, char *);
;c:string.h: 50: extern char	*strncasestr(char *, char *, size_t);
;c:ctype.h: 12: extern	unsigned char	_ctype_[];
;c:ctype.h: 35: extern int toupper(int);
;c:ctype.h: 36: extern int tolower(int);
;c:stdarg.h: 6: typedef void *	va_list[1];
;c:unixio.h: 19: extern int	errno;
;c:unixio.h: 21: extern int	open(char *, int);
;c:unixio.h: 22: extern int	close(int);
;c:unixio.h: 23: extern int	creat(char *, int);
;c:unixio.h: 24: extern int	dup(int);
;c:unixio.h: 25: extern long	lseek(int, long, int);
;c:unixio.h: 26: extern int	read(int, void *, int);
;c:unixio.h: 27: extern int	rename(char *, char *);
;c:unixio.h: 28: extern int	unlink(char *);
;c:unixio.h: 29: extern int	write(int, void *, int);
;c:unixio.h: 30: extern int	isatty(int);
;c:unixio.h: 31: extern int	chmod(char *, int);
;c:cpm.h: 30: extern struct	fcb
;c:cpm.h: 31: {
;c:cpm.h: 32:     unsigned char	dr;
;c:cpm.h: 33:     char	name[8];
;c:cpm.h: 34:     char	ft[3];
;c:cpm.h: 35:     unsigned char	ex;
;c:cpm.h: 36:     char	fil[2];
;c:cpm.h: 37:     char	rc;
;c:cpm.h: 38:     char	dm[16];
;c:cpm.h: 39:     char	nr;
;c:cpm.h: 40:     unsigned char	ranrec[3];
;c:cpm.h: 41:     long	rwp;
;c:cpm.h: 42:     unsigned char	use;
;c:cpm.h: 43:     unsigned char	uid;
;c:cpm.h: 44:     long	fsize;
;c:cpm.h: 45: }  _fcb[	8	];
;c:cpm.h: 47: extern short	   bdos(int, ...);
;c:cpm.h: 50: extern struct fcb* getfcb(void);
;c:cpm.h: 51: extern char *      fcbname(short i);
;c:cpm.h: 52: extern short	   getuid(void);
;c:cpm.h: 53: extern short	   setuid(short);
;c:cpm.h: 54: extern unsigned char	   setfcb(struct fcb *, char *);
;c:cpm.h: 55: extern char	*  (*_passwd)(struct fcb *);
;c:cpm.h: 56: extern short	   bios(short fn, ...);
;c:cpm.h: 172: enum BIOSfns
;c:cpm.h: 173: {
;c:cpm.h: 174:     _BOOT	=  0,
;c:cpm.h: 175:     _WBOOT	=  1,
;c:cpm.h: 177:     _CONST	=  2,
;c:cpm.h: 178:     _CONIN	=  3,
;c:cpm.h: 179:     _CONOUT	=  4,
;c:cpm.h: 180:     _LIST	=  5,
;c:cpm.h: 181:     _PUNOUT	=  6,
;c:cpm.h: 182:     _AUXOUT	=  6,
;c:cpm.h: 183:     _RDRIN	=  7,
;c:cpm.h: 184:     _AUXIN	=  7,
;c:cpm.h: 185:     _LISTST	= 15,
;c:cpm.h: 186:     _CONOST	= 17,
;c:cpm.h: 187:     _AUXIST	= 18,
;c:cpm.h: 188:     _AUXOST	= 19,
;c:cpm.h: 190:     _DEVTBL	= 20,
;c:cpm.h: 191:     _DEVINI	= 21,
;c:cpm.h: 192:     _DRVTBL	= 22,
;c:cpm.h: 194:     _HOME	=  8,
;c:cpm.h: 195:     _SELDSK	=  9,
;c:cpm.h: 196:     _SETTRK	= 10,
;c:cpm.h: 197:     _SETSEC	= 11,
;c:cpm.h: 198:     _SETDMA	= 12,
;c:cpm.h: 199:     _READ	= 13,
;c:cpm.h: 200:     _WRITE	= 14,
;c:cpm.h: 201:     _SECTRN	= 16,
;c:cpm.h: 202:     _MULTIO	= 23,
;c:cpm.h: 203:     _FLUSH	= 24,
;c:cpm.h: 205:     _MOVE	= 25,
;c:cpm.h: 206:     _SELMEM	= 27,
;c:cpm.h: 207:     _SETBNK	= 28,
;c:cpm.h: 208:     _XMOVE	= 29,
;c:cpm.h: 210:     _TIME	= 26,
;c:cpm.h: 211:     _USERF	= 30
;c:cpm.h: 212: };
;P:CPP_NEW.C: 127: struct symtab {
;P:CPP_NEW.C: 128:     char	  *name;
;P:CPP_NEW.C: 129:     char	  *value;
;P:CPP_NEW.C: 130:     struct symtab *next;
;P:CPP_NEW.C: 131: };
;P:CPP_NEW.C: 152: 	int 		 symlen = 	31 	;
psect	data
global	_symlen
_symlen:
defw	31
;P:CPP_NEW.C: 153: 	char		*pbeg;
;P:CPP_NEW.C: 154: 	char 		*pbuf;
;P:CPP_NEW.C: 155: 	char		*pend;
;P:CPP_NEW.C: 156: 	char 		*outptr,*inptr;
;P:CPP_NEW.C: 157: 	char 		*newp;
;P:CPP_NEW.C: 158: 	char		 cinit;
;P:CPP_NEW.C: 170: 	char macbit[256	+11];
;P:CPP_NEW.C: 171: 	char toktyp[256	];
;P:CPP_NEW.C: 221: 	char 		 fastab[256	];
;P:CPP_NEW.C: 222: 	char 		 slotab[256	];
;P:CPP_NEW.C: 223: 	char 		*ptrtab;
;P:CPP_NEW.C: 242: 	char 		buffer[	31 	+512	+512	+	31 	];
;P:CPP_NEW.C: 250: 	char 	       *sbf;
;P:CPP_NEW.C: 251: 	char 	       *savch;
;P:CPP_NEW.C: 265: static char 		warnc = (char)  0xFE	;
_warnc:
defb	-2
;P:CPP_NEW.C: 267: 	int 		mactop;
;P:CPP_NEW.C: 268: 	int 		fretop;
;P:CPP_NEW.C: 269: 	char 	       *instack[ 14	];
;P:CPP_NEW.C: 270: 	char 	       *bufstack[ 14	];
;P:CPP_NEW.C: 271: 	char 	       *endbuf[ 14	];
;P:CPP_NEW.C: 273: 	int 		plvl;
;P:CPP_NEW.C: 274: 	int 		maclin;
;P:CPP_NEW.C: 275: 	char 	       *macfil;
;P:CPP_NEW.C: 276: 	char 	       *macnam;
;P:CPP_NEW.C: 277: 	int 		maclvl;
;P:CPP_NEW.C: 278: 	char 	       *macforw;
;P:CPP_NEW.C: 279: 	int 		macdam;
;P:CPP_NEW.C: 281: 	int		inctop[ 16	];
;P:CPP_NEW.C: 282: 	char 	       *fnames[ 16	];
;P:CPP_NEW.C: 283: 	char 	       *dirnams[ 16	];
;P:CPP_NEW.C: 286: 		struct _iobuf	      * fins[ 16	];
;P:CPP_NEW.C: 291: 	int		lineno[ 16	];
;P:CPP_NEW.C: 292: 	char 	       *input;
;P:CPP_NEW.C: 305: 	char 	       *dirs[8	+3];
;P:CPP_NEW.C: 308: 		struct _iobuf	       *fin     = 	(&_iob[0]);
global	_fin
_fin:
global	__iob
defw	__iob
;P:CPP_NEW.C: 313: 		struct _iobuf 	       *fout;
;P:CPP_NEW.C: 320: 	int		nd	= 1;
global	_nd
_nd:
defw	1
;P:CPP_NEW.C: 321: 	int		extrawarn;
;P:CPP_NEW.C: 322: 	int		pflag;
;P:CPP_NEW.C: 323: 	int		cppflag = 1;
global	_cppflag
_cppflag:
defw	1
;P:CPP_NEW.C: 324: 	int		passcom;
;P:CPP_NEW.C: 325: 	int		rflag;
;P:CPP_NEW.C: 326: 	int		hflag;
;P:CPP_NEW.C: 332: 	int		noinclude;
;P:CPP_NEW.C: 333: 	int		nopredef;
;P:CPP_NEW.C: 334: 	int		char_is_signed = -1;	
global	_char_is_signed
_char_is_signed:
defw	-1
;P:CPP_NEW.C: 335: 	int		ifno;
;P:CPP_NEW.C: 339: 	char 	       *prespc[20 	];
;P:CPP_NEW.C: 340: 	char 	      **predef = prespc;
global	_predef
_predef:
global	_prespc
defw	_prespc
;P:CPP_NEW.C: 341: 	char 	       *punspc[20 	];
;P:CPP_NEW.C: 342: 	char 	      **prund = punspc;
global	_prund
_prund:
global	_punspc
defw	_punspc
;P:CPP_NEW.C: 343: 	int		exfail;
;P:CPP_NEW.C: 344: 	struct symtab  *lastsym;
;P:CPP_NEW.C: 346: 	void		sayline(char *);
;P:CPP_NEW.C: 347: 	void		dump(void);
;P:CPP_NEW.C: 348: 	char 	       *refill(char *);
;P:CPP_NEW.C: 349: 	char 	       *cotoken(char *);
;P:CPP_NEW.C: 350: 	char 	       *skipbl(char *);
;P:CPP_NEW.C: 351: 	char 	       *unfill(char *);
;P:CPP_NEW.C: 352: 	char 	       *doincl(char *);
;P:CPP_NEW.C: 353: 	int		equfrm(char *, char *, char *);
;P:CPP_NEW.C: 354: 	char 	       *dodef(char *);
;P:CPP_NEW.C: 355: 	void		control(char *);
;P:CPP_NEW.C: 356: 	int		iscomment(char *);
;P:CPP_NEW.C: 357: 	struct symtab  *stsym(char *);
;P:CPP_NEW.C: 358: 	struct symtab  *ppsym(char *);
;P:CPP_NEW.C: 359: 	void		pperror(char *fmt, ...);
;P:CPP_NEW.C: 360: 	void		yyerror(char *fmt, ...);
;P:CPP_NEW.C: 361:  	void		ppwarn(char *fmt, ...);
;P:CPP_NEW.C: 362: 	struct symtab  *lookup(char *, int);
;P:CPP_NEW.C: 363: 	struct symtab  *slookup(char *, char *, int);
;P:CPP_NEW.C: 364: 	char 	       *subst(char *, struct symtab *);
;P:CPP_NEW.C: 365: 	char 	       *trmdir(char *);
;P:CPP_NEW.C: 366: 	char 	       *copy(char *);
;P:CPP_NEW.C: 367: 	char 	       *strdex(char *, char);
;P:CPP_NEW.C: 368: 	int		yywrap(void);
;P:CPP_NEW.C: 369: 	int		main(int argc, char **argav);
;P:CPP_NEW.C: 370: 	void		newsbf(void);
;P:CPP_NEW.C: 371: 	struct symtab  *newsym(void);
;P:CPP_NEW.C: 373: 	int		yyparse();
;P:CPP_NEW.C: 375: 		struct _iobuf 	       *open1(char *, char *);
;P:CPP_NEW.C: 376: 	int 	        read1(char *, int, unsigned, 	struct _iobuf *);
;P:CPP_NEW.C: 382: 	struct symtab *stab[500	];
;P:CPP_NEW.C: 385: 	struct symtab  *asmloc;
;P:CPP_NEW.C: 386: 	struct symtab  *easmloc;
;P:CPP_NEW.C: 389: 	struct symtab  *ucpuloc;
;P:CPP_NEW.C: 390: 	struct symtab  *defloc;
;P:CPP_NEW.C: 391: 	struct symtab  *udfloc;
;P:CPP_NEW.C: 392: 	struct symtab  *incloc;
;P:CPP_NEW.C: 393: 	struct symtab  *ifloc;
;P:CPP_NEW.C: 394: 	struct symtab  *elsloc;
;P:CPP_NEW.C: 395: 	struct symtab  *eifloc;
;P:CPP_NEW.C: 396: 	struct symtab  *elifloc;
;P:CPP_NEW.C: 397: 	struct symtab  *ifdloc;
;P:CPP_NEW.C: 398: 	struct symtab  *ifnloc;
;P:CPP_NEW.C: 399: 	struct symtab  *ysysloc;
;P:CPP_NEW.C: 400: 	struct symtab  *varloc;
;P:CPP_NEW.C: 401: 	struct symtab  *lneloc;
;P:CPP_NEW.C: 402: 	struct symtab  *ulnloc;
;P:CPP_NEW.C: 403: 	struct symtab  *uflloc;
;P:CPP_NEW.C: 404: 	struct symtab  *idtloc;
;P:CPP_NEW.C: 405: 	struct symtab  *pragmaloc;
;P:CPP_NEW.C: 406: 	struct symtab  *errorloc;
;P:CPP_NEW.C: 407: 	int		trulvl;
;P:CPP_NEW.C: 408: 	int		flslvl;
;P:CPP_NEW.C: 409: 	int		elflvl;
;P:CPP_NEW.C: 410: 	int		elslvl;
;P:CPP_NEW.C: 424:  void sayline(char *what) {
psect	text
global	_sayline
_sayline:
global	ncsv, cret, indir
call	ncsv
defw	f199
;P:CPP_NEW.C: 426:     if (pflag==0) fprintf(fout,"# %d \"%s\"\n", lineno[ifno], fnames[ifno]);
global	_pflag
ld	hl,(_pflag)
ld	a,l
or	h
jp	nz,l5
global	_fprintf
global	_fout
global	_lineno
global	_ifno
global	_fnames
ld	de,_fnames
ld	hl,(_ifno)
add	hl,hl
add	hl,de
ld	c,(hl)
inc	hl
ld	b,(hl)
push	bc
ld	de,_lineno
ld	hl,(_ifno)
add	hl,hl
add	hl,de
ld	c,(hl)
inc	hl
ld	b,(hl)
push	bc
ld	hl,19f
push	hl
ld	hl,(_fout)
push	hl
call	_fprintf
ld	hl,2+2+2+2
add	hl,sp
ld	sp,hl
;P:CPP_NEW.C: 427: }
l5:
l4:
jp	cret
f199	equ	0
;P:CPP_NEW.C: 491:  void dump() {
global	_dump
_dump:
call	ncsv
defw	f200
;P:CPP_NEW.C: 492:     register char *p1;
;P:CPP_NEW.C: 493:     register 	struct _iobuf *f;
;P:CPP_NEW.C: 495:     if ((p1 = outptr) == inptr || flslvl != 0) return;
global	_outptr
global	_inptr
global	_flslvl
ld	de,(_inptr)
ld	iy,(_outptr)
push	iy
pop	hl
or	a
sbc	hl,de
jp	nz,20f
jp	21f
20:
ld	hl,(_flslvl)
ld	a,l
or	h
jp	z,20f
jp	21f
21:jp	11f
20:jp	10f
10:
jp	l7
11:
jp	l6
;P:CPP_NEW.C: 496:     f = fout;
l7:
ld	hl,(_fout)
ld	(ix+-2),l
ld	(ix+1+-2),h
;P:CPP_NEW.C: 497:     while (p1 < inptr) 	fputc(*p1++, f);
jp	l8
l9:
global	_fputc
ld	l,(ix+-2)
ld	h,(ix+1+-2)
push	hl
ld	a,(iy+0)
inc	iy
ld	l,a
rla
sbc	a,a
ld	h,a
push	hl
call	_fputc
ld	hl,2+2
add	hl,sp
ld	sp,hl
l8:
ld	de,(_inptr)
push	iy
pop	hl
global	wrelop
call	wrelop
jp	llt,l9
l10:
;P:CPP_NEW.C: 498:     outptr = p1;
ld	(_outptr),iy
;P:CPP_NEW.C: 499: }
l6:
jp	cret
f200	equ	-2
;P:CPP_NEW.C: 506:  char * refill(register char *p) {
global	_refill
_refill:
call	ncsv
defw	f201
ld	l,(ix+6)
ld	h,(ix+7)
push	hl
pop	iy
;P:CPP_NEW.C: 507:     char *np;
;P:CPP_NEW.C: 508:     char *op;
;P:CPP_NEW.C: 509:     int ninbuf;
;P:CPP_NEW.C: 511:     dump(); np = pbuf - (p - inptr); op = inptr;
call	_dump
ld	hl,0
add	hl,sp
ld	sp,hl
global	_pbuf
ld	de,(_inptr)
push	iy
pop	hl
or	a
sbc	hl,de
ex	de,hl
ld	hl,(_pbuf)
or	a
sbc	hl,de
ld	(ix+-2),l
ld	(ix+1+-2),h
ld	hl,(_inptr)
ld	(ix+-4),l
ld	(ix+1+-4),h
;P:CPP_NEW.C: 512:     if ( (pbeg>=(np+1))) {
global	_pbeg
ld	e,(ix+-2)
ld	d,(ix+1+-2)
inc	de
ld	hl,(_pbeg)
global	wrelop
call	wrelop
jp	llt,l12
;P:CPP_NEW.C: 513:         pperror("token too long"); np = pbeg; p = inptr+512	;
global	_pperror
ld	hl,29f
push	hl
call	_pperror
ld	hl,2
add	hl,sp
ld	sp,hl
ld	hl,(_pbeg)
ld	(ix+-2),l
ld	(ix+1+-2),h
ld	de,(_inptr)
ld	hl,512
add	hl,de
push	hl
pop	iy
;P:CPP_NEW.C: 514:     }
;P:CPP_NEW.C: 515:     macdam += np-inptr; outptr = inptr = np;
l12:
global	_macdam
ld	de,(_inptr)
ld	l,(ix+-2)
ld	h,(ix+1+-2)
or	a
sbc	hl,de
ex	de,hl
ld	hl,(_macdam)
add	hl,de
ld	(_macdam),hl
ld	l,(ix+-2)
ld	h,(ix+1+-2)
ld	(_inptr),hl
ld	(_outptr),hl
;P:CPP_NEW.C: 516:     while (op < p) *np++ = *op++;
jp	l13
l14:
ld	l,(ix+-4)
ld	h,(ix+1+-4)
ld	a,(hl)
inc	hl
ld	(ix+-4),l
ld	(ix+1+-4),h
ld	l,(ix+-2)
ld	h,(ix+1+-2)
inc	hl
ld	(ix+-2),l
ld	(ix+1+-2),h
dec	hl
ld	(hl),a
l13:
push	iy
pop	de
ld	l,(ix+-4)
ld	h,(ix+1+-4)
global	wrelop
call	wrelop
jp	llt,l14
l15:
;P:CPP_NEW.C: 517:     p = np;
ld	l,(ix+-2)
ld	h,(ix+1+-2)
push	hl
pop	iy
;P:CPP_NEW.C: 518:     for (;;) {
l16:
;P:CPP_NEW.C: 519: 	if (mactop > inctop[ifno]) {
global	_mactop
global	_inctop
ld	de,_inctop
ld	hl,(_ifno)
add	hl,hl
add	hl,de
ld	a,(hl)
inc	hl
ld	h,(hl)
ld	l,a
ld	de,(_mactop)
global	wrelop
call	wrelop
jp	age,l19
;P:CPP_NEW.C: 521: 	    op = instack[--mactop]; np = pbuf;
global	_instack
ld	de,_instack
ld	hl,(_mactop)
dec	hl
ld	(_mactop),hl
add	hl,hl
add	hl,de
ld	c,(hl)
inc	hl
ld	b,(hl)
ld	(ix+-4),c
ld	(ix+1+-4),b
ld	hl,(_pbuf)
ld	(ix+-2),l
ld	(ix+1+-2),h
;P:CPP_NEW.C: 522: 	    do {while ((*np++ = *op++) != '\0');}
l22:
jp	l23
l24:
l23:
ld	l,(ix+-4)
ld	h,(ix+1+-4)
ld	a,(hl)
inc	hl
ld	(ix+-4),l
ld	(ix+1+-4),h
ld	l,(ix+-2)
ld	h,(ix+1+-2)
inc	hl
ld	(ix+-2),l
ld	(ix+1+-2),h
dec	hl
ld	(hl),a
or	a
jp	anz,l24
l25:
l20:
;P:CPP_NEW.C: 523: 	    while (op < endbuf[mactop]); pend = np-1;
global	_endbuf
ld	de,_endbuf
ld	hl,(_mactop)
add	hl,hl
add	hl,de
ld	e,(hl)
inc	hl
ld	d,(hl)
ld	l,(ix+-4)
ld	h,(ix+1+-4)
global	wrelop
call	wrelop
jp	llt,l22
l21:
global	_pend
ld	l,(ix+-2)
ld	h,(ix+1+-2)
dec	hl
ld	(_pend),hl
;P:CPP_NEW.C: 525: 	    if (fretop <  14	) bufstack[fretop++] = instack[mactop];
global	_fretop
ld	de,14
ld	hl,(_fretop)
global	wrelop
call	wrelop
jp	age,l26
global	_bufstack
ld	de,_instack
ld	hl,(_mactop)
add	hl,hl
add	hl,de
ld	c,(hl)
inc	hl
ld	b,(hl)
ld	de,_bufstack
ld	hl,(_fretop)
inc	hl
ld	(_fretop),hl
dec	hl
add	hl,hl
add	hl,de
ld	(hl),c
inc	hl
ld	(hl),b
;P:CPP_NEW.C: 526: 	    return (p);
l26:
push	iy
pop	hl
jp	l11
;P:CPP_NEW.C: 527: 	} else {
jp	l27
l19:
;P:CPP_NEW.C: 528: 	    maclvl = 0;
global	_maclvl
ld	hl,0
ld	(_maclvl),hl
;P:CPP_NEW.C: 530: 	    if((ninbuf = read1(pbuf, 1, 512	, fin)) > 0) {
global	_read1
ld	hl,(_fin)
push	hl
ld	hl,512
push	hl
ld	hl,1
push	hl
ld	hl,(_pbuf)
push	hl
call	_read1
exx
ld	hl,2+2+2+2
add	hl,sp
ld	sp,hl
exx
ld	e,l
ld	d,h
ld	(ix+-6),e
ld	(ix+1+-6),d
ld	hl,0
global	wrelop
call	wrelop
jp	age,l28
;P:CPP_NEW.C: 534: 	        pend = pbuf + ninbuf; *pend = '\0';
ld	de,(_pbuf)
ld	l,(ix+-6)
ld	h,(ix+1+-6)
add	hl,de
ld	(_pend),hl
ld	hl,(_pend)
ld	(hl),0
;P:CPP_NEW.C: 535: 	        return (p);
push	iy
pop	hl
jp	l11
;P:CPP_NEW.C: 536: 	    }
;P:CPP_NEW.C: 538: 	    if (ifno == 0) {
l28:
ld	hl,(_ifno)
ld	a,l
or	h
jp	nz,l29
;P:CPP_NEW.C: 539: 	        if (plvl != 0) {
global	_plvl
ld	hl,(_plvl)
ld	a,l
or	h
jp	z,l30
;P:CPP_NEW.C: 540: 		    int n = plvl, tlin = lineno[ifno];
ld	hl,(_plvl)
ld	(ix+-8),l
ld	(ix+1+-8),h
ld	de,_lineno
ld	hl,(_ifno)
add	hl,hl
add	hl,de
ld	c,(hl)
inc	hl
ld	b,(hl)
ld	(ix+-10),c
ld	(ix+1+-10),b
;P:CPP_NEW.C: 541: 		    char *tfil = fnames[ifno];
ld	de,_fnames
ld	hl,(_ifno)
add	hl,hl
add	hl,de
ld	c,(hl)
inc	hl
ld	b,(hl)
ld	(ix+-12),c
ld	(ix+1+-12),b
;P:CPP_NEW.C: 542: 		    lineno[ifno] = maclin; fnames[ifno] = macfil;
global	_maclin
ld	de,_lineno
ld	hl,(_ifno)
add	hl,hl
add	hl,de
ld	de,(_maclin)
ld	(hl),e
inc	hl
ld	(hl),d
global	_macfil
ld	de,_fnames
ld	hl,(_ifno)
add	hl,hl
add	hl,de
ld	de,(_macfil)
ld	(hl),e
inc	hl
ld	(hl),d
;P:CPP_NEW.C: 543: 		    pperror("%s: unterminated macro call", macnam);
global	_macnam
ld	hl,(_macnam)
push	hl
ld	hl,39f
push	hl
call	_pperror
ld	hl,2+2
add	hl,sp
ld	sp,hl
;P:CPP_NEW.C: 544: 		    lineno[ifno] = tlin; fnames[ifno] = tfil;
ld	de,_lineno
ld	hl,(_ifno)
add	hl,hl
add	hl,de
ld	e,(ix+-10)
ld	d,(ix+1+-10)
ld	(hl),e
inc	hl
ld	(hl),d
ld	de,_fnames
ld	hl,(_ifno)
add	hl,hl
add	hl,de
ld	e,(ix+-12)
ld	d,(ix+1+-12)
ld	(hl),e
inc	hl
ld	(hl),d
;P:CPP_NEW.C: 545: 		    np = p; *np++ = '\n';
push	iy
pop	hl
ld	(ix+-2),l
ld	(ix+1+-2),h
ld	l,(ix+-2)
ld	h,(ix+1+-2)
inc	hl
ld	(ix+-2),l
ld	(ix+1+-2),h
dec	hl
ld	(hl),10
;P:CPP_NEW.C: 546: 		    while (--n >= 0) *np++ = ')';
jp	l31
l32:
ld	l,(ix+-2)
ld	h,(ix+1+-2)
inc	hl
ld	(ix+-2),l
ld	(ix+1+-2),h
dec	hl
ld	(hl),41
l31:
ld	l,(ix+-8)
ld	h,(ix+1+-8)
dec	hl
ld	(ix+-8),l
ld	(ix+1+-8),h
bit	7,h
jp	z,l32
l33:
;P:CPP_NEW.C: 547: 		    pend = np; *np = '\0'; if (plvl < 0) plvl = 0;
ld	l,(ix+-2)
ld	h,(ix+1+-2)
ld	(_pend),hl
ld	l,(ix+-2)
ld	h,(ix+1+-2)
ld	(hl),0
ld	hl,(_plvl)
bit	7,h
jp	z,l34
ld	hl,0
ld	(_plvl),hl
;P:CPP_NEW.C: 548: 		    return (p);
l34:
push	iy
pop	hl
jp	l11
;P:CPP_NEW.C: 549: 	        }
;P:CPP_NEW.C: 550: 	        inptr = p; dump(); exit(exfail);
l30:
ld	(_inptr),iy
call	_dump
ld	hl,0
add	hl,sp
ld	sp,hl
global	_exit
global	_exfail
ld	hl,(_exfail)
push	hl
call	_exit
ld	hl,2
add	hl,sp
ld	sp,hl
;P:CPP_NEW.C: 551: 	    }
;P:CPP_NEW.C: 553: 	    fclose(fin); fin = fins[--ifno]; dirs[0] = dirnams[ifno];
l29:
global	_fclose
ld	hl,(_fin)
push	hl
call	_fclose
ld	hl,2
add	hl,sp
ld	sp,hl
global	_fins
ld	de,_fins
ld	hl,(_ifno)
dec	hl
ld	(_ifno),hl
add	hl,hl
add	hl,de
ld	c,(hl)
inc	hl
ld	b,(hl)
ld	(_fin),bc
global	_dirs
global	_dirnams
ld	de,_dirnams
ld	hl,(_ifno)
add	hl,hl
add	hl,de
ld	c,(hl)
inc	hl
ld	b,(hl)
ld	(_dirs),bc
;P:CPP_NEW.C: 557: 	    sayline("2"	);
ld	hl,49f
push	hl
call	_sayline
ld	hl,2
add	hl,sp
ld	sp,hl
;P:CPP_NEW.C: 558: 	}
l27:
;P:CPP_NEW.C: 559:     }
l18:
jp	l16
l17:
;P:CPP_NEW.C: 560: }
l11:
jp	cret
f201	equ	-12
;P:CPP_NEW.C: 567:  char * cotoken(register char *p) {
global	_cotoken
_cotoken:
call	ncsv
defw	f202
ld	l,(ix+6)
ld	h,(ix+7)
push	hl
pop	iy
;P:CPP_NEW.C: 568:     register int c, i; char quoc;
;P:CPP_NEW.C: 569:     int	cppcom = 0;
ld	(ix+-7),.low.0
ld	(ix+1+-7),.high.0
;P:CPP_NEW.C: 570:     static int state = 0;
psect	data
F484:
defw	0
;P:CPP_NEW.C: 572:     if (state != 0) goto prevlf;
psect	text
ld	hl,(F484)
ld	a,l
or	h
jp	z,l36
jp	l37
;P:CPP_NEW.C: 573:     for (;;) {
l36:
l38:
;P:CPP_NEW.C: 574: again:
l41:
;P:CPP_NEW.C: 575: 	while (!  (ptrtab[(int)*p++]&  2));
jp	l42
l43:
l42:
global	_ptrtab
ld	de,(_ptrtab)
ld	a,(iy+0)
inc	iy
ld	l,a
rla
sbc	a,a
ld	h,a
add	hl,de
bit	1&7,(hl)
jp	z,l43
l44:
;P:CPP_NEW.C: 576: 	switch (*(inptr = p-1)) {
jp	l46
;P:CPP_NEW.C: 577: 	case 0: {
l47:
;P:CPP_NEW.C: 578: 		    if ( ((--p)>=pend)) {p = refill(p); goto again;}
ld	de,-1
add	iy,de
push	iy
pop	hl
ld	de,(_pend)
global	wrelop
call	wrelop
jp	llt,l48
push	iy
call	_refill
exx
ld	hl,2
add	hl,sp
ld	sp,hl
exx
ld	l,l
ld	h,h
push	hl
pop	iy
jp	l41
;P:CPP_NEW.C: 579: 		    else ++p;
jp	l49
l48:
inc	iy
l49:
;P:CPP_NEW.C: 580: 		} break;
jp	l45
;P:CPP_NEW.C: 581: 	case '|':
l50:
;P:CPP_NEW.C: 582: 	case '&':
l51:
;P:CPP_NEW.C: 583: 		for (;;) {
l52:
;P:CPP_NEW.C: 584: 		    if (*p++ == *inptr) break;
ld	hl,(_inptr)
ld	a,(iy+0)
inc	iy
cp	(hl)
jp	nz,l55
jp	l53
;P:CPP_NEW.C: 585: 		    if ( ((--p)>=pend)) p = refill(p);
l55:
ld	de,-1
add	iy,de
push	iy
pop	hl
ld	de,(_pend)
global	wrelop
call	wrelop
jp	llt,l56
push	iy
call	_refill
exx
ld	hl,2
add	hl,sp
ld	sp,hl
exx
ld	l,l
ld	h,h
push	hl
pop	iy
;P:CPP_NEW.C: 586: 		    else break;
jp	l57
l56:
jp	l53
l57:
;P:CPP_NEW.C: 587: 		} break;
l54:
jp	l52
l53:
jp	l45
;P:CPP_NEW.C: 588: 	case '=':
l58:
;P:CPP_NEW.C: 589: 	case '!':
l59:
;P:CPP_NEW.C: 590: 		for (;;) {
l60:
;P:CPP_NEW.C: 591: 		    if (*p++ == '=') break;
ld	a,(iy+0)
inc	iy
cp	.low.61
jp	nz,l63
jp	l61
;P:CPP_NEW.C: 592: 		    if ( ((--p)>=pend)) p = refill(p);
l63:
ld	de,-1
add	iy,de
push	iy
pop	hl
ld	de,(_pend)
global	wrelop
call	wrelop
jp	llt,l64
push	iy
call	_refill
exx
ld	hl,2
add	hl,sp
ld	sp,hl
exx
ld	l,l
ld	h,h
push	hl
pop	iy
;P:CPP_NEW.C: 593: 		    else break;
jp	l65
l64:
jp	l61
l65:
;P:CPP_NEW.C: 594: 		} break;
l62:
jp	l60
l61:
jp	l45
;P:CPP_NEW.C: 595: 	case '<':
l66:
;P:CPP_NEW.C: 596: 	case '>':
l67:
;P:CPP_NEW.C: 597: 		for (;;) {
l68:
;P:CPP_NEW.C: 598: 		    if (*p++ == '=' || p[-2] == p[-1]) break;
ld	a,(iy+0)
inc	iy
cp	.low.61
jp	nz,20f
jp	21f
20:
ld	a,(iy+-2)
cp	(iy+-1)
jp	nz,20f
jp	21f
21:jp	11f
20:jp	10f
10:
jp	l71
11:
jp	l69
;P:CPP_NEW.C: 599: 		    if ( ((--p)>=pend)) p = refill(p);
l71:
ld	de,-1
add	iy,de
push	iy
pop	hl
ld	de,(_pend)
global	wrelop
call	wrelop
jp	llt,l72
push	iy
call	_refill
exx
ld	hl,2
add	hl,sp
ld	sp,hl
exx
ld	l,l
ld	h,h
push	hl
pop	iy
;P:CPP_NEW.C: 600: 		    else break;
jp	l73
l72:
jp	l69
l73:
;P:CPP_NEW.C: 601: 		} break;
l70:
jp	l68
l69:
jp	l45
;P:CPP_NEW.C: 602: 	case '\\':
l74:
;P:CPP_NEW.C: 603: 		for (;;) {
l75:
;P:CPP_NEW.C: 604: 		    if (*p++ == '\n') {++lineno[ifno]; break;}
ld	a,(iy+0)
inc	iy
cp	.low.10
jp	nz,l78
ld	de,_lineno
ld	hl,(_ifno)
add	hl,hl
add	hl,de
ld	c,(hl)
inc	hl
ld	b,(hl)
inc	bc
ld	(hl),b
dec	hl
ld	(hl),c
jp	l76
;P:CPP_NEW.C: 605: 		    if ( ((--p)>=pend)) p = refill(p);
l78:
ld	de,-1
add	iy,de
push	iy
pop	hl
ld	de,(_pend)
global	wrelop
call	wrelop
jp	llt,l79
push	iy
call	_refill
exx
ld	hl,2
add	hl,sp
ld	sp,hl
exx
ld	l,l
ld	h,h
push	hl
pop	iy
;P:CPP_NEW.C: 606: 		    else {++p; break;}
jp	l80
l79:
inc	iy
jp	l76
l80:
;P:CPP_NEW.C: 607: 		} break;
l77:
jp	l75
l76:
jp	l45
;P:CPP_NEW.C: 608: 	case '/':
l81:
;P:CPP_NEW.C: 609: 		for (;;) {
l82:
;P:CPP_NEW.C: 610: 		    if (*p == '*' || (cppflag && *p == '/')) {
ld	a,(iy+0)
cp	.low.42
jp	nz,20f
jp	21f
20:
ld	hl,(_cppflag)
ld	a,l
or	h
jp	z,30f
jp	31f
31:
ld	a,(iy+0)
cp	.low.47
jp	nz,30f
jp	31f
31:jp	21f
30:jp	20f
21:jp	11f
20:jp	10f
10:
jp	l85
11:
;P:CPP_NEW.C: 611: 			if (*p++ == '/')
ld	a,(iy+0)
inc	iy
cp	.low.47
jp	nz,l86
;P:CPP_NEW.C: 612: 				cppcom++;
ld	l,(ix+-7)
ld	h,(ix+1+-7)
inc	hl
ld	(ix+-7),l
ld	(ix+1+-7),h
;P:CPP_NEW.C: 613: 			if (!passcom) {inptr = p-2; dump(); ++flslvl;}
l86:
global	_passcom
ld	hl,(_passcom)
ld	a,l
or	h
jp	nz,l87
push	iy
pop	hl
dec	hl
dec hl
ld	(_inptr),hl
call	_dump
ld	hl,0
add	hl,sp
ld	sp,hl
ld	hl,(_flslvl)
inc	hl
ld	(_flslvl),hl
;P:CPP_NEW.C: 614: 			for (;;) {
l87:
l88:
;P:CPP_NEW.C: 615: 				while (!  ((fastab+128)[(int)*p++]&  8));
jp	l91
l92:
l91:
global	_fastab
ld	a,(iy+0)
inc	iy
ld	e,a
rla
sbc	a,a
ld	d,a
ld	hl,_fastab+128
add	hl,de
bit	3&7,(hl)
jp	z,l92
l93:
;P:CPP_NEW.C: 616: 				if (cppcom && p[-1] == '\n') {
ld	a,(ix+-7)
or	(ix+1+-7)
jp	z,20f
jp	21f
21:
ld	a,(iy+-1)
cp	.low.10
jp	nz,20f
jp	21f
21:jp	11f
20:jp	10f
10:
jp	l94
11:
;P:CPP_NEW.C: 617: 					p--;
push	iy
pop	hl
dec	hl
push	hl
pop	iy
;P:CPP_NEW.C: 618: 					goto endcom;
jp	l95
;P:CPP_NEW.C: 619: 				}
;P:CPP_NEW.C: 620: 				if (p[-1] == '*') for (;;) {
l94:
ld	a,(iy+-1)
cp	.low.42
jp	nz,l96
l97:
;P:CPP_NEW.C: 621: 					if (*p++ == '/') goto endcom;
ld	a,(iy+0)
inc	iy
cp	.low.47
jp	nz,l100
jp	l95
;P:CPP_NEW.C: 622: 					if ( ((--p)>=pend)) {
l100:
ld	de,-1
add	iy,de
push	iy
pop	hl
ld	de,(_pend)
global	wrelop
call	wrelop
jp	llt,l101
;P:CPP_NEW.C: 623: 					    if (!passcom) {inptr = p; p = refill(p);}
ld	hl,(_passcom)
ld	a,l
or	h
jp	nz,l102
ld	(_inptr),iy
push	iy
call	_refill
exx
ld	hl,2
add	hl,sp
ld	sp,hl
exx
ld	l,l
ld	h,h
push	hl
pop	iy
;P:CPP_NEW.C: 624: 					    else if ((p-inptr) >= 512	) {
jp	l103
l102:
ld	de,(_inptr)
push	iy
pop	hl
or	a
sbc	hl,de
ld	de,512
global	wrelop
call	wrelop
jp	alt,l104
;P:CPP_NEW.C: 625: 					        inptr = p; p = refill(p);
ld	(_inptr),iy
push	iy
call	_refill
exx
ld	hl,2
add	hl,sp
ld	sp,hl
exx
ld	l,l
ld	h,h
push	hl
pop	iy
;P:CPP_NEW.C: 626: 					        	fputc('/', fout);
ld	hl,(_fout)
push	hl
ld	hl,47
push	hl
call	_fputc
ld	hl,2+2
add	hl,sp
ld	sp,hl
;P:CPP_NEW.C: 628: 					        outptr = inptr = p -= 3; *p++ = '/'; *p++ = '*'; *p++ = '*';
ld	de,-3
add	iy,de
ld	(_inptr),iy
ld	(_outptr),iy
ld	(iy+0),47
inc	iy
ld	(iy+0),42
inc	iy
ld	(iy+0),42
inc	iy
;P:CPP_NEW.C: 629: 					    } else p = refill(p);
jp	l105
l104:
push	iy
call	_refill
exx
ld	hl,2
add	hl,sp
ld	sp,hl
exx
ld	l,l
ld	h,h
push	hl
pop	iy
l105:
l103:
;P:CPP_NEW.C: 630: 					} else break;
jp	l106
l101:
jp	l98
l106:
;P:CPP_NEW.C: 631: 				} else if (p[-1] == '\n') {
l99:
jp	l97
l98:
jp	l107
l96:
ld	a,(iy+-1)
cp	.low.10
jp	nz,l108
;P:CPP_NEW.C: 632: 				    ++lineno[ifno]; if (!passcom) 	fputc('\n', fout);
ld	de,_lineno
ld	hl,(_ifno)
add	hl,hl
add	hl,de
ld	c,(hl)
inc	hl
ld	b,(hl)
inc	bc
ld	(hl),b
dec	hl
ld	(hl),c
ld	hl,(_passcom)
ld	a,l
or	h
jp	nz,l109
ld	hl,(_fout)
push	hl
ld	hl,10
push	hl
call	_fputc
ld	hl,2+2
add	hl,sp
ld	sp,hl
;P:CPP_NEW.C: 633: 				} else if ( ((--p)>=pend)) {
l109:
jp	l110
l108:
ld	de,-1
add	iy,de
push	iy
pop	hl
ld	de,(_pend)
global	wrelop
call	wrelop
jp	llt,l111
;P:CPP_NEW.C: 634: 				    if (!passcom) {inptr = p; p = refill(p);}
ld	hl,(_passcom)
ld	a,l
or	h
jp	nz,l112
ld	(_inptr),iy
push	iy
call	_refill
exx
ld	hl,2
add	hl,sp
ld	sp,hl
exx
ld	l,l
ld	h,h
push	hl
pop	iy
;P:CPP_NEW.C: 635: 				    else if ((p-inptr) >= 512	) {
jp	l113
l112:
ld	de,(_inptr)
push	iy
pop	hl
or	a
sbc	hl,de
ld	de,512
global	wrelop
call	wrelop
jp	alt,l114
;P:CPP_NEW.C: 636: 				        inptr = p; p = refill(p);
ld	(_inptr),iy
push	iy
call	_refill
exx
ld	hl,2
add	hl,sp
ld	sp,hl
exx
ld	l,l
ld	h,h
push	hl
pop	iy
;P:CPP_NEW.C: 637: 				        	fputc('*', fout); 	fputc('/', fout);
ld	hl,(_fout)
push	hl
ld	hl,42
push	hl
call	_fputc
ld	hl,2+2
add	hl,sp
ld	sp,hl
ld	hl,(_fout)
push	hl
ld	hl,47
push	hl
call	_fputc
ld	hl,2+2
add	hl,sp
ld	sp,hl
;P:CPP_NEW.C: 638: 				        outptr = inptr = p -= 2; *p++ = '/'; *p++ = '*';
ld	de,-2
add	iy,de
ld	(_inptr),iy
ld	(_outptr),iy
ld	(iy+0),47
inc	iy
ld	(iy+0),42
inc	iy
;P:CPP_NEW.C: 639: 				    } else p = refill(p);
jp	l115
l114:
push	iy
call	_refill
exx
ld	hl,2
add	hl,sp
ld	sp,hl
exx
ld	l,l
ld	h,h
push	hl
pop	iy
l115:
l113:
;P:CPP_NEW.C: 640: 				} else ++p;
jp	l116
l111:
inc	iy
l116:
l110:
l107:
;P:CPP_NEW.C: 641: 			}
l90:
jp	l88
l89:
;P:CPP_NEW.C: 642: endcom:
l95:
;P:CPP_NEW.C: 643: 			cppcom = 0;
ld	(ix+-7),.low.0
ld	(ix+1+-7),.high.0
;P:CPP_NEW.C: 644: 			if (!passcom) {outptr = inptr = p; --flslvl; goto again;}
ld	hl,(_passcom)
ld	a,l
or	h
jp	nz,l117
ld	(_inptr),iy
ld	(_outptr),iy
ld	hl,(_flslvl)
dec	hl
ld	(_flslvl),hl
jp	l41
;P:CPP_NEW.C: 645: 			break;
l117:
jp	l83
;P:CPP_NEW.C: 646: 		} else {
jp	l118
l85:
;P:CPP_NEW.C: 647: 			p++;
inc	iy
;P:CPP_NEW.C: 648: 		}
l118:
;P:CPP_NEW.C: 649: 		if ( ((--p)>=pend)) p = refill(p);
ld	de,-1
add	iy,de
push	iy
pop	hl
ld	de,(_pend)
global	wrelop
call	wrelop
jp	llt,l119
push	iy
call	_refill
exx
ld	hl,2
add	hl,sp
ld	sp,hl
exx
ld	l,l
ld	h,h
push	hl
pop	iy
;P:CPP_NEW.C: 650: 		else break;
jp	l120
l119:
jp	l83
l120:
;P:CPP_NEW.C: 651: 	} break;
l84:
jp	l82
l83:
jp	l45
;P:CPP_NEW.C: 652: 	case '"':
l121:
;P:CPP_NEW.C: 653: 	case '\'':
l122:
;P:CPP_NEW.C: 654: 		{
;P:CPP_NEW.C: 655: 		    quoc = p[-1];
ld	a,(iy+-1)
ld	(ix+-5),a
;P:CPP_NEW.C: 656: 		    for (;;) {
l123:
;P:CPP_NEW.C: 657: 		        while (!  ((fastab+128)[(int)*p++]& 16));
jp	l126
l127:
l126:
ld	a,(iy+0)
inc	iy
ld	e,a
rla
sbc	a,a
ld	d,a
ld	hl,_fastab+128
add	hl,de
bit	4&7,(hl)
jp	z,l127
l128:
;P:CPP_NEW.C: 658: 		        if (p[-1] == quoc) break;
ld	a,(iy+-1)
cp	(ix+-5)
jp	nz,l129
jp	l124
;P:CPP_NEW.C: 659: 		        if (p[-1] == '\n') {--p; break;}
l129:
ld	a,(iy+-1)
cp	.low.10
jp	nz,l130
ld	de,-1
add	iy,de
jp	l124
;P:CPP_NEW.C: 660: 		        if (p[-1] == '\\') for (;;) {
l130:
ld	a,(iy+-1)
cp	.low.92
jp	nz,l131
l132:
;P:CPP_NEW.C: 661: 		            if (*p++ == '\n') {++lineno[ifno]; break;}
ld	a,(iy+0)
inc	iy
cp	.low.10
jp	nz,l135
ld	de,_lineno
ld	hl,(_ifno)
add	hl,hl
add	hl,de
ld	c,(hl)
inc	hl
ld	b,(hl)
inc	bc
ld	(hl),b
dec	hl
ld	(hl),c
jp	l133
;P:CPP_NEW.C: 662: 		            if ( ((--p)>=pend)) p = refill(p);
l135:
ld	de,-1
add	iy,de
push	iy
pop	hl
ld	de,(_pend)
global	wrelop
call	wrelop
jp	llt,l136
push	iy
call	_refill
exx
ld	hl,2
add	hl,sp
ld	sp,hl
exx
ld	l,l
ld	h,h
push	hl
pop	iy
;P:CPP_NEW.C: 663: 		            else {++p; break;}
jp	l137
l136:
inc	iy
jp	l133
l137:
;P:CPP_NEW.C: 664: 		        } else if ( ((--p)>=pend)) p = refill(p);
l134:
jp	l132
l133:
jp	l138
l131:
ld	de,-1
add	iy,de
push	iy
pop	hl
ld	de,(_pend)
global	wrelop
call	wrelop
jp	llt,l139
push	iy
call	_refill
exx
ld	hl,2
add	hl,sp
ld	sp,hl
exx
ld	l,l
ld	h,h
push	hl
pop	iy
;P:CPP_NEW.C: 665: 			else ++p;
jp	l140
l139:
inc	iy
l140:
l138:
;P:CPP_NEW.C: 666: 		    }
l125:
jp	l123
l124:
;P:CPP_NEW.C: 667: 	        } break;
jp	l45
;P:CPP_NEW.C: 668: 	case '\n':
l141:
;P:CPP_NEW.C: 669: 		{
;P:CPP_NEW.C: 670: 		    ++lineno[ifno]; if (    (ptrtab==(slotab+128))) {state =  1; return (p);}
ld	de,_lineno
ld	hl,(_ifno)
add	hl,hl
add	hl,de
ld	c,(hl)
inc	hl
ld	b,(hl)
inc	bc
ld	(hl),b
dec	hl
ld	(hl),c
global	_slotab
ld	de,_slotab+128
ld	hl,(_ptrtab)
or	a
sbc	hl,de
jp	nz,l142
ld	hl,1
ld	(F484),hl
push	iy
pop	hl
jp	l35
;P:CPP_NEW.C: 671: prevlf:
l142:
l37:
;P:CPP_NEW.C: 672: 		    state = 0;
ld	hl,0
ld	(F484),hl
;P:CPP_NEW.C: 673: 		    for (;;) {
l143:
;P:CPP_NEW.C: 674: 			if (*p++ == '#') return (p);
ld	a,(iy+0)
inc	iy
cp	.low.35
jp	nz,l146
push	iy
pop	hl
jp	l35
;P:CPP_NEW.C: 675: 			if ( ((inptr = --p)>=pend)) p = refill(p);
l146:
ld	de,-1
add	iy,de
ld	(_inptr),iy
push	iy
pop	hl
ld	de,(_pend)
global	wrelop
call	wrelop
jp	llt,l147
push	iy
call	_refill
exx
ld	hl,2
add	hl,sp
ld	sp,hl
exx
ld	l,l
ld	h,h
push	hl
pop	iy
;P:CPP_NEW.C: 676: 			else goto again;
jp	l148
l147:
jp	l41
l148:
;P:CPP_NEW.C: 677: 		    }
l145:
jp	l143
l144:
;P:CPP_NEW.C: 678: 		}
;P:CPP_NEW.C: 680: 	case '0': case '1': case '2': case '3': case '4':
l149:
l150:
l151:
l152:
l153:
;P:CPP_NEW.C: 681: 	case '5': case '6': case '7': case '8': case '9':
l154:
l155:
l156:
l157:
l158:
;P:CPP_NEW.C: 682: 		for (;;) {
l159:
;P:CPP_NEW.C: 683: 		    while (  ((fastab+128)[(int)*p++]&  4));
jp	l162
l163:
l162:
ld	a,(iy+0)
inc	iy
ld	e,a
rla
sbc	a,a
ld	d,a
ld	hl,_fastab+128
add	hl,de
bit	2&7,(hl)
jp	nz,l163
l164:
;P:CPP_NEW.C: 684: 		    if ( ((--p)>=pend)) p = refill(p);
ld	de,-1
add	iy,de
push	iy
pop	hl
ld	de,(_pend)
global	wrelop
call	wrelop
jp	llt,l165
push	iy
call	_refill
exx
ld	hl,2
add	hl,sp
ld	sp,hl
exx
ld	l,l
ld	h,h
push	hl
pop	iy
;P:CPP_NEW.C: 685: 		    else break;
jp	l166
l165:
jp	l160
l166:
;P:CPP_NEW.C: 686: 		} break;
l161:
jp	l159
l160:
jp	l45
;P:CPP_NEW.C: 687: 	case 'A': case 'B': case 'C': case 'D': case 'E':
l167:
l168:
l169:
l170:
l171:
;P:CPP_NEW.C: 688: 	case 'F': case 'G': case 'H': case 'I': case 'J':
l172:
l173:
l174:
l175:
l176:
;P:CPP_NEW.C: 689: 	case 'K': case 'L': case 'M': case 'N': case 'O':
l177:
l178:
l179:
l180:
l181:
;P:CPP_NEW.C: 690: 	case 'P': case 'Q': case 'R': case 'S': case 'T':
l182:
l183:
l184:
l185:
l186:
;P:CPP_NEW.C: 691: 	case 'U': case 'V': case 'W': case 'X': case 'Y':
l187:
l188:
l189:
l190:
l191:
;P:CPP_NEW.C: 692: 	case 'Z': case '_':
l192:
l193:
;P:CPP_NEW.C: 693: 	case 'a': case 'b': case 'c': case 'd': case 'e':
l194:
l195:
l196:
l197:
l198:
;P:CPP_NEW.C: 694: 	case 'f': case 'g': case 'h': case 'i': case 'j':
l199:
l200:
l201:
l202:
l203:
;P:CPP_NEW.C: 695: 	case 'k': case 'l': case 'm': case 'n': case 'o':
l204:
l205:
l206:
l207:
l208:
;P:CPP_NEW.C: 696: 	case 'p': case 'q': case 'r': case 's': case 't':
l209:
l210:
l211:
l212:
l213:
;P:CPP_NEW.C: 697: 	case 'u': case 'v': case 'w': case 'x': case 'y':
l214:
l215:
l216:
l217:
l218:
;P:CPP_NEW.C: 698: 	case 'z':
l219:
;P:CPP_NEW.C: 717: 		if (flslvl) goto nomac;
ld	hl,(_flslvl)
ld	a,l
or	h
jp	z,l220
jp	l221
;P:CPP_NEW.C: 718: 		for (;;) {
l220:
l222:
;P:CPP_NEW.C: 719: 		    c= p[-1];                           if (! ((macbit+128)[c] & (  1))) goto nomac;
ld	a,(iy+-1)
ld	l,a
rla
sbc	a,a
ld	h,a
ld	(ix+-2),l
ld	(ix+1+-2),h
global	_macbit
ld	e,(ix+-2)
ld	d,(ix+1+-2)
ld	hl,_macbit+128
add	hl,de
bit	0&7,(hl)
jp	nz,l225
jp	l221
;P:CPP_NEW.C: 720: 		    i= *p++; if (!   ((fastab+128)[(int)i]&  1)) goto endid;  if (! ((macbit+128)[i] & (  2))) goto nomac; ;
l225:
ld	a,(iy+0)
ld	l,a
rla
sbc	a,a
ld	h,a
ld	(ix+-4),l
ld	(ix+1+-4),h
inc	iy
ld	e,(ix+-4)
ld	d,(ix+1+-4)
ld	hl,_fastab+128
add	hl,de
bit	0&7,(hl)
jp	nz,l226
jp	l227
l226:
ld	e,(ix+-4)
ld	d,(ix+1+-4)
ld	hl,_macbit+128
add	hl,de
bit	1&7,(hl)
jp	nz,l228
jp	l221
l228:
;P:CPP_NEW.C: 721: 		    c= *p++; if (!   ((fastab+128)[(int)c]&  1)) goto endid;  if (! ((macbit+128)[c] & (  4))) goto nomac; ;
ld	a,(iy+0)
ld	l,a
rla
sbc	a,a
ld	h,a
ld	(ix+-2),l
ld	(ix+1+-2),h
inc	iy
ld	e,(ix+-2)
ld	d,(ix+1+-2)
ld	hl,_fastab+128
add	hl,de
bit	0&7,(hl)
jp	nz,l229
jp	l227
l229:
ld	e,(ix+-2)
ld	d,(ix+1+-2)
ld	hl,_macbit+128
add	hl,de
bit	2&7,(hl)
jp	nz,l230
jp	l221
l230:
;P:CPP_NEW.C: 722: 		    i= *p++; if (!   ((fastab+128)[(int)i]&  1)) goto endid;  if (! ((macbit+128)[i] & (  8))) goto nomac; ;
ld	a,(iy+0)
ld	l,a
rla
sbc	a,a
ld	h,a
ld	(ix+-4),l
ld	(ix+1+-4),h
inc	iy
ld	e,(ix+-4)
ld	d,(ix+1+-4)
ld	hl,_fastab+128
add	hl,de
bit	0&7,(hl)
jp	nz,l231
jp	l227
l231:
ld	e,(ix+-4)
ld	d,(ix+1+-4)
ld	hl,_macbit+128
add	hl,de
bit	3&7,(hl)
jp	nz,l232
jp	l221
l232:
;P:CPP_NEW.C: 723: 		    c= *p++; if (!   ((fastab+128)[(int)c]&  1)) goto endid;  if (! ((macbit+128)[c] & ( 16))) goto nomac; ;
ld	a,(iy+0)
ld	l,a
rla
sbc	a,a
ld	h,a
ld	(ix+-2),l
ld	(ix+1+-2),h
inc	iy
ld	e,(ix+-2)
ld	d,(ix+1+-2)
ld	hl,_fastab+128
add	hl,de
bit	0&7,(hl)
jp	nz,l233
jp	l227
l233:
ld	e,(ix+-2)
ld	d,(ix+1+-2)
ld	hl,_macbit+128
add	hl,de
bit	4&7,(hl)
jp	nz,l234
jp	l221
l234:
;P:CPP_NEW.C: 724: 		    i= *p++; if (!   ((fastab+128)[(int)i]&  1)) goto endid;  if (! ((macbit+128)[i] & ( 32))) goto nomac; ;
ld	a,(iy+0)
ld	l,a
rla
sbc	a,a
ld	h,a
ld	(ix+-4),l
ld	(ix+1+-4),h
inc	iy
ld	e,(ix+-4)
ld	d,(ix+1+-4)
ld	hl,_fastab+128
add	hl,de
bit	0&7,(hl)
jp	nz,l235
jp	l227
l235:
ld	e,(ix+-4)
ld	d,(ix+1+-4)
ld	hl,_macbit+128
add	hl,de
bit	5&7,(hl)
jp	nz,l236
jp	l221
l236:
;P:CPP_NEW.C: 725: 		    c= *p++; if (!   ((fastab+128)[(int)c]&  1)) goto endid;  if (! ((macbit+128)[c] & ( 64))) goto nomac; ;
ld	a,(iy+0)
ld	l,a
rla
sbc	a,a
ld	h,a
ld	(ix+-2),l
ld	(ix+1+-2),h
inc	iy
ld	e,(ix+-2)
ld	d,(ix+1+-2)
ld	hl,_fastab+128
add	hl,de
bit	0&7,(hl)
jp	nz,l237
jp	l227
l237:
ld	e,(ix+-2)
ld	d,(ix+1+-2)
ld	hl,_macbit+128
add	hl,de
bit	6&7,(hl)
jp	nz,l238
jp	l221
l238:
;P:CPP_NEW.C: 726: 		    i= *p++; if (!   ((fastab+128)[(int)i]&  1)) goto endid;  if (! ((macbit+128)[i] & (128))) goto nomac; ;
ld	a,(iy+0)
ld	l,a
rla
sbc	a,a
ld	h,a
ld	(ix+-4),l
ld	(ix+1+-4),h
inc	iy
ld	e,(ix+-4)
ld	d,(ix+1+-4)
ld	hl,_fastab+128
add	hl,de
bit	0&7,(hl)
jp	nz,l239
jp	l227
l239:
ld	e,(ix+-4)
ld	d,(ix+1+-4)
ld	hl,_macbit+128
add	hl,de
ld	a,(hl)
ld	l,a
rla
sbc	a,a
ld	h,a
bit	7&7,l
jp	nz,l240
jp	l221
l240:
;P:CPP_NEW.C: 727: 		                                                    ;
;P:CPP_NEW.C: 728: 		    while (   ((fastab+128)[(int)*p++]&  1));
jp	l241
l242:
l241:
ld	a,(iy+0)
inc	iy
ld	e,a
rla
sbc	a,a
ld	d,a
ld	hl,_fastab+128
add	hl,de
bit	0&7,(hl)
jp	nz,l242
l243:
;P:CPP_NEW.C: 729: 		    if ( ((--p)>=pend)) {refill(p); p = inptr+1; continue;}
ld	de,-1
add	iy,de
push	iy
pop	hl
ld	de,(_pend)
global	wrelop
call	wrelop
jp	llt,l244
push	iy
call	_refill
ld	hl,2
add	hl,sp
ld	sp,hl
ld	hl,(_inptr)
inc	hl
push	hl
pop	iy
jp	l224
;P:CPP_NEW.C: 730: 		    goto lokid;
l244:
jp	l245
;P:CPP_NEW.C: 731: endid:
l227:
;P:CPP_NEW.C: 732: 		    if ( ((--p)>=pend)) {refill(p); p = inptr+1; continue;}
ld	de,-1
add	iy,de
push	iy
pop	hl
ld	de,(_pend)
global	wrelop
call	wrelop
jp	llt,l246
push	iy
call	_refill
ld	hl,2
add	hl,sp
ld	sp,hl
ld	hl,(_inptr)
inc	hl
push	hl
pop	iy
jp	l224
;P:CPP_NEW.C: 733: 		    ;
l246:
;P:CPP_NEW.C: 734: lokid:
l245:
;P:CPP_NEW.C: 735: 		    slookup(inptr,p,0); if (newp) {
global	_slookup
ld	hl,0
push	hl
push	iy
ld	hl,(_inptr)
push	hl
call	_slookup
ld	hl,2+2+2
add	hl,sp
ld	sp,hl
global	_newp
ld	hl,(_newp)
ld	a,l
or	h
jp	z,l247
;P:CPP_NEW.C: 736: 		        p = newp; goto again;
ld	iy,(_newp)
jp	l41
;P:CPP_NEW.C: 737: 		    }
;P:CPP_NEW.C: 738: 		    else break;
jp	l248
l247:
jp	l223
l248:
;P:CPP_NEW.C: 739: nomac:
l221:
;P:CPP_NEW.C: 740: 		    while (   ((fastab+128)[(int)*p++]&  1));
jp	l249
l250:
l249:
ld	a,(iy+0)
inc	iy
ld	e,a
rla
sbc	a,a
ld	d,a
ld	hl,_fastab+128
add	hl,de
bit	0&7,(hl)
jp	nz,l250
l251:
;P:CPP_NEW.C: 741: 		    if ( ((--p)>=pend)) {p = refill(p); goto nomac;}
ld	de,-1
add	iy,de
push	iy
pop	hl
ld	de,(_pend)
global	wrelop
call	wrelop
jp	llt,l252
push	iy
call	_refill
exx
ld	hl,2
add	hl,sp
ld	sp,hl
exx
ld	l,l
ld	h,h
push	hl
pop	iy
jp	l221
;P:CPP_NEW.C: 742: 		    else break;
jp	l253
l252:
jp	l223
l253:
;P:CPP_NEW.C: 743: 		} break;
l224:
jp	l222
l223:
jp	l45
;P:CPP_NEW.C: 744: 	    }
jp	l45
l46:
push	iy
pop	hl
dec	hl
ld	(_inptr),hl
ld	l,(hl)
ld	h,0
ld	a,0
cp	h
jp	c,l45
jp	nz,1f
ld	a,124
cp	l
jp	c,l45
1:add	hl,hl
ld	de,S204
add	hl,de
ld	a,(hl)
inc	hl
ld	h,(hl)
ld	l,a
jp	(hl)
psect	data
S204:
defw	l47
defw	l45
defw	l45
defw	l45
defw	l45
defw	l45
defw	l45
defw	l45
defw	l45
defw	l45
defw	l141
defw	l45
defw	l45
defw	l45
defw	l45
defw	l45
defw	l45
defw	l45
defw	l45
defw	l45
defw	l45
defw	l45
defw	l45
defw	l45
defw	l45
defw	l45
defw	l45
defw	l45
defw	l45
defw	l45
defw	l45
defw	l45
defw	l45
defw	l59
defw	l121
defw	l45
defw	l45
defw	l45
defw	l51
defw	l122
defw	l45
defw	l45
defw	l45
defw	l45
defw	l45
defw	l45
defw	l45
defw	l81
defw	l149
defw	l150
defw	l151
defw	l152
defw	l153
defw	l154
defw	l155
defw	l156
defw	l157
defw	l158
defw	l45
defw	l45
defw	l66
defw	l58
defw	l67
defw	l45
defw	l45
defw	l167
defw	l168
defw	l169
defw	l170
defw	l171
defw	l172
defw	l173
defw	l174
defw	l175
defw	l176
defw	l177
defw	l178
defw	l179
defw	l180
defw	l181
defw	l182
defw	l183
defw	l184
defw	l185
defw	l186
defw	l187
defw	l188
defw	l189
defw	l190
defw	l191
defw	l192
defw	l45
defw	l74
defw	l45
defw	l45
defw	l193
defw	l45
defw	l194
defw	l195
defw	l196
defw	l197
defw	l198
defw	l199
defw	l200
defw	l201
defw	l202
defw	l203
defw	l204
defw	l205
defw	l206
defw	l207
defw	l208
defw	l209
defw	l210
defw	l211
defw	l212
defw	l213
defw	l214
defw	l215
defw	l216
defw	l217
defw	l218
defw	l219
defw	l45
defw	l50
psect	text
l45:
;P:CPP_NEW.C: 745: 	    if (    (ptrtab==(slotab+128))) return (p);
ld	de,_slotab+128
ld	hl,(_ptrtab)
or	a
sbc	hl,de
jp	nz,l254
push	iy
pop	hl
jp	l35
;P:CPP_NEW.C: 746:     }
l254:
l40:
jp	l38
l39:
;P:CPP_NEW.C: 747: }
l35:
jp	cret
f202	equ	-7
;P:CPP_NEW.C: 752: char * skipbl(register char *p) {
global	_skipbl
_skipbl:
call	ncsv
defw	f205
ld	l,(ix+6)
ld	h,(ix+7)
push	hl
pop	iy
;P:CPP_NEW.C: 754:     do {outptr = inptr = p; p = cotoken(p);}
l258:
ld	(_inptr),iy
ld	(_outptr),iy
push	iy
call	_cotoken
exx
ld	hl,2
add	hl,sp
ld	sp,hl
exx
ld	l,l
ld	h,h
push	hl
pop	iy
l256:
;P:CPP_NEW.C: 755:     while ((toktyp+128)[(int)*inptr] == 1		);
global	_toktyp
ld	hl,(_inptr)
ld	a,(hl)
ld	e,a
rla
sbc	a,a
ld	d,a
ld	hl,_toktyp+128
add	hl,de
ld	a,(hl)
cp	.low.1
jp	z,l258
l257:
;P:CPP_NEW.C: 756:     return (p);
push	iy
pop	hl
jp	l255
;P:CPP_NEW.C: 757: }
l255:
jp	cret
f205	equ	0
;P:CPP_NEW.C: 765:  char * unfill(register char *p) {
global	_unfill
_unfill:
call	ncsv
defw	f206
ld	l,(ix+6)
ld	h,(ix+7)
push	hl
pop	iy
;P:CPP_NEW.C: 766:     char *np, *op; int d;
;P:CPP_NEW.C: 768:     if (mactop >=  14	) {
ld	de,14
ld	hl,(_mactop)
global	wrelop
call	wrelop
jp	alt,l260
;P:CPP_NEW.C: 769: 	pperror("%s: too much pushback", macnam);
ld	hl,(_macnam)
push	hl
ld	hl,59f
push	hl
call	_pperror
ld	hl,2+2
add	hl,sp
ld	sp,hl
;P:CPP_NEW.C: 770: 	p = inptr = pend; dump();
ld	hl,(_pend)
ld	(_inptr),hl
push	hl
pop	iy
call	_dump
ld	hl,0
add	hl,sp
ld	sp,hl
;P:CPP_NEW.C: 771: 	while (mactop > inctop[ifno]) {
jp	l261
l262:
;P:CPP_NEW.C: 772: 	    p = refill(p); p = inptr = pend; dump();
push	iy
call	_refill
exx
ld	hl,2
add	hl,sp
ld	sp,hl
exx
ld	l,l
ld	h,h
push	hl
pop	iy
ld	hl,(_pend)
ld	(_inptr),hl
push	hl
pop	iy
call	_dump
ld	hl,0
add	hl,sp
ld	sp,hl
;P:CPP_NEW.C: 773: 	}
l261:
ld	de,_inctop
ld	hl,(_ifno)
add	hl,hl
add	hl,de
ld	a,(hl)
inc	hl
ld	h,(hl)
ld	l,a
ld	de,(_mactop)
global	wrelop
call	wrelop
jp	alt,l262
l263:
;P:CPP_NEW.C: 774:     }
;P:CPP_NEW.C: 775:     if (fretop>0) np = bufstack[--fretop];
l260:
ld	de,(_fretop)
ld	hl,0
global	wrelop
call	wrelop
jp	age,l264
ld	de,_bufstack
ld	hl,(_fretop)
dec	hl
ld	(_fretop),hl
add	hl,hl
add	hl,de
ld	c,(hl)
inc	hl
ld	b,(hl)
ld	(ix+-2),c
ld	(ix+1+-2),b
;P:CPP_NEW.C: 776:     else {
jp	l265
l264:
;P:CPP_NEW.C: 777: 	np = savch;
global	_savch
ld	hl,(_savch)
ld	(ix+-2),l
ld	(ix+1+-2),h
;P:CPP_NEW.C: 778: 	savch += 512	;
ld	de,512
ld	hl,(_savch)
add	hl,de
ld	(_savch),hl
;P:CPP_NEW.C: 779: 	if (savch >= sbf+12000 ) {
global	_sbf
ld	de,(_sbf)
ld	hl,12000
add	hl,de
ex	de,hl
ld	hl,(_savch)
global	wrelop
call	wrelop
jp	llt,l266
;P:CPP_NEW.C: 780: 	    newsbf(); 
global	_newsbf
call	_newsbf
ld	hl,0
add	hl,sp
ld	sp,hl
;P:CPP_NEW.C: 781: 	    np = savch;
ld	hl,(_savch)
ld	(ix+-2),l
ld	(ix+1+-2),h
;P:CPP_NEW.C: 782: 	    savch += 512	;
ld	de,512
ld	hl,(_savch)
add	hl,de
ld	(_savch),hl
;P:CPP_NEW.C: 783: 	}
;P:CPP_NEW.C: 784: 	*savch++ = '\0';
l266:
ld	hl,(_savch)
inc	hl
ld	(_savch),hl
dec	hl
ld	(hl),0
;P:CPP_NEW.C: 785:     }
l265:
;P:CPP_NEW.C: 786:     instack[mactop] = np; op = pend-512	;
ld	de,_instack
ld	hl,(_mactop)
add	hl,hl
add	hl,de
ld	e,(ix+-2)
ld	d,(ix+1+-2)
ld	(hl),e
inc	hl
ld	(hl),d
ld	de,(_pend)
ld	hl,-512
add	hl,de
ld	(ix+-4),l
ld	(ix+1+-4),h
;P:CPP_NEW.C: 787:     if (op < p) op = p;
push	iy
pop	de
ld	l,(ix+-4)
ld	h,(ix+1+-4)
global	wrelop
call	wrelop
jp	lge,l267
push	iy
pop	hl
ld	(ix+-4),l
ld	(ix+1+-4),h
;P:CPP_NEW.C: 788:     for (;;) {
l267:
l268:
;P:CPP_NEW.C: 789: 	while ((*np++ = *op++) != '\0')
jp	l271
l272:
;P:CPP_NEW.C: 790: 	    ;
l271:
ld	l,(ix+-4)
ld	h,(ix+1+-4)
ld	a,(hl)
inc	hl
ld	(ix+-4),l
ld	(ix+1+-4),h
ld	l,(ix+-2)
ld	h,(ix+1+-2)
inc	hl
ld	(ix+-2),l
ld	(ix+1+-2),h
dec	hl
ld	(hl),a
or	a
jp	anz,l272
l273:
;P:CPP_NEW.C: 791: 	if ( ((op)>=pend)) break;
ld	de,(_pend)
ld	l,(ix+-4)
ld	h,(ix+1+-4)
global	wrelop
call	wrelop
jp	llt,l274
jp	l269
;P:CPP_NEW.C: 792:     }
l274:
l270:
jp	l268
l269:
;P:CPP_NEW.C: 793:     endbuf[mactop++] = np;
ld	de,_endbuf
ld	hl,(_mactop)
inc	hl
ld	(_mactop),hl
dec	hl
add	hl,hl
add	hl,de
ld	e,(ix+-2)
ld	d,(ix+1+-2)
ld	(hl),e
inc	hl
ld	(hl),d
;P:CPP_NEW.C: 794:     np = pbuf+512	; op = pend-512	;
ld	de,(_pbuf)
ld	hl,512
add	hl,de
ld	(ix+-2),l
ld	(ix+1+-2),h
ld	de,(_pend)
ld	hl,-512
add	hl,de
ld	(ix+-4),l
ld	(ix+1+-4),h
;P:CPP_NEW.C: 795:     pend = np; if (op < p) op = p;
ld	l,(ix+-2)
ld	h,(ix+1+-2)
ld	(_pend),hl
push	iy
pop	de
ld	l,(ix+-4)
ld	h,(ix+1+-4)
global	wrelop
call	wrelop
jp	lge,l275
push	iy
pop	hl
ld	(ix+-4),l
ld	(ix+1+-4),h
;P:CPP_NEW.C: 796:     while (outptr < op) *--np = *--op;
l275:
jp	l276
l277:
ld	l,(ix+-4)
ld	h,(ix+1+-4)
dec	hl
ld	(ix+-4),l
ld	(ix+1+-4),h
ld	a,(hl)
ld	l,(ix+-2)
ld	h,(ix+1+-2)
dec	hl
ld	(ix+-2),l
ld	(ix+1+-2),h
ld	(hl),a
l276:
ld	e,(ix+-4)
ld	d,(ix+1+-4)
ld	hl,(_outptr)
global	wrelop
call	wrelop
jp	llt,l277
l278:
;P:CPP_NEW.C: 797:     if ( (pbeg>=(np))) pperror("token too long");
ld	e,(ix+-2)
ld	d,(ix+1+-2)
ld	hl,(_pbeg)
global	wrelop
call	wrelop
jp	llt,l279
ld	hl,69f
push	hl
call	_pperror
ld	hl,2
add	hl,sp
ld	sp,hl
;P:CPP_NEW.C: 798:     d = np - outptr; outptr += d; inptr += d;
l279:
ld	de,(_outptr)
ld	l,(ix+-2)
ld	h,(ix+1+-2)
or	a
sbc	hl,de
ld	(ix+-6),l
ld	(ix+1+-6),h
ld	e,(ix+-6)
ld	d,(ix+1+-6)
ld	hl,(_outptr)
add	hl,de
ld	(_outptr),hl
ld	e,(ix+-6)
ld	d,(ix+1+-6)
ld	hl,(_inptr)
add	hl,de
ld	(_inptr),hl
;P:CPP_NEW.C: 799:     macdam += d; return (p+d);
ld	e,(ix+-6)
ld	d,(ix+1+-6)
ld	hl,(_macdam)
add	hl,de
ld	(_macdam),hl
push	iy
pop	de
ld	l,(ix+-6)
ld	h,(ix+1+-6)
add	hl,de
jp	l259
;P:CPP_NEW.C: 800: }
l259:
jp	cret
f206	equ	-6
;P:CPP_NEW.C: 805:  char * doincl(register char *p) {
global	_doincl
_doincl:
call	ncsv
defw	f207
ld	l,(ix+6)
ld	h,(ix+7)
push	hl
pop	iy
;P:CPP_NEW.C: 806:     int filok, inctype;
;P:CPP_NEW.C: 807:     char *cp; char **dirp, *nfil; char filname[512	];
;P:CPP_NEW.C: 809:     filname[0] = '\0';
push	ix
pop	de
ld	hl,-522
add	hl,de
ld	(hl),0
;P:CPP_NEW.C: 810:     p = skipbl(p); cp = filname;
push	iy
call	_skipbl
exx
ld	hl,2
add	hl,sp
ld	sp,hl
exx
ld	l,l
ld	h,h
push	hl
pop	iy
push	ix
pop	de
ld	hl,-522
add	hl,de
ld	(ix+-6),l
ld	(ix+1+-6),h
;P:CPP_NEW.C: 811:     if (*inptr++ == '<') {
ld	hl,(_inptr)
ld	a,(hl)
inc	hl
ld	(_inptr),hl
cp	.low.60
jp	nz,l281
;P:CPP_NEW.C: 812: 	inctype = 1;
ld	(ix+-4),.low.1
ld	(ix+1+-4),.high.1
;P:CPP_NEW.C: 813: 	for (;;) {
l282:
;P:CPP_NEW.C: 814: 	    outptr = inptr = p; p = cotoken(p);
ld	(_inptr),iy
ld	(_outptr),iy
push	iy
call	_cotoken
exx
ld	hl,2
add	hl,sp
ld	sp,hl
exx
ld	l,l
ld	h,h
push	hl
pop	iy
;P:CPP_NEW.C: 815: 	    if (*inptr == '\n') {--p; *cp = '\0'; break;}
ld	hl,(_inptr)
ld	a,(hl)
cp	.low.10
jp	nz,l285
ld	de,-1
add	iy,de
ld	l,(ix+-6)
ld	h,(ix+1+-6)
ld	(hl),0
jp	l283
;P:CPP_NEW.C: 816: 	    if (*inptr == '>')  {     *cp = '\0'; break;}
l285:
ld	hl,(_inptr)
ld	a,(hl)
cp	.low.62
jp	nz,l286
ld	l,(ix+-6)
ld	h,(ix+1+-6)
ld	(hl),0
jp	l283
;P:CPP_NEW.C: 817: 	    while (inptr < p) *cp++ = *inptr++;
l286:
jp	l287
l288:
ld	hl,(_inptr)
ld	a,(hl)
inc	hl
ld	(_inptr),hl
ld	l,(ix+-6)
ld	h,(ix+1+-6)
inc	hl
ld	(ix+-6),l
ld	(ix+1+-6),h
dec	hl
ld	(hl),a
l287:
push	iy
pop	de
ld	hl,(_inptr)
global	wrelop
call	wrelop
jp	llt,l288
l289:
;P:CPP_NEW.C: 818: 	}
l284:
jp	l282
l283:
;P:CPP_NEW.C: 819:     } else if (inptr[-1] == '"') {
jp	l290
l281:
ld	hl,(_inptr)
dec	hl
ld	a,(hl)
cp	.low.34
jp	nz,l291
;P:CPP_NEW.C: 820: 	inctype = 0;
ld	(ix+-4),.low.0
ld	(ix+1+-4),.high.0
;P:CPP_NEW.C: 821: 	while (inptr<p) *cp++ = *inptr++;
jp	l292
l293:
ld	hl,(_inptr)
ld	a,(hl)
inc	hl
ld	(_inptr),hl
ld	l,(ix+-6)
ld	h,(ix+1+-6)
inc	hl
ld	(ix+-6),l
ld	(ix+1+-6),h
dec	hl
ld	(hl),a
l292:
push	iy
pop	de
ld	hl,(_inptr)
global	wrelop
call	wrelop
jp	llt,l293
l294:
;P:CPP_NEW.C: 822: 	if (*--cp == '"') *cp = '\0';
ld	l,(ix+-6)
ld	h,(ix+1+-6)
dec	hl
ld	(ix+-6),l
ld	(ix+1+-6),h
ld	a,(hl)
cp	.low.34
jp	nz,l295
ld	l,(ix+-6)
ld	h,(ix+1+-6)
ld	(hl),0
;P:CPP_NEW.C: 823:     } else {pperror("bad include syntax", 0); inctype = 2;}
l295:
jp	l296
l291:
ld	hl,0
push	hl
ld	hl,79f
push	hl
call	_pperror
ld	hl,2+2
add	hl,sp
ld	sp,hl
ld	(ix+-4),.low.2
ld	(ix+1+-4),.high.2
l296:
l290:
;P:CPP_NEW.C: 825:     ++flslvl; do {outptr = inptr = p; p = cotoken(p);}
ld	hl,(_flslvl)
inc	hl
ld	(_flslvl),hl
l299:
ld	(_inptr),iy
ld	(_outptr),iy
push	iy
call	_cotoken
exx
ld	hl,2
add	hl,sp
ld	sp,hl
exx
ld	l,l
ld	h,h
push	hl
pop	iy
l297:
;P:CPP_NEW.C: 826:     while (*inptr != '\n'); --flslvl;
ld	hl,(_inptr)
ld	a,(hl)
cp	.low.10
jp	nz,l299
l298:
ld	hl,(_flslvl)
dec	hl
ld	(_flslvl),hl
;P:CPP_NEW.C: 827:     inptr = p; dump(); if (inctype == 2) return (p);
ld	(_inptr),iy
call	_dump
ld	hl,0
add	hl,sp
ld	sp,hl
ld	de,2
ld	l,(ix+-4)
ld	h,(ix+1+-4)
or	a
sbc	hl,de
jp	nz,l300
push	iy
pop	hl
jp	l280
;P:CPP_NEW.C: 829:     if (ifno+1 >=  16	) {
l300:
ld	de,16
ld	hl,(_ifno)
inc	hl
global	wrelop
call	wrelop
jp	alt,l301
;P:CPP_NEW.C: 830: 	pperror("Unreasonable include nesting",0);
ld	hl,0
push	hl
ld	hl,89f
push	hl
call	_pperror
ld	hl,2+2
add	hl,sp
ld	sp,hl
;P:CPP_NEW.C: 831: 	return(p);
push	iy
pop	hl
jp	l280
;P:CPP_NEW.C: 832:     }
;P:CPP_NEW.C: 833:     if ((nfil = savch) > sbf+12000 -512	) {
l301:
ld	de,(_sbf)
ld	hl,11488
add	hl,de
ld	de,(_savch)
ld	(ix+-10),e
ld	(ix+1+-10),d
global	wrelop
call	wrelop
jp	lge,l302
;P:CPP_NEW.C: 834: 	newsbf();
call	_newsbf
ld	hl,0
add	hl,sp
ld	sp,hl
;P:CPP_NEW.C: 835: 	nfil = savch;
ld	hl,(_savch)
ld	(ix+-10),l
ld	(ix+1+-10),h
;P:CPP_NEW.C: 836:     }
;P:CPP_NEW.C: 837:     filok = 0;
l302:
ld	(ix+-2),.low.0
ld	(ix+1+-2),.high.0
;P:CPP_NEW.C: 838:     for (dirp = dirs+inctype; *dirp; ++dirp) {
ld	de,_dirs
ld	l,(ix+-4)
ld	h,(ix+1+-4)
add	hl,hl
add	hl,de
ld	(ix+-8),l
ld	(ix+1+-8),h
jp	l306
l303:
;P:CPP_NEW.C: 839: 	if (filname[0] == '/' || **dirp=='\0') strcpy(nfil, filname);
push	ix
pop	de
ld	hl,-522
add	hl,de
ld	a,(hl)
cp	.low.47
jp	nz,20f
jp	21f
20:
ld	l,(ix+-8)
ld	h,(ix+1+-8)
ld	a,(hl)
inc	hl
ld	h,(hl)
ld	l,a
ld	a,(hl)
or	a
jp	anz,20f
jp	21f
21:jp	11f
20:jp	10f
10:
jp	l307
11:
global	_strcpy
push	ix
pop	de
ld	hl,-522
add	hl,de
push	hl
ld	l,(ix+-10)
ld	h,(ix+1+-10)
push	hl
call	_strcpy
ld	hl,2+2
add	hl,sp
ld	sp,hl
;P:CPP_NEW.C: 840: 	else {
jp	l308
l307:
;P:CPP_NEW.C: 841: 	    strcpy(nfil, *dirp);
ld	l,(ix+-8)
ld	h,(ix+1+-8)
ld	c,(hl)
inc	hl
ld	b,(hl)
push	bc
ld	l,(ix+-10)
ld	h,(ix+1+-10)
push	hl
call	_strcpy
ld	hl,2+2
add	hl,sp
ld	sp,hl
;P:CPP_NEW.C: 845: 	    strcat(nfil, filname);
global	_strcat
push	ix
pop	de
ld	hl,-522
add	hl,de
push	hl
ld	l,(ix+-10)
ld	h,(ix+1+-10)
push	hl
call	_strcat
ld	hl,2+2
add	hl,sp
ld	sp,hl
;P:CPP_NEW.C: 846: 	}
l308:
;P:CPP_NEW.C: 848:         if((fins[ifno+1] = open1(nfil, "r")) != 0) {
global	_open1
ld	hl,99f
push	hl
ld	l,(ix+-10)
ld	h,(ix+1+-10)
push	hl
call	_open1
exx
ld	hl,2+2
add	hl,sp
ld	sp,hl
exx
ld	e,l
ld	d,h
push	de
ld	de,_fins
ld	hl,(_ifno)
inc	hl
add	hl,hl
add	hl,de
pop	de
ld	(hl),e
inc	hl
ld	(hl),d
ld	a,e
or	d
jp	z,l309
;P:CPP_NEW.C: 852: 	    filok = 1; fin = fins[++ifno]; break;
ld	(ix+-2),.low.1
ld	(ix+1+-2),.high.1
ld	de,_fins
ld	hl,(_ifno)
inc	hl
ld	(_ifno),hl
add	hl,hl
add	hl,de
ld	c,(hl)
inc	hl
ld	b,(hl)
ld	(_fin),bc
jp	l304
;P:CPP_NEW.C: 853: 	}
;P:CPP_NEW.C: 854:     }
l309:
l305:
ld	l,(ix+-8)
ld	h,(ix+1+-8)
inc	hl
inc hl
ld	(ix+-8),l
ld	(ix+1+-8),h
l306:
ld	l,(ix+-8)
ld	h,(ix+1+-8)
ld	a,(hl)
inc	hl
or	(hl)
jp	nz,l303
l304:
;P:CPP_NEW.C: 855:     if (filok == 0) {
ld	a,(ix+-2)
or	(ix+1+-2)
jp	nz,l310
;P:CPP_NEW.C: 856: 	pperror("Can't find include file %s", filname);
push	ix
pop	de
ld	hl,-522
add	hl,de
push	hl
ld	hl,109f
push	hl
call	_pperror
ld	hl,2+2
add	hl,sp
ld	sp,hl
;P:CPP_NEW.C: 857:     } else {
jp	l311
l310:
;P:CPP_NEW.C: 858: 	lineno[ifno] = 1;
ld	de,_lineno
ld	hl,(_ifno)
add	hl,hl
add	hl,de
ld	de,1
ld	(hl),e
inc	hl
ld	(hl),d
;P:CPP_NEW.C: 859: 	fnames[ifno] = cp = nfil;
ld	de,_fnames
ld	hl,(_ifno)
add	hl,hl
add	hl,de
ld	e,(ix+-10)
ld	d,(ix+1+-10)
ld	(ix+-6),e
ld	(ix+1+-6),d
ld	(hl),e
inc	hl
ld	(hl),d
;P:CPP_NEW.C: 860: 	while (*cp++)
jp	l312
l313:
;P:CPP_NEW.C: 861: 	    ;
l312:
ld	l,(ix+-6)
ld	h,(ix+1+-6)
ld	a,(hl)
inc	hl
ld	(ix+-6),l
ld	(ix+1+-6),h
or	a
jp	anz,l313
l314:
;P:CPP_NEW.C: 862: 	savch = cp;
ld	l,(ix+-6)
ld	h,(ix+1+-6)
ld	(_savch),hl
;P:CPP_NEW.C: 863: 	dirnams[ifno] = dirs[0] = trmdir(copy(nfil));
global	_trmdir
global	_copy
ld	l,(ix+-10)
ld	h,(ix+1+-10)
push	hl
call	_copy
exx
ld	hl,2
add	hl,sp
ld	sp,hl
exx
ld	l,l
ld	h,h
push	hl
call	_trmdir
exx
ld	hl,2
add	hl,sp
ld	sp,hl
exx
ld	e,l
ld	d,h
ld	(_dirs),de
push	de
ld	de,_dirnams
ld	hl,(_ifno)
add	hl,hl
add	hl,de
pop	de
ld	(hl),e
inc	hl
ld	(hl),d
;P:CPP_NEW.C: 864: 	sayline("1"	);
ld	hl,119f
push	hl
call	_sayline
ld	hl,2
add	hl,sp
ld	sp,hl
;P:CPP_NEW.C: 865: 	if (hflag)
global	_hflag
ld	hl,(_hflag)
ld	a,l
or	h
jp	z,l315
;P:CPP_NEW.C: 866: 	    fprintf(	(&_iob[2]), "%s\n", nfil);
ld	l,(ix+-10)
ld	h,(ix+1+-10)
push	hl
ld	hl,129f
push	hl
ld	hl,__iob+18
push	hl
call	_fprintf
ld	hl,2+2+2
add	hl,sp
ld	sp,hl
;P:CPP_NEW.C: 874: 	while (! ((p)>=pend)) p = unfill(p);
l315:
jp	l316
l317:
push	iy
call	_unfill
exx
ld	hl,2
add	hl,sp
ld	sp,hl
exx
ld	l,l
ld	h,h
push	hl
pop	iy
l316:
ld	de,(_pend)
push	iy
pop	hl
global	wrelop
call	wrelop
jp	llt,l317
l318:
;P:CPP_NEW.C: 875: 	inctop[ifno] = mactop;
ld	de,_inctop
ld	hl,(_ifno)
add	hl,hl
add	hl,de
ld	de,(_mactop)
ld	(hl),e
inc	hl
ld	(hl),d
;P:CPP_NEW.C: 876:     }
l311:
;P:CPP_NEW.C: 877:     return (p);
push	iy
pop	hl
jp	l280
;P:CPP_NEW.C: 878: }
l280:
jp	cret
f207	equ	-522
;P:CPP_NEW.C: 883:  int equfrm(register char *a, char *p1, char *p2) {
global	_equfrm
_equfrm:
call	ncsv
defw	f208
ld	l,(ix+6)
ld	h,(ix+7)
push	hl
pop	iy
;P:CPP_NEW.C: 884:     char c; int flag;
;P:CPP_NEW.C: 886:     c = *p2; *p2 = '\0';
ld	l,(ix+10)
ld	h,(ix+1+10)
ld	l,(hl)
ld	(ix+-1),l
ld	l,(ix+10)
ld	h,(ix+1+10)
ld	(hl),0
;P:CPP_NEW.C: 887:     flag = strcmp(a, p1); *p2 = c; return (flag ==     0);
global	_strcmp
ld	l,(ix+8)
ld	h,(ix+1+8)
push	hl
push	iy
call	_strcmp
exx
ld	hl,2+2
add	hl,sp
ld	sp,hl
exx
ld	l,l
ld	h,h
ld	(ix+-3),l
ld	(ix+1+-3),h
ld	a,(ix+-1)
ld	l,(ix+10)
ld	h,(ix+1+10)
ld	(hl),a
ld	a,(ix+-3)
or	(ix+1+-3)
ld	hl,1
jp	z,10f
dec	hl
10:
jp	l319
;P:CPP_NEW.C: 888: }
l319:
jp	cret
f208	equ	-3
;P:CPP_NEW.C: 893:  char * dodef(char *p) {
global	_dodef
_dodef:
call	ncsv
defw	f209
;P:CPP_NEW.C: 894:     register char *pin, *psav, *cf;
;P:CPP_NEW.C: 895:     char quoc;
;P:CPP_NEW.C: 896:     char **pf, **qf; int b, c, params; struct symtab *np;
;P:CPP_NEW.C: 897:     char *oldval, *oldsavch;
;P:CPP_NEW.C: 898:     char *formal[ 31	];
;P:CPP_NEW.C: 899:     char formtxt[512	];
;P:CPP_NEW.C: 901:     formtxt[0] = '\0';
push	ix
pop	de
ld	hl,-595
add	hl,de
ld	(hl),0
;P:CPP_NEW.C: 903:     if (savch > sbf+12000 -512	) {
ld	de,(_sbf)
ld	hl,11488
add	hl,de
ld	de,(_savch)
global	wrelop
call	wrelop
jp	lge,l321
;P:CPP_NEW.C: 904: 	newsbf();
call	_newsbf
ld	hl,0
add	hl,sp
ld	sp,hl
;P:CPP_NEW.C: 905:     }
;P:CPP_NEW.C: 906:     oldsavch = savch;
l321:
ld	hl,(_savch)
ld	(ix+-21),l
ld	(ix+1+-21),h
;P:CPP_NEW.C: 907:     ++flslvl;
ld	hl,(_flslvl)
inc	hl
ld	(_flslvl),hl
;P:CPP_NEW.C: 908:     p = skipbl(p); pin = inptr;
ld	l,(ix+6)
ld	h,(ix+1+6)
push	hl
call	_skipbl
exx
ld	hl,2
add	hl,sp
ld	sp,hl
exx
ld	l,l
ld	h,h
ld	(ix+6),l
ld	(ix+1+6),h
ld	iy,(_inptr)
;P:CPP_NEW.C: 909:     if ((toktyp+128)[(int)*pin] != 2		) {
ld	a,(iy+0)
ld	e,a
rla
sbc	a,a
ld	d,a
ld	hl,_toktyp+128
add	hl,de
ld	a,(hl)
cp	.low.2
jp	z,l322
;P:CPP_NEW.C: 910: 	ppwarn("illegal macro name");
global	_ppwarn
ld	hl,139f
push	hl
call	_ppwarn
ld	hl,2
add	hl,sp
ld	sp,hl
;P:CPP_NEW.C: 911: 	while (*inptr != '\n') p = skipbl(p); return (p);
jp	l323
l324:
ld	l,(ix+6)
ld	h,(ix+1+6)
push	hl
call	_skipbl
exx
ld	hl,2
add	hl,sp
ld	sp,hl
exx
ld	l,l
ld	h,h
ld	(ix+6),l
ld	(ix+1+6),h
l323:
ld	hl,(_inptr)
ld	a,(hl)
cp	.low.10
jp	nz,l324
l325:
ld	l,(ix+6)
ld	h,(ix+1+6)
jp	l320
;P:CPP_NEW.C: 912:     }
;P:CPP_NEW.C: 913:     np = slookup(pin, p, 1);
l322:
ld	hl,1
push	hl
ld	l,(ix+6)
ld	h,(ix+1+6)
push	hl
push	iy
call	_slookup
exx
ld	hl,2+2+2
add	hl,sp
ld	sp,hl
exx
ld	l,l
ld	h,h
ld	(ix+-17),l
ld	(ix+1+-17),h
;P:CPP_NEW.C: 914:     if ((oldval = np->value) != ((void *)0)) savch = oldsavch;
ld	l,(ix+-17)
ld	h,(ix+1+-17)
inc	hl
inc hl
ld	c,(hl)
inc	hl
ld	b,(hl)
ld	(ix+-19),c
ld	(ix+1+-19),b
ld	a,c
or	b
jp	z,l326
ld	l,(ix+-21)
ld	h,(ix+1+-21)
ld	(_savch),hl
;P:CPP_NEW.C: 915:     b = 1; cf = pin;
l326:
ld	(ix+-11),.low.1
ld	(ix+1+-11),.high.1
push	iy
pop	hl
ld	(ix+-4),l
ld	(ix+1+-4),h
;P:CPP_NEW.C: 916:     while (cf < p) {
jp	l327
l328:
;P:CPP_NEW.C: 917: 	c = *cf++;  ((macbit+128)[c] |= (b)); b = (b+b)&0xFF;
ld	l,(ix+-4)
ld	h,(ix+1+-4)
ld	a,(hl)
inc	hl
ld	(ix+-4),l
ld	(ix+1+-4),h
ld	l,a
rla
sbc	a,a
ld	h,a
ld	(ix+-13),l
ld	(ix+1+-13),h
ld	e,(ix+-13)
ld	d,(ix+1+-13)
ld	hl,_macbit+128
add	hl,de
ld	a,(hl)
or	(ix+-11)
ld	(hl),a
ld	e,(ix+-11)
ld	d,(ix+1+-11)
ld	l,(ix+-11)
ld	h,(ix+1+-11)
add	hl,de
ld	a,l
and	.low.255
ld	l,a
ld	a,h
and	.low.0
ld	h,a
ld	(ix+-11),l
ld	(ix+1+-11),h
;P:CPP_NEW.C: 918: 	if (cf != p) {
ld	e,(ix+6)
ld	d,(ix+1+6)
ld	l,(ix+-4)
ld	h,(ix+1+-4)
or	a
sbc	hl,de
jp	z,l330
;P:CPP_NEW.C: 919: 	    ;
;P:CPP_NEW.C: 920: 	} else {
jp	l331
l330:
;P:CPP_NEW.C: 921: 	    ;
;P:CPP_NEW.C: 922: 	}
l331:
;P:CPP_NEW.C: 923:     }
l327:
ld	e,(ix+6)
ld	d,(ix+1+6)
ld	l,(ix+-4)
ld	h,(ix+1+-4)
global	wrelop
call	wrelop
jp	llt,l328
l329:
;P:CPP_NEW.C: 924:     params = 0; outptr = inptr = p;
ld	(ix+-15),.low.0
ld	(ix+1+-15),.high.0
ld	l,(ix+6)
ld	h,(ix+1+6)
ld	(_inptr),hl
ld	(_outptr),hl
;P:CPP_NEW.C: 925:     p = cotoken(p); pin = inptr;
ld	l,(ix+6)
ld	h,(ix+1+6)
push	hl
call	_cotoken
exx
ld	hl,2
add	hl,sp
ld	sp,hl
exx
ld	l,l
ld	h,h
ld	(ix+6),l
ld	(ix+1+6),h
ld	iy,(_inptr)
;P:CPP_NEW.C: 926:     formal[0] = "";
ld	hl,149f
ld	(ix+-83),l
ld	(ix+1+-83),h
;P:CPP_NEW.C: 927:     pf = formal;
push	ix
pop	de
ld	hl,-83
add	hl,de
ld	(ix+-7),l
ld	(ix+1+-7),h
;P:CPP_NEW.C: 928:     if (*pin == '(') {
ld	a,(iy+0)
cp	.low.40
jp	nz,l332
;P:CPP_NEW.C: 929: 	cf = formtxt; pf = formal;
push	ix
pop	de
ld	hl,-595
add	hl,de
ld	(ix+-4),l
ld	(ix+1+-4),h
push	ix
pop	de
ld	hl,-83
add	hl,de
ld	(ix+-7),l
ld	(ix+1+-7),h
;P:CPP_NEW.C: 930: 	for (;;) {
l333:
;P:CPP_NEW.C: 931: 	    p = skipbl(p); pin = inptr;
ld	l,(ix+6)
ld	h,(ix+1+6)
push	hl
call	_skipbl
exx
ld	hl,2
add	hl,sp
ld	sp,hl
exx
ld	l,l
ld	h,h
ld	(ix+6),l
ld	(ix+1+6),h
ld	iy,(_inptr)
;P:CPP_NEW.C: 932: 	    if (*pin == '\n') {
ld	a,(iy+0)
cp	.low.10
jp	nz,l336
;P:CPP_NEW.C: 933: 		--lineno[ifno]; --p;
ld	de,_lineno
ld	hl,(_ifno)
add	hl,hl
add	hl,de
ld	c,(hl)
inc	hl
ld	b,(hl)
dec	bc
ld	(hl),b
dec	hl
ld	(hl),c
ld	l,(ix+6)
ld	h,(ix+1+6)
dec	hl
ld	(ix+6),l
ld	(ix+1+6),h
;P:CPP_NEW.C: 934: 		pperror("%s: missing )", np->name); break;
ld	l,(ix+-17)
ld	h,(ix+1+-17)
ld	c,(hl)
inc	hl
ld	b,(hl)
push	bc
ld	hl,159f
push	hl
call	_pperror
ld	hl,2+2
add	hl,sp
ld	sp,hl
jp	l334
;P:CPP_NEW.C: 935: 	    }
;P:CPP_NEW.C: 936: 	    if (*pin == ')') break;
l336:
ld	a,(iy+0)
cp	.low.41
jp	nz,l337
jp	l334
;P:CPP_NEW.C: 937: 	    if (*pin == ',') continue;
l337:
ld	a,(iy+0)
cp	.low.44
jp	nz,l338
jp	l335
;P:CPP_NEW.C: 938: 	    if ((toktyp+128)[(int)*pin] != 2		) {
l338:
ld	a,(iy+0)
ld	e,a
rla
sbc	a,a
ld	d,a
ld	hl,_toktyp+128
add	hl,de
ld	a,(hl)
cp	.low.2
jp	z,l339
;P:CPP_NEW.C: 939: 		c = *p; *p = '\0';
ld	l,(ix+6)
ld	h,(ix+1+6)
ld	a,(hl)
ld	l,a
rla
sbc	a,a
ld	h,a
ld	(ix+-13),l
ld	(ix+1+-13),h
ld	l,(ix+6)
ld	h,(ix+1+6)
ld	(hl),0
;P:CPP_NEW.C: 940: 		pperror("bad formal: %s", pin); *p = c;
push	iy
ld	hl,169f
push	hl
call	_pperror
ld	hl,2+2
add	hl,sp
ld	sp,hl
ld	a,(ix+-13)
ld	l,(ix+6)
ld	h,(ix+1+6)
ld	(hl),a
;P:CPP_NEW.C: 941: 	    } else if (pf >= &formal[ 31	]) {
jp	l340
l339:
push	ix
pop	de
ld	hl,-21
add	hl,de
ex	de,hl
ld	l,(ix+-7)
ld	h,(ix+1+-7)
global	wrelop
call	wrelop
jp	llt,l341
;P:CPP_NEW.C: 942: 		c = *p; *p = '\0';
ld	l,(ix+6)
ld	h,(ix+1+6)
ld	a,(hl)
ld	l,a
rla
sbc	a,a
ld	h,a
ld	(ix+-13),l
ld	(ix+1+-13),h
ld	l,(ix+6)
ld	h,(ix+1+6)
ld	(hl),0
;P:CPP_NEW.C: 943: 		pperror("too many formals: %s", pin); *p = c;
push	iy
ld	hl,179f
push	hl
call	_pperror
ld	hl,2+2
add	hl,sp
ld	sp,hl
ld	a,(ix+-13)
ld	l,(ix+6)
ld	h,(ix+1+6)
ld	(hl),a
;P:CPP_NEW.C: 944: 	    } else {
jp	l342
l341:
;P:CPP_NEW.C: 945: 		*pf++ = cf; while (pin < p) *cf++ = *pin++;
ld	e,(ix+-4)
ld	d,(ix+1+-4)
ld	l,(ix+-7)
ld	h,(ix+1+-7)
inc	hl
inc hl
ld	(ix+-7),l
ld	(ix+1+-7),h
dec	hl
dec hl
ld	(hl),e
inc	hl
ld	(hl),d
jp	l343
l344:
ld	a,(iy+0)
ld	l,(ix+-4)
ld	h,(ix+1+-4)
inc	hl
ld	(ix+-4),l
ld	(ix+1+-4),h
dec	hl
ld	(hl),a
inc	iy
l343:
ld	e,(ix+6)
ld	d,(ix+1+6)
push	iy
pop	hl
global	wrelop
call	wrelop
jp	llt,l344
l345:
;P:CPP_NEW.C: 946: 		*cf++ = '\0'; ++params;
ld	l,(ix+-4)
ld	h,(ix+1+-4)
inc	hl
ld	(ix+-4),l
ld	(ix+1+-4),h
dec	hl
ld	(hl),0
ld	l,(ix+-15)
ld	h,(ix+1+-15)
inc	hl
ld	(ix+-15),l
ld	(ix+1+-15),h
;P:CPP_NEW.C: 947: 	    }
l342:
l340:
;P:CPP_NEW.C: 948: 	}
l335:
jp	l333
l334:
;P:CPP_NEW.C: 949: 	if (params == 0) --params;
ld	a,(ix+-15)
or	(ix+1+-15)
jp	nz,l346
ld	l,(ix+-15)
ld	h,(ix+1+-15)
dec	hl
ld	(ix+-15),l
ld	(ix+1+-15),h
;P:CPP_NEW.C: 950:     } else if (*pin == '\n') {--lineno[ifno]; --p;}
l346:
jp	l347
l332:
ld	a,(iy+0)
cp	.low.10
jp	nz,l348
ld	de,_lineno
ld	hl,(_ifno)
add	hl,hl
add	hl,de
ld	c,(hl)
inc	hl
ld	b,(hl)
dec	bc
ld	(hl),b
dec	hl
ld	(hl),c
ld	l,(ix+6)
ld	h,(ix+1+6)
dec	hl
ld	(ix+6),l
ld	(ix+1+6),h
;P:CPP_NEW.C: 955:         oldsavch = psav = savch;
l348:
l347:
ld	hl,(_savch)
ld	(ix+-2),l
ld	(ix+1+-2),h
ld	(ix+-21),l
ld	(ix+1+-21),h
;P:CPP_NEW.C: 956:         for (;;) {
l349:
;P:CPP_NEW.C: 957: 	    outptr = inptr = p; p = cotoken(p); pin = inptr;
ld	l,(ix+6)
ld	h,(ix+1+6)
ld	(_inptr),hl
ld	(_outptr),hl
ld	l,(ix+6)
ld	h,(ix+1+6)
push	hl
call	_cotoken
exx
ld	hl,2
add	hl,sp
ld	sp,hl
exx
ld	l,l
ld	h,h
ld	(ix+6),l
ld	(ix+1+6),h
ld	iy,(_inptr)
;P:CPP_NEW.C: 958: 	    if (*pin == '\\' && pin[1] == '\n') continue;
ld	a,(iy+0)
cp	.low.92
jp	nz,20f
jp	21f
21:
ld	a,(iy+1)
cp	.low.10
jp	nz,20f
jp	21f
21:jp	11f
20:jp	10f
10:
jp	l352
11:
jp	l351
;P:CPP_NEW.C: 959: 	    if (*pin == '\n') break;
l352:
ld	a,(iy+0)
cp	.low.10
jp	nz,l353
jp	l350
;P:CPP_NEW.C: 960: 	    if (params) {
l353:
ld	a,(ix+-15)
or	(ix+1+-15)
jp	z,l354
;P:CPP_NEW.C: 961: 	        if ((toktyp+128)[(int)*pin] == 2		) {
ld	a,(iy+0)
ld	e,a
rla
sbc	a,a
ld	d,a
ld	hl,_toktyp+128
add	hl,de
ld	a,(hl)
cp	.low.2
jp	nz,l355
;P:CPP_NEW.C: 962: 		    for (qf = pf; --qf >= formal; ) {
ld	l,(ix+-7)
ld	h,(ix+1+-7)
ld	(ix+-9),l
ld	(ix+1+-9),h
jp	l359
l356:
;P:CPP_NEW.C: 963: 		        if (equfrm(*qf, pin, p)) {
ld	l,(ix+6)
ld	h,(ix+1+6)
push	hl
push	iy
ld	l,(ix+-9)
ld	h,(ix+1+-9)
ld	c,(hl)
inc	hl
ld	b,(hl)
push	bc
call	_equfrm
exx
ld	hl,2+2+2
add	hl,sp
ld	sp,hl
exx
ld	l,l
ld	h,h
ld	a,l
or	h
jp	z,l360
;P:CPP_NEW.C: 964: 			    *psav++ = qf-formal+1;
push	ix
pop	de
ld	hl,-83
add	hl,de
ex	de,hl
ld	l,(ix+-9)
ld	h,(ix+1+-9)
or	a
sbc	hl,de
ld	de,2
global	adiv
call	adiv
inc	hl
ld	a,l
ld	l,(ix+-2)
ld	h,(ix+1+-2)
inc	hl
ld	(ix+-2),l
ld	(ix+1+-2),h
dec	hl
ld	(hl),a
;P:CPP_NEW.C: 965: 			    *psav++ =   0xFE	;
ld	l,(ix+-2)
ld	h,(ix+1+-2)
inc	hl
ld	(ix+-2),l
ld	(ix+1+-2),h
dec	hl
ld	(hl),-2
;P:CPP_NEW.C: 966: 			    pin = p;
ld	l,(ix+6)
ld	h,(ix+1+6)
push	hl
pop	iy
;P:CPP_NEW.C: 967: 			    break;
jp	l357
;P:CPP_NEW.C: 968: 		        }
;P:CPP_NEW.C: 969: 		    }
l360:
l358:
l359:
push	ix
pop	de
ld	hl,-83
add	hl,de
ex	de,hl
ld	l,(ix+-9)
ld	h,(ix+1+-9)
dec	hl
dec hl
ld	(ix+-9),l
ld	(ix+1+-9),h
global	wrelop
call	wrelop
jp	lge,l356
l357:
;P:CPP_NEW.C: 970: 	        } else if (*pin == '"' || *pin == '\'') {
jp	l361
l355:
ld	a,(iy+0)
cp	.low.34
jp	nz,20f
jp	21f
20:
ld	a,(iy+0)
cp	.low.39
jp	nz,20f
jp	21f
21:jp	11f
20:jp	10f
10:
jp	l362
11:
;P:CPP_NEW.C: 971: 	            quoc = *pin;
ld	a,(iy+0)
ld	(ix+-5),a
;P:CPP_NEW.C: 972: 	            for (*psav++ = *pin++; pin < p && *pin != quoc; ) {
ld	a,(iy+0)
ld	l,(ix+-2)
ld	h,(ix+1+-2)
inc	hl
ld	(ix+-2),l
ld	(ix+1+-2),h
dec	hl
ld	(hl),a
inc	iy
jp	l366
l363:
;P:CPP_NEW.C: 973: 		        while (pin < p && !   ((fastab+128)[(int)*pin]&  1)) *psav++ = *pin++;
jp	l367
l368:
ld	a,(iy+0)
ld	l,(ix+-2)
ld	h,(ix+1+-2)
inc	hl
ld	(ix+-2),l
ld	(ix+1+-2),h
dec	hl
ld	(hl),a
inc	iy
l367:
ld	e,(ix+6)
ld	d,(ix+1+6)
push	iy
pop	hl
global	wrelop
call	wrelop
jp	llt,20f
jp	21f
20:
ld	a,(iy+0)
ld	e,a
rla
sbc	a,a
ld	d,a
ld	hl,_fastab+128
add	hl,de
bit	0&7,(hl)
jp	z,20f
jp	21f
21:jp	11f
20:jp	10f
10:
jp	l368
11:
l369:
;P:CPP_NEW.C: 974: 		        cf = pin; while (cf < p &&    ((fastab+128)[(int)*cf]&  1)) ++cf;
push	iy
pop	hl
ld	(ix+-4),l
ld	(ix+1+-4),h
jp	l370
l371:
ld	l,(ix+-4)
ld	h,(ix+1+-4)
inc	hl
ld	(ix+-4),l
ld	(ix+1+-4),h
l370:
ld	e,(ix+6)
ld	d,(ix+1+6)
ld	l,(ix+-4)
ld	h,(ix+1+-4)
global	wrelop
call	wrelop
jp	llt,20f
jp	21f
20:
ld	l,(ix+-4)
ld	h,(ix+1+-4)
ld	a,(hl)
ld	e,a
rla
sbc	a,a
ld	d,a
ld	hl,_fastab+128
add	hl,de
bit	0&7,(hl)
jp	nz,20f
jp	21f
21:jp	11f
20:jp	10f
10:
jp	l371
11:
l372:
;P:CPP_NEW.C: 975: 		        for (qf = pf; --qf >= formal; ) {
ld	l,(ix+-7)
ld	h,(ix+1+-7)
ld	(ix+-9),l
ld	(ix+1+-9),h
jp	l376
l373:
;P:CPP_NEW.C: 976: 		            if (equfrm(*qf, pin, cf)) {
ld	l,(ix+-4)
ld	h,(ix+1+-4)
push	hl
push	iy
ld	l,(ix+-9)
ld	h,(ix+1+-9)
ld	c,(hl)
inc	hl
ld	b,(hl)
push	bc
call	_equfrm
exx
ld	hl,2+2+2
add	hl,sp
ld	sp,hl
exx
ld	l,l
ld	h,h
ld	a,l
or	h
jp	z,l377
;P:CPP_NEW.C: 977: 			        *psav++ = qf-formal+1;
push	ix
pop	de
ld	hl,-83
add	hl,de
ex	de,hl
ld	l,(ix+-9)
ld	h,(ix+1+-9)
or	a
sbc	hl,de
ld	de,2
global	adiv
call	adiv
inc	hl
ld	a,l
ld	l,(ix+-2)
ld	h,(ix+1+-2)
inc	hl
ld	(ix+-2),l
ld	(ix+1+-2),h
dec	hl
ld	(hl),a
;P:CPP_NEW.C: 978: 			        *psav++ =   0xFE	;
ld	l,(ix+-2)
ld	h,(ix+1+-2)
inc	hl
ld	(ix+-2),l
ld	(ix+1+-2),h
dec	hl
ld	(hl),-2
;P:CPP_NEW.C: 979: 			        pin     = cf; break;
ld	l,(ix+-4)
ld	h,(ix+1+-4)
push	hl
pop	iy
jp	l374
;P:CPP_NEW.C: 980: 		            }
;P:CPP_NEW.C: 981: 		        }
l377:
l375:
l376:
push	ix
pop	de
ld	hl,-83
add	hl,de
ex	de,hl
ld	l,(ix+-9)
ld	h,(ix+1+-9)
dec	hl
dec hl
ld	(ix+-9),l
ld	(ix+1+-9),h
global	wrelop
call	wrelop
jp	lge,l373
l374:
;P:CPP_NEW.C: 982: 		        while (pin < cf) *psav++ = *pin++;
jp	l378
l379:
ld	a,(iy+0)
ld	l,(ix+-2)
ld	h,(ix+1+-2)
inc	hl
ld	(ix+-2),l
ld	(ix+1+-2),h
dec	hl
ld	(hl),a
inc	iy
l378:
ld	e,(ix+-4)
ld	d,(ix+1+-4)
push	iy
pop	hl
global	wrelop
call	wrelop
jp	llt,l379
l380:
;P:CPP_NEW.C: 983: 	            }
l365:
l366:
ld	e,(ix+6)
ld	d,(ix+1+6)
push	iy
pop	hl
global	wrelop
call	wrelop
jp	llt,20f
jp	21f
20:
ld	a,(iy+0)
cp	(ix+-5)
jp	nz,20f
jp	21f
21:jp	11f
20:jp	10f
10:
jp	l363
11:
l364:
;P:CPP_NEW.C: 984: 	        }
;P:CPP_NEW.C: 985: 	    }
l362:
l361:
;P:CPP_NEW.C: 986:             while (pin < p) {
l354:
jp	l381
l382:
;P:CPP_NEW.C: 987:     	        if (*pin  == warnc) {
ld	a,(_warnc)
ld	e,a
ld	a,(iy+0)
cp	e
jp	nz,l384
;P:CPP_NEW.C: 988: 	            *psav++ =   0xFE	;
ld	l,(ix+-2)
ld	h,(ix+1+-2)
inc	hl
ld	(ix+-2),l
ld	(ix+1+-2),h
dec	hl
ld	(hl),-2
;P:CPP_NEW.C: 989: 	        }
;P:CPP_NEW.C: 990: 	        *psav++ = *pin++;
l384:
ld	a,(iy+0)
ld	l,(ix+-2)
ld	h,(ix+1+-2)
inc	hl
ld	(ix+-2),l
ld	(ix+1+-2),h
dec	hl
ld	(hl),a
inc	iy
;P:CPP_NEW.C: 991:             }
l381:
ld	e,(ix+6)
ld	d,(ix+1+6)
push	iy
pop	hl
global	wrelop
call	wrelop
jp	llt,l382
l383:
;P:CPP_NEW.C: 992: 	}
l351:
jp	l349
l350:
;P:CPP_NEW.C: 993: 	*psav++ = params; *psav++ = '\0';
ld	a,(ix+-15)
ld	l,(ix+-2)
ld	h,(ix+1+-2)
inc	hl
ld	(ix+-2),l
ld	(ix+1+-2),h
dec	hl
ld	(hl),a
ld	l,(ix+-2)
ld	h,(ix+1+-2)
inc	hl
ld	(ix+-2),l
ld	(ix+1+-2),h
dec	hl
ld	(hl),0
;P:CPP_NEW.C: 994: 	if ((cf = oldval) != ((void *)0)) {
ld	l,(ix+-19)
ld	h,(ix+1+-19)
ld	(ix+-4),l
ld	(ix+1+-4),h
ld	a,l
or	h
jp	z,l385
;P:CPP_NEW.C: 995: 	    --cf;
ld	l,(ix+-4)
ld	h,(ix+1+-4)
dec	hl
ld	(ix+-4),l
ld	(ix+1+-4),h
;P:CPP_NEW.C: 996: 	    while (*--cf);			
jp	l386
l387:
l386:
ld	l,(ix+-4)
ld	h,(ix+1+-4)
dec	hl
ld	(ix+-4),l
ld	(ix+1+-4),h
ld	a,(hl)
or	a
jp	anz,l387
l388:
;P:CPP_NEW.C: 997: 	if (0 != strcmp(++cf, oldsavch)) {
ld	l,(ix+-21)
ld	h,(ix+1+-21)
push	hl
ld	l,(ix+-4)
ld	h,(ix+1+-4)
inc	hl
ld	(ix+-4),l
ld	(ix+1+-4),h
push	hl
call	_strcmp
exx
ld	hl,2+2
add	hl,sp
ld	sp,hl
exx
ld	l,l
ld	h,h
ld	a,l
or	h
jp	z,l389
;P:CPP_NEW.C: 998: 	    --lineno[ifno];
ld	de,_lineno
ld	hl,(_ifno)
add	hl,hl
add	hl,de
ld	c,(hl)
inc	hl
ld	b,(hl)
dec	bc
ld	(hl),b
dec	hl
ld	(hl),c
;P:CPP_NEW.C: 999: 	    ppwarn("%s redefined", np->name);
ld	l,(ix+-17)
ld	h,(ix+1+-17)
ld	c,(hl)
inc	hl
ld	b,(hl)
push	bc
ld	hl,189f
push	hl
call	_ppwarn
ld	hl,2+2
add	hl,sp
ld	sp,hl
;P:CPP_NEW.C: 1000: 	    ++lineno[ifno];
ld	de,_lineno
ld	hl,(_ifno)
add	hl,hl
add	hl,de
ld	c,(hl)
inc	hl
ld	b,(hl)
inc	bc
ld	(hl),b
dec	hl
ld	(hl),c
;P:CPP_NEW.C: 1001: 	    np->value = psav-1;
ld	e,(ix+-2)
ld	d,(ix+1+-2)
dec	de
ld	l,(ix+-17)
ld	h,(ix+1+-17)
inc	hl
inc hl
ld	(hl),e
inc	hl
ld	(hl),d
;P:CPP_NEW.C: 1002: 	} else psav = oldsavch;
jp	l390
l389:
ld	l,(ix+-21)
ld	h,(ix+1+-21)
ld	(ix+-2),l
ld	(ix+1+-2),h
l390:
;P:CPP_NEW.C: 1003:     } else np->value = psav-1;
jp	l391
l385:
ld	e,(ix+-2)
ld	d,(ix+1+-2)
dec	de
ld	l,(ix+-17)
ld	h,(ix+1+-17)
inc	hl
inc hl
ld	(hl),e
inc	hl
ld	(hl),d
l391:
;P:CPP_NEW.C: 1004:     --flslvl; inptr = pin; savch = psav; return (p);
ld	hl,(_flslvl)
dec	hl
ld	(_flslvl),hl
ld	(_inptr),iy
ld	l,(ix+-2)
ld	h,(ix+1+-2)
ld	(_savch),hl
ld	l,(ix+6)
ld	h,(ix+1+6)
jp	l320
;P:CPP_NEW.C: 1005: }
l320:
jp	cret
f209	equ	-595
;P:CPP_NEW.C: 1013:  void control(register char *p) {
global	_control
_control:
call	ncsv
defw	f210
ld	l,(ix+6)
ld	h,(ix+7)
push	hl
pop	iy
;P:CPP_NEW.C: 1014:     struct symtab *np;
;P:CPP_NEW.C: 1015:     int didwarn;
;P:CPP_NEW.C: 1017:     for (;;) {
l393:
;P:CPP_NEW.C: 1018: 	 ptrtab=fastab+128; p = cotoken(p);
ld	hl,_fastab+128
ld	(_ptrtab),hl
push	iy
call	_cotoken
exx
ld	hl,2
add	hl,sp
ld	sp,hl
exx
ld	l,l
ld	h,h
push	hl
pop	iy
;P:CPP_NEW.C: 1019: 	if (*inptr == '\n') ++inptr;
ld	hl,(_inptr)
ld	a,(hl)
cp	.low.10
jp	nz,l396
ld	hl,(_inptr)
inc	hl
ld	(_inptr),hl
;P:CPP_NEW.C: 1020: 	dump();
l396:
call	_dump
ld	hl,0
add	hl,sp
ld	sp,hl
;P:CPP_NEW.C: 1021: 	 ptrtab=slotab+128; p = skipbl(p);
ld	hl,_slotab+128
ld	(_ptrtab),hl
push	iy
call	_skipbl
exx
ld	hl,2
add	hl,sp
ld	sp,hl
exx
ld	l,l
ld	h,h
push	hl
pop	iy
;P:CPP_NEW.C: 1022: 	*--inptr = '#'; outptr = inptr; ++flslvl;
ld	hl,(_inptr)
dec	hl
ld	(_inptr),hl
ld	(hl),35
ld	hl,(_inptr)
ld	(_outptr),hl
ld	hl,(_flslvl)
inc	hl
ld	(_flslvl),hl
;P:CPP_NEW.C: 1023: 	np = slookup(inptr, p, 0); --flslvl;
ld	hl,0
push	hl
push	iy
ld	hl,(_inptr)
push	hl
call	_slookup
exx
ld	hl,2+2+2
add	hl,sp
ld	sp,hl
exx
ld	l,l
ld	h,h
ld	(ix+-2),l
ld	(ix+1+-2),h
ld	hl,(_flslvl)
dec	hl
ld	(_flslvl),hl
;P:CPP_NEW.C: 1024: 	if (np == defloc) {
global	_defloc
ld	de,(_defloc)
ld	l,(ix+-2)
ld	h,(ix+1+-2)
or	a
sbc	hl,de
jp	nz,l397
;P:CPP_NEW.C: 1025: 	    if (flslvl == 0) {
ld	hl,(_flslvl)
ld	a,l
or	h
jp	nz,l398
;P:CPP_NEW.C: 1026: 		p = dodef(p);
push	iy
call	_dodef
exx
ld	hl,2
add	hl,sp
ld	sp,hl
exx
ld	l,l
ld	h,h
push	hl
pop	iy
;P:CPP_NEW.C: 1027: 		continue;
jp	l395
;P:CPP_NEW.C: 1028: 	    }
;P:CPP_NEW.C: 1029: 	} else if (np == incloc) {		
l398:
jp	l399
l397:
global	_incloc
ld	de,(_incloc)
ld	l,(ix+-2)
ld	h,(ix+1+-2)
or	a
sbc	hl,de
jp	nz,l400
;P:CPP_NEW.C: 1030: 	    if (flslvl == 0) {
ld	hl,(_flslvl)
ld	a,l
or	h
jp	nz,l401
;P:CPP_NEW.C: 1031: 		p = doincl(p);
push	iy
call	_doincl
exx
ld	hl,2
add	hl,sp
ld	sp,hl
exx
ld	l,l
ld	h,h
push	hl
pop	iy
;P:CPP_NEW.C: 1032: 		continue;
jp	l395
;P:CPP_NEW.C: 1033: 	    }
;P:CPP_NEW.C: 1034: 	} else if (np == ifnloc) {
l401:
jp	l402
l400:
global	_ifnloc
ld	de,(_ifnloc)
ld	l,(ix+-2)
ld	h,(ix+1+-2)
or	a
sbc	hl,de
jp	nz,l403
;P:CPP_NEW.C: 1035: 	    ++flslvl; p = skipbl(p);
ld	hl,(_flslvl)
inc	hl
ld	(_flslvl),hl
push	iy
call	_skipbl
exx
ld	hl,2
add	hl,sp
ld	sp,hl
exx
ld	l,l
ld	h,h
push	hl
pop	iy
;P:CPP_NEW.C: 1036: 	    np = slookup(inptr, p, 0); --flslvl;
ld	hl,0
push	hl
push	iy
ld	hl,(_inptr)
push	hl
call	_slookup
exx
ld	hl,2+2+2
add	hl,sp
ld	sp,hl
exx
ld	l,l
ld	h,h
ld	(ix+-2),l
ld	(ix+1+-2),h
ld	hl,(_flslvl)
dec	hl
ld	(_flslvl),hl
;P:CPP_NEW.C: 1037: 	    if (flslvl == 0 && np->value == 0) ++trulvl;
ld	hl,(_flslvl)
ld	a,l
or	h
jp	nz,20f
jp	21f
21:
ld	l,(ix+-2)
ld	h,(ix+1+-2)
inc	hl
inc hl
ld	a,(hl)
inc	hl
or	(hl)
jp	nz,20f
jp	21f
21:jp	11f
20:jp	10f
10:
jp	l404
11:
global	_trulvl
ld	hl,(_trulvl)
inc	hl
ld	(_trulvl),hl
;P:CPP_NEW.C: 1038: 	    else ++flslvl;
jp	l405
l404:
ld	hl,(_flslvl)
inc	hl
ld	(_flslvl),hl
l405:
;P:CPP_NEW.C: 1039: 	} else if (np == ifdloc) {
jp	l406
l403:
global	_ifdloc
ld	de,(_ifdloc)
ld	l,(ix+-2)
ld	h,(ix+1+-2)
or	a
sbc	hl,de
jp	nz,l407
;P:CPP_NEW.C: 1040: 	    ++flslvl; p=skipbl(p);
ld	hl,(_flslvl)
inc	hl
ld	(_flslvl),hl
push	iy
call	_skipbl
exx
ld	hl,2
add	hl,sp
ld	sp,hl
exx
ld	l,l
ld	h,h
push	hl
pop	iy
;P:CPP_NEW.C: 1041: 	    np = slookup(inptr, p, 0); --flslvl;
ld	hl,0
push	hl
push	iy
ld	hl,(_inptr)
push	hl
call	_slookup
exx
ld	hl,2+2+2
add	hl,sp
ld	sp,hl
exx
ld	l,l
ld	h,h
ld	(ix+-2),l
ld	(ix+1+-2),h
ld	hl,(_flslvl)
dec	hl
ld	(_flslvl),hl
;P:CPP_NEW.C: 1042: 	    if (flslvl == 0 && np->value != 0) ++trulvl;
ld	hl,(_flslvl)
ld	a,l
or	h
jp	nz,20f
jp	21f
21:
ld	l,(ix+-2)
ld	h,(ix+1+-2)
inc	hl
inc hl
ld	a,(hl)
inc	hl
or	(hl)
jp	z,20f
jp	21f
21:jp	11f
20:jp	10f
10:
jp	l408
11:
ld	hl,(_trulvl)
inc	hl
ld	(_trulvl),hl
;P:CPP_NEW.C: 1043: 	    else ++flslvl;
jp	l409
l408:
ld	hl,(_flslvl)
inc	hl
ld	(_flslvl),hl
l409:
;P:CPP_NEW.C: 1044: 	} else if (np == eifloc) {
jp	l410
l407:
global	_eifloc
ld	de,(_eifloc)
ld	l,(ix+-2)
ld	h,(ix+1+-2)
or	a
sbc	hl,de
jp	nz,l411
;P:CPP_NEW.C: 1045: 	    if (flslvl) {
ld	hl,(_flslvl)
ld	a,l
or	h
jp	z,l412
;P:CPP_NEW.C: 1046: 	        if (--flslvl == 0) sayline(""	);
ld	hl,(_flslvl)
dec	hl
ld	(_flslvl),hl
ld	a,l
or	h
jp	nz,l413
ld	hl,199f
push	hl
call	_sayline
ld	hl,2
add	hl,sp
ld	sp,hl
;P:CPP_NEW.C: 1047: 	    }
l413:
;P:CPP_NEW.C: 1048: 	    else if (trulvl) --trulvl;
jp	l414
l412:
ld	hl,(_trulvl)
ld	a,l
or	h
jp	z,l415
ld	hl,(_trulvl)
dec	hl
ld	(_trulvl),hl
;P:CPP_NEW.C: 1049: 	    else pperror("If-less endif", 0);
jp	l416
l415:
ld	hl,0
push	hl
ld	hl,209f
push	hl
call	_pperror
ld	hl,2+2
add	hl,sp
ld	sp,hl
l416:
l414:
;P:CPP_NEW.C: 1051: 	    if (flslvl == 0) elflvl = 0;
ld	hl,(_flslvl)
ld	a,l
or	h
jp	nz,l417
global	_elflvl
ld	hl,0
ld	(_elflvl),hl
;P:CPP_NEW.C: 1052: 	    elslvl = 0;
l417:
global	_elslvl
ld	hl,0
ld	(_elslvl),hl
;P:CPP_NEW.C: 1053: 	} else if (np == elifloc) {
jp	l418
l411:
global	_elifloc
ld	de,(_elifloc)
ld	l,(ix+-2)
ld	h,(ix+1+-2)
or	a
sbc	hl,de
jp	nz,l419
;P:CPP_NEW.C: 1054: 	    if (flslvl == 0) elflvl = trulvl;
ld	hl,(_flslvl)
ld	a,l
or	h
jp	nz,l420
ld	hl,(_trulvl)
ld	(_elflvl),hl
;P:CPP_NEW.C: 1055: 	    if (flslvl) {
l420:
ld	hl,(_flslvl)
ld	a,l
or	h
jp	z,l421
;P:CPP_NEW.C: 1056: 	        if (elflvl > trulvl) {
ld	de,(_elflvl)
ld	hl,(_trulvl)
global	wrelop
call	wrelop
jp	age,l422
;P:CPP_NEW.C: 1057: 		    ;
;P:CPP_NEW.C: 1058: 	        } else if (--flslvl != 0) {
jp	l423
l422:
ld	hl,(_flslvl)
dec	hl
ld	(_flslvl),hl
ld	a,l
or	h
jp	z,l424
;P:CPP_NEW.C: 1059: 	            ++flslvl;
ld	hl,(_flslvl)
inc	hl
ld	(_flslvl),hl
;P:CPP_NEW.C: 1060: 	        } else {
jp	l425
l424:
;P:CPP_NEW.C: 1061: 	            newp = p;
ld	(_newp),iy
;P:CPP_NEW.C: 1062: 	                if (yyparse()) {
global	_yyparse
call	_yyparse
exx
ld	hl,0
add	hl,sp
ld	sp,hl
exx
ld	l,l
ld	h,h
ld	a,l
or	h
jp	z,l426
;P:CPP_NEW.C: 1063: 	                    ++trulvl; sayline(""	);
ld	hl,(_trulvl)
inc	hl
ld	(_trulvl),hl
ld	hl,219f
push	hl
call	_sayline
ld	hl,2
add	hl,sp
ld	sp,hl
;P:CPP_NEW.C: 1064: 	                } else {
jp	l427
l426:
;P:CPP_NEW.C: 1065: 	                    ++flslvl;
ld	hl,(_flslvl)
inc	hl
ld	(_flslvl),hl
;P:CPP_NEW.C: 1066: 	                }
l427:
;P:CPP_NEW.C: 1067: 	                p = newp;
ld	iy,(_newp)
;P:CPP_NEW.C: 1068: 		    }
l425:
l423:
;P:CPP_NEW.C: 1069: 		} else if (trulvl) {
jp	l428
l421:
ld	hl,(_trulvl)
ld	a,l
or	h
jp	z,l429
;P:CPP_NEW.C: 1070: 		    ++flslvl;
ld	hl,(_flslvl)
inc	hl
ld	(_flslvl),hl
;P:CPP_NEW.C: 1071: 		    --trulvl;
ld	hl,(_trulvl)
dec	hl
ld	(_trulvl),hl
;P:CPP_NEW.C: 1072: 		} else
jp	l430
l429:
;P:CPP_NEW.C: 1073: 		    pperror("If-less elif");
ld	hl,229f
push	hl
call	_pperror
ld	hl,2
add	hl,sp
ld	sp,hl
l430:
l428:
;P:CPP_NEW.C: 1075: 	} else if (np == elsloc) {
jp	l431
l419:
global	_elsloc
ld	de,(_elsloc)
ld	l,(ix+-2)
ld	h,(ix+1+-2)
or	a
sbc	hl,de
jp	nz,l432
;P:CPP_NEW.C: 1076: 	    if (flslvl) {
ld	hl,(_flslvl)
ld	a,l
or	h
jp	z,l433
;P:CPP_NEW.C: 1077: 		if (elflvl > trulvl)
ld	de,(_elflvl)
ld	hl,(_trulvl)
global	wrelop
call	wrelop
jp	age,l434
;P:CPP_NEW.C: 1078: 		    ;
;P:CPP_NEW.C: 1079: 		else if (--flslvl != 0) ++flslvl;
jp	l435
l434:
ld	hl,(_flslvl)
dec	hl
ld	(_flslvl),hl
ld	a,l
or	h
jp	z,l436
ld	hl,(_flslvl)
inc	hl
ld	(_flslvl),hl
;P:CPP_NEW.C: 1080: 		else {++trulvl; sayline(""	);}
jp	l437
l436:
ld	hl,(_trulvl)
inc	hl
ld	(_trulvl),hl
ld	hl,239f
push	hl
call	_sayline
ld	hl,2
add	hl,sp
ld	sp,hl
l437:
l435:
;P:CPP_NEW.C: 1081: 	    }
;P:CPP_NEW.C: 1082: 	    else if (trulvl) {++flslvl; --trulvl;}
jp	l438
l433:
ld	hl,(_trulvl)
ld	a,l
or	h
jp	z,l439
ld	hl,(_flslvl)
inc	hl
ld	(_flslvl),hl
ld	hl,(_trulvl)
dec	hl
ld	(_trulvl),hl
;P:CPP_NEW.C: 1083: 	    else pperror("If-less else", 0);
jp	l440
l439:
ld	hl,0
push	hl
ld	hl,249f
push	hl
call	_pperror
ld	hl,2+2
add	hl,sp
ld	sp,hl
l440:
l438:
;P:CPP_NEW.C: 1085: 	    if (elslvl == trulvl+flslvl) 
ld	de,(_flslvl)
ld	hl,(_trulvl)
add	hl,de
ld	de,(_elslvl)
or	a
sbc	hl,de
jp	nz,l441
;P:CPP_NEW.C: 1086: 	        pperror("Too many #else's"); 
ld	hl,259f
push	hl
call	_pperror
ld	hl,2
add	hl,sp
ld	sp,hl
;P:CPP_NEW.C: 1087: 	    elslvl = trulvl+flslvl; 
l441:
ld	de,(_flslvl)
ld	hl,(_trulvl)
add	hl,de
ld	(_elslvl),hl
;P:CPP_NEW.C: 1089: 	} else if (np == udfloc) {
jp	l442
l432:
global	_udfloc
ld	de,(_udfloc)
ld	l,(ix+-2)
ld	h,(ix+1+-2)
or	a
sbc	hl,de
jp	nz,l443
;P:CPP_NEW.C: 1090: 	    if (flslvl==0) {
ld	hl,(_flslvl)
ld	a,l
or	h
jp	nz,l444
;P:CPP_NEW.C: 1091: 	        ++flslvl; p = skipbl(p);
ld	hl,(_flslvl)
inc	hl
ld	(_flslvl),hl
push	iy
call	_skipbl
exx
ld	hl,2
add	hl,sp
ld	sp,hl
exx
ld	l,l
ld	h,h
push	hl
pop	iy
;P:CPP_NEW.C: 1092: 	        slookup(inptr, p,  0xFE	);
ld	hl,254
push	hl
push	iy
ld	hl,(_inptr)
push	hl
call	_slookup
ld	hl,2+2+2
add	hl,sp
ld	sp,hl
;P:CPP_NEW.C: 1093: 	        --flslvl;
ld	hl,(_flslvl)
dec	hl
ld	(_flslvl),hl
;P:CPP_NEW.C: 1094: 	    }
;P:CPP_NEW.C: 1095: 	} else if (np == ifloc) {
l444:
jp	l445
l443:
global	_ifloc
ld	de,(_ifloc)
ld	l,(ix+-2)
ld	h,(ix+1+-2)
or	a
sbc	hl,de
jp	nz,l446
;P:CPP_NEW.C: 1096: 	    newp = p;
ld	(_newp),iy
;P:CPP_NEW.C: 1097: 	    if (flslvl == 0 && yyparse()) ++trulvl; else ++flslvl;
ld	hl,(_flslvl)
ld	a,l
or	h
jp	nz,20f
jp	21f
21:
call	_yyparse
exx
ld	hl,0
add	hl,sp
ld	sp,hl
exx
ld	l,l
ld	h,h
ld	a,l
or	h
jp	z,20f
jp	21f
21:jp	11f
20:jp	10f
10:
jp	l447
11:
ld	hl,(_trulvl)
inc	hl
ld	(_trulvl),hl
jp	l448
l447:
ld	hl,(_flslvl)
inc	hl
ld	(_flslvl),hl
l448:
;P:CPP_NEW.C: 1098: 	    p = newp;
ld	iy,(_newp)
;P:CPP_NEW.C: 1099: 	} else if (np == idtloc) {
jp	l449
l446:
global	_idtloc
ld	de,(_idtloc)
ld	l,(ix+-2)
ld	h,(ix+1+-2)
or	a
sbc	hl,de
jp	nz,l450
;P:CPP_NEW.C: 1100: 	    if (pflag == 0)
ld	hl,(_pflag)
ld	a,l
or	h
jp	nz,l451
;P:CPP_NEW.C: 1101: 	        while (*inptr != '\n')
jp	l452
l453:
;P:CPP_NEW.C: 1102: 	            p = cotoken(p);
push	iy
call	_cotoken
exx
ld	hl,2
add	hl,sp
ld	sp,hl
exx
ld	l,l
ld	h,h
push	hl
pop	iy
l452:
ld	hl,(_inptr)
ld	a,(hl)
cp	.low.10
jp	nz,l453
l454:
;P:CPP_NEW.C: 1103: 	} else if (np == pragmaloc) {				
l451:
jp	l455
l450:
global	_pragmaloc
ld	de,(_pragmaloc)
ld	l,(ix+-2)
ld	h,(ix+1+-2)
or	a
sbc	hl,de
jp	nz,l456
;P:CPP_NEW.C: 1104: 	    while (*inptr != '\n')
jp	l457
l458:
;P:CPP_NEW.C: 1105: 	        p = cotoken(p);
push	iy
call	_cotoken
exx
ld	hl,2
add	hl,sp
ld	sp,hl
exx
ld	l,l
ld	h,h
push	hl
pop	iy
l457:
ld	hl,(_inptr)
ld	a,(hl)
cp	.low.10
jp	nz,l458
l459:
;P:CPP_NEW.C: 1106: 	} else if (np == errorloc) {
jp	l460
l456:
global	_errorloc
ld	de,(_errorloc)
ld	l,(ix+-2)
ld	h,(ix+1+-2)
or	a
sbc	hl,de
jp	nz,l461
;P:CPP_NEW.C: 1112: 	    if (flslvl == 0) {
ld	hl,(_flslvl)
ld	a,l
or	h
jp	nz,l462
;P:CPP_NEW.C: 1114: 	        static char ebuf[512	];
;P:CPP_NEW.C: 1116: 	        p = ebuf;
ld	iy,F547
;P:CPP_NEW.C: 1117: 	        while (*inptr != '\n') {
jp	l463
l464:
;P:CPP_NEW.C: 1118: 	            if (*inptr == '\0')
ld	hl,(_inptr)
ld	a,(hl)
or	a
jp	anz,l466
;P:CPP_NEW.C: 1119: 	                if ( ((--inptr)>=pend)) {
ld	de,(_pend)
ld	hl,(_inptr)
dec	hl
ld	(_inptr),hl
global	wrelop
call	wrelop
jp	llt,l467
;P:CPP_NEW.C: 1120: 	                    inptr = refill(inptr);
ld	hl,(_inptr)
push	hl
call	_refill
exx
ld	hl,2
add	hl,sp
ld	sp,hl
exx
ld	l,l
ld	h,h
ld	(_inptr),hl
;P:CPP_NEW.C: 1121: 	                    continue;
jp	l463
;P:CPP_NEW.C: 1122: 	                }
;P:CPP_NEW.C: 1123: 	                *p++ = *inptr++;
l467:
l466:
ld	hl,(_inptr)
ld	a,(hl)
inc	hl
ld	(_inptr),hl
ld	(iy+0),a
inc	iy
;P:CPP_NEW.C: 1124: 	                if (p >= &ebuf[512	-1]) break;
ld	de,F547+511
push	iy
pop	hl
global	wrelop
call	wrelop
jp	llt,l468
jp	l465
;P:CPP_NEW.C: 1125: 	        }
l468:
l463:
ld	hl,(_inptr)
ld	a,(hl)
cp	.low.10
jp	nz,l464
l465:
;P:CPP_NEW.C: 1126: 	        *p = '\0';
ld	(iy+0),0
;P:CPP_NEW.C: 1127: 	        pperror(ebuf);
ld	hl,F547
push	hl
call	_pperror
ld	hl,2
add	hl,sp
ld	sp,hl
;P:CPP_NEW.C: 1128: 	        exit(exfail);
ld	hl,(_exfail)
push	hl
call	_exit
ld	hl,2
add	hl,sp
ld	sp,hl
psect	bss
F547:
	defs	512
;P:CPP_NEW.C: 1129: 	    }
;P:CPP_NEW.C: 1131: 	    while (*inptr != '\n')
psect	text
l462:
jp	l469
l470:
;P:CPP_NEW.C: 1132: 	        p = cotoken(p);
push	iy
call	_cotoken
exx
ld	hl,2
add	hl,sp
ld	sp,hl
exx
ld	l,l
ld	h,h
push	hl
pop	iy
l469:
ld	hl,(_inptr)
ld	a,(hl)
cp	.low.10
jp	nz,l470
l471:
;P:CPP_NEW.C: 1133: 	} else if (np == lneloc) {
jp	l472
l461:
global	_lneloc
ld	de,(_lneloc)
ld	l,(ix+-2)
ld	h,(ix+1+-2)
or	a
sbc	hl,de
jp	nz,l473
;P:CPP_NEW.C: 1134: 	    if (flslvl == 0 && pflag == 0) {
ld	hl,(_flslvl)
ld	a,l
or	h
jp	nz,20f
jp	21f
21:
ld	hl,(_pflag)
ld	a,l
or	h
jp	nz,20f
jp	21f
21:jp	11f
20:jp	10f
10:
jp	l474
11:
;P:CPP_NEW.C: 1136: 		register char	*s;
;P:CPP_NEW.C: 1137: 		register int	n;
;P:CPP_NEW.C: 1139: 		outptr = inptr = p;
ld	(_inptr),iy
ld	(_outptr),iy
;P:CPP_NEW.C: 1140: was_line:
l475:
;P:CPP_NEW.C: 1144: 		s = p;
push	iy
pop	hl
ld	(ix+-6),l
ld	(ix+1+-6),h
;P:CPP_NEW.C: 1145: 		while (*s && *s != '\n') s++;
jp	l476
l477:
ld	l,(ix+-6)
ld	h,(ix+1+-6)
inc	hl
ld	(ix+-6),l
ld	(ix+1+-6),h
l476:
ld	l,(ix+-6)
ld	h,(ix+1+-6)
ld	a,(hl)
or	a
jp	anz,20f
jp	21f
20:
ld	l,(ix+-6)
ld	h,(ix+1+-6)
ld	a,(hl)
cp	.low.10
jp	nz,20f
jp	21f
21:jp	11f
20:jp	10f
10:
jp	l477
11:
l478:
;P:CPP_NEW.C: 1146: 		if ( ((s)>=pend)) p = refill(s);
ld	de,(_pend)
ld	l,(ix+-6)
ld	h,(ix+1+-6)
global	wrelop
call	wrelop
jp	llt,l479
ld	l,(ix+-6)
ld	h,(ix+1+-6)
push	hl
call	_refill
exx
ld	hl,2
add	hl,sp
ld	sp,hl
exx
ld	l,l
ld	h,h
push	hl
pop	iy
;P:CPP_NEW.C: 1148: 		s = inptr;
l479:
ld	hl,(_inptr)
ld	(ix+-6),l
ld	(ix+1+-6),h
;P:CPP_NEW.C: 1149: 		while ((toktyp+128)[(int)*s] == 1		) s++;
jp	l480
l481:
ld	l,(ix+-6)
ld	h,(ix+1+-6)
inc	hl
ld	(ix+-6),l
ld	(ix+1+-6),h
l480:
ld	l,(ix+-6)
ld	h,(ix+1+-6)
ld	a,(hl)
ld	e,a
rla
sbc	a,a
ld	d,a
ld	hl,_toktyp+128
add	hl,de
ld	a,(hl)
cp	.low.1
jp	z,l481
l482:
;P:CPP_NEW.C: 1153: 		n = 0;
ld	(ix+-8),.low.0
ld	(ix+1+-8),.high.0
;P:CPP_NEW.C: 1154: 		while (	((_ctype_+1)[*s]&0x04)) {
jp	l483
l484:
;P:CPP_NEW.C: 1156: 		    register int c;
;P:CPP_NEW.C: 1158: 		    if (n >  3276) {
ld	e,(ix+-8)
ld	d,(ix+1+-8)
ld	hl,3276
global	wrelop
call	wrelop
jp	age,l486
;P:CPP_NEW.C: 1159: 		        pperror("bad number for #line");
ld	hl,269f
push	hl
call	_pperror
ld	hl,2
add	hl,sp
ld	sp,hl
;P:CPP_NEW.C: 1160: 		        n = 32767;
ld	(ix+-8),.low.32767
ld	(ix+1+-8),.high.32767
;P:CPP_NEW.C: 1161: 		        break;
jp	l485
;P:CPP_NEW.C: 1162: 		    }
;P:CPP_NEW.C: 1163: 		    n *= 10;
l486:
push	ix
pop	de
ld	hl,-8
add	hl,de
ld	de,10
global	asamul
call	asamul
;P:CPP_NEW.C: 1164: 		    c = *s++ - '0';
ld	l,(ix+-6)
ld	h,(ix+1+-6)
ld	a,(hl)
inc	hl
ld	(ix+-6),l
ld	(ix+1+-6),h
ld	e,a
rla
sbc	a,a
ld	d,a
ld	hl,-48
add	hl,de
ld	(ix+-10),l
ld	(ix+1+-10),h
;P:CPP_NEW.C: 1165: 		    if ((32767 - n) < c) {
ld	e,(ix+-8)
ld	d,(ix+1+-8)
ld	hl,32767
or	a
sbc	hl,de
ld	e,(ix+-10)
ld	d,(ix+1+-10)
global	wrelop
call	wrelop
jp	age,l487
;P:CPP_NEW.C: 1166: 		        pperror("bad number for #line");
ld	hl,279f
push	hl
call	_pperror
ld	hl,2
add	hl,sp
ld	sp,hl
;P:CPP_NEW.C: 1167: 		        n = 32767;
ld	(ix+-8),.low.32767
ld	(ix+1+-8),.high.32767
;P:CPP_NEW.C: 1168: 		        break;
jp	l485
;P:CPP_NEW.C: 1169: 		    }
;P:CPP_NEW.C: 1170: 		    n += c;
l487:
ld	e,(ix+-10)
ld	d,(ix+1+-10)
ld	l,(ix+-8)
ld	h,(ix+1+-8)
add	hl,de
ld	(ix+-8),l
ld	(ix+1+-8),h
;P:CPP_NEW.C: 1171: 		}
l483:
global	__ctype_
ld	l,(ix+-6)
ld	h,(ix+1+-6)
ld	a,(hl)
ld	e,a
rla
sbc	a,a
ld	d,a
ld	hl,__ctype_+1
add	hl,de
bit	2&7,(hl)
jp	nz,l484
l485:
;P:CPP_NEW.C: 1172: 		if (n == 0)
ld	a,(ix+-8)
or	(ix+1+-8)
jp	nz,l488
;P:CPP_NEW.C: 1173: 		    pperror("bad number for #line");
ld	hl,289f
push	hl
call	_pperror
ld	hl,2
add	hl,sp
ld	sp,hl
;P:CPP_NEW.C: 1174: 		else
jp	l489
l488:
;P:CPP_NEW.C: 1175: 		    lineno[ifno] = n - 1;
ld	de,_lineno
ld	hl,(_ifno)
add	hl,hl
add	hl,de
ld	e,(ix+-8)
ld	d,(ix+1+-8)
dec	de
ld	(hl),e
inc	hl
ld	(hl),d
l489:
;P:CPP_NEW.C: 1177: 		while ((toktyp+128)[(int)*s] == 1		) s++;
jp	l490
l491:
ld	l,(ix+-6)
ld	h,(ix+1+-6)
inc	hl
ld	(ix+-6),l
ld	(ix+1+-6),h
l490:
ld	l,(ix+-6)
ld	h,(ix+1+-6)
ld	a,(hl)
ld	e,a
rla
sbc	a,a
ld	d,a
ld	hl,_toktyp+128
add	hl,de
ld	a,(hl)
cp	.low.1
jp	z,l491
l492:
;P:CPP_NEW.C: 1181: 		if (*s != '\n') {
ld	l,(ix+-6)
ld	h,(ix+1+-6)
ld	a,(hl)
cp	.low.10
jp	z,l493
;P:CPP_NEW.C: 1183: 		    register char *f;
;P:CPP_NEW.C: 1185: 		    f = s;
ld	l,(ix+-6)
ld	h,(ix+1+-6)
ld	(ix+-12),l
ld	(ix+1+-12),h
;P:CPP_NEW.C: 1186: 		    while (*f && *f != '\n') f++;
jp	l494
l495:
ld	l,(ix+-12)
ld	h,(ix+1+-12)
inc	hl
ld	(ix+-12),l
ld	(ix+1+-12),h
l494:
ld	l,(ix+-12)
ld	h,(ix+1+-12)
ld	a,(hl)
or	a
jp	anz,20f
jp	21f
20:
ld	l,(ix+-12)
ld	h,(ix+1+-12)
ld	a,(hl)
cp	.low.10
jp	nz,20f
jp	21f
21:jp	11f
20:jp	10f
10:
jp	l495
11:
l496:
;P:CPP_NEW.C: 1188: 		    if (savch >= sbf+12000 -(f-s)) {
ld	e,(ix+-6)
ld	d,(ix+1+-6)
ld	l,(ix+-12)
ld	h,(ix+1+-12)
or	a
sbc	hl,de
ex	de,hl
ld	hl,(_sbf)
or	a
sbc	hl,de
ld	de,12000
add	hl,de
ex	de,hl
ld	hl,(_savch)
global	wrelop
call	wrelop
jp	llt,l497
;P:CPP_NEW.C: 1189: 		        newsbf();
call	_newsbf
ld	hl,0
add	hl,sp
ld	sp,hl
;P:CPP_NEW.C: 1190: 		    }
;P:CPP_NEW.C: 1191: 		    f = savch;
l497:
ld	hl,(_savch)
ld	(ix+-12),l
ld	(ix+1+-12),h
;P:CPP_NEW.C: 1192: 		    if (*s != '"') *f++ = *s;
ld	l,(ix+-6)
ld	h,(ix+1+-6)
ld	a,(hl)
cp	.low.34
jp	z,l498
ld	l,(ix+-6)
ld	h,(ix+1+-6)
ld	a,(hl)
ld	l,(ix+-12)
ld	h,(ix+1+-12)
inc	hl
ld	(ix+-12),l
ld	(ix+1+-12),h
dec	hl
ld	(hl),a
;P:CPP_NEW.C: 1193: 		    s++;
l498:
ld	l,(ix+-6)
ld	h,(ix+1+-6)
inc	hl
ld	(ix+-6),l
ld	(ix+1+-6),h
;P:CPP_NEW.C: 1194: 		    while (*s) {
jp	l499
l500:
;P:CPP_NEW.C: 1195: 		        if (*s == '"' || *s == '\n') break;
ld	l,(ix+-6)
ld	h,(ix+1+-6)
ld	a,(hl)
cp	.low.34
jp	nz,20f
jp	21f
20:
ld	l,(ix+-6)
ld	h,(ix+1+-6)
ld	a,(hl)
cp	.low.10
jp	nz,20f
jp	21f
21:jp	11f
20:jp	10f
10:
jp	l502
11:
jp	l501
;P:CPP_NEW.C: 1196: 		        *f++ = *s++;
l502:
ld	l,(ix+-6)
ld	h,(ix+1+-6)
ld	a,(hl)
inc	hl
ld	(ix+-6),l
ld	(ix+1+-6),h
ld	l,(ix+-12)
ld	h,(ix+1+-12)
inc	hl
ld	(ix+-12),l
ld	(ix+1+-12),h
dec	hl
ld	(hl),a
;P:CPP_NEW.C: 1197: 		    }
l499:
ld	l,(ix+-6)
ld	h,(ix+1+-6)
ld	a,(hl)
or	a
jp	anz,l500
l501:
;P:CPP_NEW.C: 1198: 		    *f++ = '\0';
ld	l,(ix+-12)
ld	h,(ix+1+-12)
inc	hl
ld	(ix+-12),l
ld	(ix+1+-12),h
dec	hl
ld	(hl),0
;P:CPP_NEW.C: 1199: 		    if (strcmp(savch, fnames[ifno])) {
ld	de,_fnames
ld	hl,(_ifno)
add	hl,hl
add	hl,de
ld	c,(hl)
inc	hl
ld	b,(hl)
push	bc
ld	hl,(_savch)
push	hl
call	_strcmp
exx
ld	hl,2+2
add	hl,sp
ld	sp,hl
exx
ld	l,l
ld	h,h
ld	a,l
or	h
jp	z,l503
;P:CPP_NEW.C: 1200: 		        fnames[ifno] = savch;
ld	de,_fnames
ld	hl,(_ifno)
add	hl,hl
add	hl,de
ld	de,(_savch)
ld	(hl),e
inc	hl
ld	(hl),d
;P:CPP_NEW.C: 1201: 		        savch = f;
ld	l,(ix+-12)
ld	h,(ix+1+-12)
ld	(_savch),hl
;P:CPP_NEW.C: 1202: 		    }
;P:CPP_NEW.C: 1203: 		}
l503:
;P:CPP_NEW.C: 1207: 		*--outptr = '#';
l493:
ld	hl,(_outptr)
dec	hl
ld	(_outptr),hl
ld	(hl),35
;P:CPP_NEW.C: 1208: 		while (*inptr != '\n') p = cotoken(p);
jp	l504
l505:
push	iy
call	_cotoken
exx
ld	hl,2
add	hl,sp
ld	sp,hl
exx
ld	l,l
ld	h,h
push	hl
pop	iy
l504:
ld	hl,(_inptr)
ld	a,(hl)
cp	.low.10
jp	nz,l505
l506:
;P:CPP_NEW.C: 1209: 		continue;
jp	l395
;P:CPP_NEW.C: 1210: 	    }
;P:CPP_NEW.C: 1212: 	} else if((asmloc == np) || (easmloc == np)) {
l474:
jp	l507
l473:
global	_asmloc
global	_easmloc
ld	de,(_asmloc)
ld	l,(ix+-2)
ld	h,(ix+1+-2)
or	a
sbc	hl,de
jp	nz,20f
jp	21f
20:
ld	de,(_easmloc)
ld	l,(ix+-2)
ld	h,(ix+1+-2)
or	a
sbc	hl,de
jp	nz,20f
jp	21f
21:jp	11f
20:jp	10f
10:
jp	l508
11:
;P:CPP_NEW.C: 1213: 	    while(*inptr != '\n') {
jp	l509
l510:
;P:CPP_NEW.C: 1214: 	        inptr = p;
ld	(_inptr),iy
;P:CPP_NEW.C: 1215: 	        p = cotoken(p);
push	iy
call	_cotoken
exx
ld	hl,2
add	hl,sp
ld	sp,hl
exx
ld	l,l
ld	h,h
push	hl
pop	iy
;P:CPP_NEW.C: 1216: 	    }
l509:
ld	hl,(_inptr)
ld	a,(hl)
cp	.low.10
jp	nz,l510
l511:
;P:CPP_NEW.C: 1218: 	} else if (*++inptr == '\n') outptr = inptr;
jp	l512
l508:
ld	hl,(_inptr)
inc	hl
ld	(_inptr),hl
ld	a,(hl)
cp	.low.10
jp	nz,l513
ld	hl,(_inptr)
ld	(_outptr),hl
;P:CPP_NEW.C: 1219: 	else if (	((_ctype_+1)[*inptr]&0x04)) {
jp	l514
l513:
ld	hl,(_inptr)
ld	a,(hl)
ld	e,a
rla
sbc	a,a
ld	d,a
ld	hl,__ctype_+1
add	hl,de
bit	2&7,(hl)
jp	z,l515
;P:CPP_NEW.C: 1223: 	    outptr = p = inptr;
ld	iy,(_inptr)
ld	(_outptr),iy
;P:CPP_NEW.C: 1224: 	    goto was_line;
jp	l475
;P:CPP_NEW.C: 1225: 	} else pperror("undefined control", 0);
jp	l516
l515:
ld	hl,0
push	hl
ld	hl,299f
push	hl
call	_pperror
ld	hl,2+2
add	hl,sp
ld	sp,hl
l516:
l514:
l512:
l507:
l472:
l460:
l455:
l449:
l445:
l442:
l431:
l418:
l410:
l406:
l402:
l399:
;P:CPP_NEW.C: 1227: 	didwarn = 0;
ld	(ix+-4),.low.0
ld	(ix+1+-4),.high.0
;P:CPP_NEW.C: 1228: 	++flslvl;
ld	hl,(_flslvl)
inc	hl
ld	(_flslvl),hl
;P:CPP_NEW.C: 1229: 	while (*inptr != '\n') {
jp	l517
l518:
;P:CPP_NEW.C: 1230: 	    outptr = inptr = p;
ld	(_inptr),iy
ld	(_outptr),iy
;P:CPP_NEW.C: 1231: 	    p = cotoken(p); 
push	iy
call	_cotoken
exx
ld	hl,2
add	hl,sp
ld	sp,hl
exx
ld	l,l
ld	h,h
push	hl
pop	iy
;P:CPP_NEW.C: 1232: 	    if (extrawarn && !didwarn &&
;P:CPP_NEW.C: 1233: 	    *inptr != '\n' && *p != '\n' &&
;P:CPP_NEW.C: 1234: 	    (toktyp+128)[(int)*p] != 1		 &&
;P:CPP_NEW.C: 1235: 	    !iscomment(p)) {
global	_extrawarn
global	_iscomment
ld	hl,(_extrawarn)
ld	a,l
or	h
jp	z,60f
jp	61f
61:
ld	a,(ix+-4)
or	(ix+1+-4)
jp	nz,60f
jp	61f
61:jp	51f
60:jp	50f
51:
ld	hl,(_inptr)
ld	a,(hl)
cp	.low.10
jp	z,50f
jp	51f
51:jp	41f
50:jp	40f
41:
ld	a,(iy+0)
cp	.low.10
jp	z,40f
jp	41f
41:jp	31f
40:jp	30f
31:
ld	a,(iy+0)
ld	e,a
rla
sbc	a,a
ld	d,a
ld	hl,_toktyp+128
add	hl,de
ld	a,(hl)
cp	.low.1
jp	z,30f
jp	31f
31:jp	21f
30:jp	20f
21:
push	iy
call	_iscomment
exx
ld	hl,2
add	hl,sp
ld	sp,hl
exx
ld	l,l
ld	h,h
ld	a,l
or	h
jp	nz,20f
jp	21f
21:jp	11f
20:jp	10f
10:
jp	l520
11:
;P:CPP_NEW.C: 1236: 	        ppwarn("extra tokens (ignored) after directive");
ld	hl,309f
push	hl
call	_ppwarn
ld	hl,2
add	hl,sp
ld	sp,hl
;P:CPP_NEW.C: 1237: 	        didwarn++;
ld	l,(ix+-4)
ld	h,(ix+1+-4)
inc	hl
ld	(ix+-4),l
ld	(ix+1+-4),h
;P:CPP_NEW.C: 1238: 	    }
;P:CPP_NEW.C: 1239: 	}
l520:
l517:
ld	hl,(_inptr)
ld	a,(hl)
cp	.low.10
jp	nz,l518
l519:
;P:CPP_NEW.C: 1240: 	--flslvl;
ld	hl,(_flslvl)
dec	hl
ld	(_flslvl),hl
;P:CPP_NEW.C: 1241:     }
l395:
jp	l393
l394:
;P:CPP_NEW.C: 1242: }
l392:
jp	cret
f210	equ	-12
;P:CPP_NEW.C: 1247:  int iscomment(register char *s) {
_iscomment:
call	ncsv
defw	f213
ld	l,(ix+6)
ld	h,(ix+7)
push	hl
pop	iy
;P:CPP_NEW.C: 1249:     if (*s++ == '/') {
ld	a,(iy+0)
inc	iy
cp	.low.47
jp	nz,l522
;P:CPP_NEW.C: 1250: 	if (*s == '*' || (cppflag && *s == '/'))
ld	a,(iy+0)
cp	.low.42
jp	nz,20f
jp	21f
20:
ld	hl,(_cppflag)
ld	a,l
or	h
jp	z,30f
jp	31f
31:
ld	a,(iy+0)
cp	.low.47
jp	nz,30f
jp	31f
31:jp	21f
30:jp	20f
21:jp	11f
20:jp	10f
10:
jp	l523
11:
;P:CPP_NEW.C: 1251: 	    return (1);
ld	hl,1
jp	l521
;P:CPP_NEW.C: 1252:     }
l523:
;P:CPP_NEW.C: 1253:     return (0);
l522:
ld	hl,0
jp	l521
;P:CPP_NEW.C: 1254: }
l521:
jp	cret
f213	equ	0
;P:CPP_NEW.C: 1261:  struct symtab * stsym(register char *s) {
global	_stsym
_stsym:
call	ncsv
defw	f214
ld	l,(ix+6)
ld	h,(ix+7)
push	hl
pop	iy
;P:CPP_NEW.C: 1262:     char *p; char buf[512	];
;P:CPP_NEW.C: 1264:     p = buf; while ((*p++ = *s++) != '\0');
push	ix
pop	de
ld	hl,-514
add	hl,de
ld	(ix+-2),l
ld	(ix+1+-2),h
jp	l525
l526:
l525:
ld	a,(iy+0)
inc	iy
ld	l,(ix+-2)
ld	h,(ix+1+-2)
inc	hl
ld	(ix+-2),l
ld	(ix+1+-2),h
dec	hl
ld	(hl),a
or	a
jp	anz,l526
l527:
;P:CPP_NEW.C: 1265:     p = buf; while (   ((fastab+128)[(int)*p++]&  1));
push	ix
pop	de
ld	hl,-514
add	hl,de
ld	(ix+-2),l
ld	(ix+1+-2),h
jp	l528
l529:
l528:
ld	l,(ix+-2)
ld	h,(ix+1+-2)
ld	a,(hl)
inc	hl
ld	(ix+-2),l
ld	(ix+1+-2),h
ld	e,a
rla
sbc	a,a
ld	d,a
ld	hl,_fastab+128
add	hl,de
bit	0&7,(hl)
jp	nz,l529
l530:
;P:CPP_NEW.C: 1266:     if (*--p == '=') {*p++ = ' '; while (*p++);}
ld	l,(ix+-2)
ld	h,(ix+1+-2)
dec	hl
ld	(ix+-2),l
ld	(ix+1+-2),h
ld	a,(hl)
cp	.low.61
jp	nz,l531
ld	l,(ix+-2)
ld	h,(ix+1+-2)
inc	hl
ld	(ix+-2),l
ld	(ix+1+-2),h
dec	hl
ld	(hl),32
jp	l532
l533:
l532:
ld	l,(ix+-2)
ld	h,(ix+1+-2)
ld	a,(hl)
inc	hl
ld	(ix+-2),l
ld	(ix+1+-2),h
or	a
jp	anz,l533
l534:
;P:CPP_NEW.C: 1267:     else {s = " 1"; while ((*p++ = *s++) != '\0');}
jp	l535
l531:
ld	iy,319f
jp	l536
l537:
l536:
ld	a,(iy+0)
inc	iy
ld	l,(ix+-2)
ld	h,(ix+1+-2)
inc	hl
ld	(ix+-2),l
ld	(ix+1+-2),h
dec	hl
ld	(hl),a
or	a
jp	anz,l537
l538:
l535:
;P:CPP_NEW.C: 1268:     pend = p; *--p = '\n';
ld	l,(ix+-2)
ld	h,(ix+1+-2)
ld	(_pend),hl
ld	l,(ix+-2)
ld	h,(ix+1+-2)
dec	hl
ld	(ix+-2),l
ld	(ix+1+-2),h
ld	(hl),10
;P:CPP_NEW.C: 1269:      ptrtab=slotab+128; dodef(buf); return (lastsym);
ld	hl,_slotab+128
ld	(_ptrtab),hl
push	ix
pop	de
ld	hl,-514
add	hl,de
push	hl
call	_dodef
ld	hl,2
add	hl,sp
ld	sp,hl
global	_lastsym
ld	hl,(_lastsym)
jp	l524
;P:CPP_NEW.C: 1270: }
l524:
jp	cret
f214	equ	-514
;P:CPP_NEW.C: 1275:  struct symtab * ppsym(char *s) {
global	_ppsym
_ppsym:
call	ncsv
defw	f215
;P:CPP_NEW.C: 1276:     register struct symtab *sp;
;P:CPP_NEW.C: 1278:     cinit = '#'; *savch++ = '#'; sp = stsym(s);
global	_cinit
ld	a,.low.35
ld	(_cinit),a
ld	hl,(_savch)
inc	hl
ld	(_savch),hl
dec	hl
ld	(hl),35
ld	l,(ix+6)
ld	h,(ix+1+6)
push	hl
call	_stsym
exx
ld	hl,2
add	hl,sp
ld	sp,hl
exx
ld	l,l
ld	h,h
push	hl
pop	iy
;P:CPP_NEW.C: 1279:     --sp->name; cinit = 0; return (sp);
ld	l,(iy+0)
ld	h,(iy+1+0)
dec	hl
ld	(iy+0),l
ld	(iy+1+0),h
ld	a,.low.0
ld	(_cinit),a
push	iy
pop	hl
jp	l539
;P:CPP_NEW.C: 1280: }
l539:
jp	cret
f215	equ	0
;P:CPP_NEW.C: 1285: void verror(char *fmt, ...) {
global	_verror
_verror:
call	ncsv
defw	f216
;P:CPP_NEW.C: 1286:     va_list args;
;P:CPP_NEW.C: 1288:     	*args = (char *)& fmt + sizeof  fmt;
push	ix
pop	de
ld	hl,8
add	hl,de
ld	(ix+-2),l
ld	(ix+1+-2),h
;P:CPP_NEW.C: 1289:     if (fnames[ifno][0])
ld	de,_fnames
ld	hl,(_ifno)
add	hl,hl
add	hl,de
ld	a,(hl)
inc	hl
ld	h,(hl)
ld	l,a
ld	a,(hl)
or	a
jp	az,l541
;P:CPP_NEW.C: 1290:         fprintf(	(&_iob[2]), "%s: ", fnames[ifno]);
ld	de,_fnames
ld	hl,(_ifno)
add	hl,hl
add	hl,de
ld	c,(hl)
inc	hl
ld	b,(hl)
push	bc
ld	hl,329f
push	hl
ld	hl,__iob+18
push	hl
call	_fprintf
ld	hl,2+2+2
add	hl,sp
ld	sp,hl
;P:CPP_NEW.C: 1291:     fprintf(	(&_iob[2]), "%d: ",lineno[ifno]);
l541:
ld	de,_lineno
ld	hl,(_ifno)
add	hl,hl
add	hl,de
ld	c,(hl)
inc	hl
ld	b,(hl)
push	bc
ld	hl,339f
push	hl
ld	hl,__iob+18
push	hl
call	_fprintf
ld	hl,2+2+2
add	hl,sp
ld	sp,hl
;P:CPP_NEW.C: 1293:     (void)vfprintf(	(&_iob[2]), fmt, args);
global	_vfprintf
push	ix
pop	hl
dec	hl
dec hl
push	hl
ld	l,(ix+6)
ld	h,(ix+1+6)
push	hl
ld	hl,__iob+18
push	hl
call	_vfprintf
ld	hl,2+2+2
add	hl,sp
ld	sp,hl
;P:CPP_NEW.C: 1294:     fputc('\n', 	(&_iob[2]));
ld	hl,__iob+18
push	hl
ld	hl,10
push	hl
call	_fputc
ld	hl,2+2
add	hl,sp
ld	sp,hl
;P:CPP_NEW.C: 1295:     ;
;P:CPP_NEW.C: 1296: }
l540:
jp	cret
f216	equ	-2
;P:CPP_NEW.C: 1302: void pperror(char *fmt, ...) {
_pperror:
call	ncsv
defw	f218
;P:CPP_NEW.C: 1303:     va_list args;
;P:CPP_NEW.C: 1305:     	*args = (char *)& fmt + sizeof  fmt;
push	ix
pop	de
ld	hl,8
add	hl,de
ld	(ix+-2),l
ld	(ix+1+-2),h
;P:CPP_NEW.C: 1306:     verror(fmt, args);
push	ix
pop	hl
dec	hl
dec hl
push	hl
ld	l,(ix+6)
ld	h,(ix+1+6)
push	hl
call	_verror
ld	hl,2+2
add	hl,sp
ld	sp,hl
;P:CPP_NEW.C: 1307:     ;
;P:CPP_NEW.C: 1309:     exfail = 1;
ld	hl,1
ld	(_exfail),hl
;P:CPP_NEW.C: 1310: }
l542:
jp	cret
f218	equ	-2
;P:CPP_NEW.C: 1316: void yyerror(char *fmt, ...) {
global	_yyerror
_yyerror:
call	ncsv
defw	f219
;P:CPP_NEW.C: 1317:     va_list args;
;P:CPP_NEW.C: 1319:     	*args = (char *)& fmt + sizeof  fmt;
push	ix
pop	de
ld	hl,8
add	hl,de
ld	(ix+-2),l
ld	(ix+1+-2),h
;P:CPP_NEW.C: 1320:     verror(fmt, args);
push	ix
pop	hl
dec	hl
dec hl
push	hl
ld	l,(ix+6)
ld	h,(ix+1+6)
push	hl
call	_verror
ld	hl,2+2
add	hl,sp
ld	sp,hl
;P:CPP_NEW.C: 1321:     ;
;P:CPP_NEW.C: 1322: }
l543:
jp	cret
f219	equ	-2
;P:CPP_NEW.C: 1328:  void ppwarn(char *fmt, ...) {
_ppwarn:
call	ncsv
defw	f220
;P:CPP_NEW.C: 1329:     va_list args;
;P:CPP_NEW.C: 1330:     int fail = exfail;
ld	hl,(_exfail)
ld	(ix+-4),l
ld	(ix+1+-4),h
;P:CPP_NEW.C: 1332:     	*args = (char *)& fmt + sizeof  fmt;
push	ix
pop	de
ld	hl,8
add	hl,de
ld	(ix+-2),l
ld	(ix+1+-2),h
;P:CPP_NEW.C: 1333:     verror(fmt, args);
push	ix
pop	hl
dec	hl
dec hl
push	hl
ld	l,(ix+6)
ld	h,(ix+1+6)
push	hl
call	_verror
ld	hl,2+2
add	hl,sp
ld	sp,hl
;P:CPP_NEW.C: 1334:     ;
;P:CPP_NEW.C: 1336:     exfail = fail;
ld	l,(ix+-4)
ld	h,(ix+1+-4)
ld	(_exfail),hl
;P:CPP_NEW.C: 1337: }
l544:
jp	cret
f220	equ	-4
;P:CPP_NEW.C: 1342: struct symtab * lookup(char *namep, int enterf) {
global	_lookup
_lookup:
call	ncsv
defw	f221
;P:CPP_NEW.C: 1343:     register char *np, *snp;
;P:CPP_NEW.C: 1346:     register int c, i;
;P:CPP_NEW.C: 1350:     register struct symtab *sp;
;P:CPP_NEW.C: 1351:     struct symtab *prev;
;P:CPP_NEW.C: 1352:     static struct symtab nsym;
;P:CPP_NEW.C: 1356:     np = namep;
ld	l,(ix+6)
ld	h,(ix+1+6)
push	hl
pop	iy
;P:CPP_NEW.C: 1357:     i  = cinit;
ld	a,(_cinit)
ld	l,a
rla
sbc	a,a
ld	h,a
ld	(ix+-6),l
ld	(ix+1+-6),h
;P:CPP_NEW.C: 1359:     while ((c = *np++) != '\0')
jp	l546
l547:
;P:CPP_NEW.C: 1360: 	i += i+c;
ld	e,(ix+-4)
ld	d,(ix+1+-4)
ld	l,(ix+-6)
ld	h,(ix+1+-6)
add	hl,de
ex	de,hl
ld	l,(ix+-6)
ld	h,(ix+1+-6)
add	hl,de
ld	(ix+-6),l
ld	(ix+1+-6),h
l546:
ld	a,(iy+0)
inc	iy
ld	l,a
rla
sbc	a,a
ld	h,a
ld	(ix+-4),l
ld	(ix+1+-4),h
ld	a,l
or	h
jp	nz,l547
l548:
;P:CPP_NEW.C: 1365:     c = i;
ld	l,(ix+-6)
ld	h,(ix+1+-6)
ld	(ix+-4),l
ld	(ix+1+-4),h
;P:CPP_NEW.C: 1366:     c %= 500	;
ld	de,500
push	ix
pop	hl
dec	hl
dec hl
dec hl
dec hl
global	asamod
call	asamod
;P:CPP_NEW.C: 1368:     if (c < 0)
bit	7,(ix+1+-4)
jp	z,l549
;P:CPP_NEW.C: 1369: 	c += 500	;
ld	de,500
ld	l,(ix+-4)
ld	h,(ix+1+-4)
add	hl,de
ld	(ix+-4),l
ld	(ix+1+-4),h
;P:CPP_NEW.C: 1371:     sp = stab[c];
l549:
global	_stab
ld	de,_stab
ld	l,(ix+-4)
ld	h,(ix+1+-4)
add	hl,hl
add	hl,de
ld	c,(hl)
inc	hl
ld	b,(hl)
ld	(ix+-8),c
ld	(ix+1+-8),b
;P:CPP_NEW.C: 1372:     prev = sp;
ld	l,(ix+-8)
ld	h,(ix+1+-8)
ld	(ix+-10),l
ld	(ix+1+-10),h
;P:CPP_NEW.C: 1373:     while (sp != ((void *)0)) {
jp	l550
l551:
;P:CPP_NEW.C: 1374: 	snp = sp->name;
ld	l,(ix+-8)
ld	h,(ix+1+-8)
ld	c,(hl)
inc	hl
ld	b,(hl)
ld	(ix+-2),c
ld	(ix+1+-2),b
;P:CPP_NEW.C: 1375: 	np  = namep;
ld	l,(ix+6)
ld	h,(ix+1+6)
push	hl
pop	iy
;P:CPP_NEW.C: 1376: 	while (*snp++ == *np) {
jp	l553
l554:
;P:CPP_NEW.C: 1377: 	    if (*np++ == '\0') {
ld	a,(iy+0)
inc	iy
or	a
jp	anz,l556
;P:CPP_NEW.C: 1378: 		if (enterf ==  0xFE	) {
ld	de,254
ld	l,(ix+8)
ld	h,(ix+1+8)
or	a
sbc	hl,de
jp	nz,l557
;P:CPP_NEW.C: 1379: 		    sp->name[0] =  0xFE	;
ld	l,(ix+-8)
ld	h,(ix+1+-8)
ld	a,(hl)
inc	hl
ld	h,(hl)
ld	l,a
ld	(hl),-2
;P:CPP_NEW.C: 1380: 		    sp->value   = 0;
ld	de,0
ld	l,(ix+-8)
ld	h,(ix+1+-8)
inc	hl
inc hl
ld	(hl),e
inc	hl
ld	(hl),d
;P:CPP_NEW.C: 1381: 		}
;P:CPP_NEW.C: 1382: 		return (lastsym = sp);
l557:
ld	l,(ix+-8)
ld	h,(ix+1+-8)
ld	(_lastsym),hl
jp	l545
;P:CPP_NEW.C: 1383: 	    }
;P:CPP_NEW.C: 1384: 	}
l556:
l553:
ld	l,(ix+-2)
ld	h,(ix+1+-2)
ld	a,(hl)
inc	hl
ld	(ix+-2),l
ld	(ix+1+-2),h
cp	(iy+0)
jp	z,l554
l555:
;P:CPP_NEW.C: 1385: 	prev = sp;
ld	l,(ix+-8)
ld	h,(ix+1+-8)
ld	(ix+-10),l
ld	(ix+1+-10),h
;P:CPP_NEW.C: 1386: 	sp = sp->next;
ld	l,(ix+-8)
ld	h,(ix+1+-8)
inc	hl
inc hl
inc hl
inc hl
ld	c,(hl)
inc	hl
ld	b,(hl)
ld	(ix+-8),c
ld	(ix+1+-8),b
;P:CPP_NEW.C: 1387:     }
l550:
ld	a,(ix+-8)
or	(ix+1+-8)
jp	nz,l551
l552:
;P:CPP_NEW.C: 1388:     if (enterf > 0) {
ld	e,(ix+8)
ld	d,(ix+1+8)
ld	hl,0
global	wrelop
call	wrelop
jp	age,l558
;P:CPP_NEW.C: 1389: 	sp        = newsym();
global	_newsym
call	_newsym
exx
ld	hl,0
add	hl,sp
ld	sp,hl
exx
ld	l,l
ld	h,h
ld	(ix+-8),l
ld	(ix+1+-8),h
;P:CPP_NEW.C: 1390: 	sp->name  = namep;
ld	e,(ix+6)
ld	d,(ix+1+6)
ld	l,(ix+-8)
ld	h,(ix+1+-8)
ld	(hl),e
inc	hl
ld	(hl),d
;P:CPP_NEW.C: 1391: 	sp->value = ((void *)0);
ld	de,0
ld	l,(ix+-8)
ld	h,(ix+1+-8)
inc	hl
inc hl
ld	(hl),e
inc	hl
ld	(hl),d
;P:CPP_NEW.C: 1392: 	sp->next  = ((void *)0);
ld	de,0
ld	l,(ix+-8)
ld	h,(ix+1+-8)
inc	hl
inc hl
inc hl
inc hl
ld	(hl),e
inc	hl
ld	(hl),d
;P:CPP_NEW.C: 1393: 	if (prev)
ld	a,(ix+-10)
or	(ix+1+-10)
jp	z,l559
;P:CPP_NEW.C: 1394: 	    prev->next = sp;
ld	e,(ix+-8)
ld	d,(ix+1+-8)
ld	l,(ix+-10)
ld	h,(ix+1+-10)
inc	hl
inc hl
inc hl
inc hl
ld	(hl),e
inc	hl
ld	(hl),d
;P:CPP_NEW.C: 1395: 	else
jp	l560
l559:
;P:CPP_NEW.C: 1396: 	    stab[c] = sp;
ld	de,_stab
ld	l,(ix+-4)
ld	h,(ix+1+-4)
add	hl,hl
add	hl,de
ld	e,(ix+-8)
ld	d,(ix+1+-8)
ld	(hl),e
inc	hl
ld	(hl),d
l560:
;P:CPP_NEW.C: 1397:     }
;P:CPP_NEW.C: 1403:     if (sp == ((void *)0))
l558:
ld	a,(ix+-8)
or	(ix+1+-8)
jp	nz,l561
;P:CPP_NEW.C: 1404: 	sp = &nsym;
ld	hl,F587
ld	(ix+-8),l
ld	(ix+1+-8),h
;P:CPP_NEW.C: 1405:     return (lastsym = sp);
l561:
ld	l,(ix+-8)
ld	h,(ix+1+-8)
ld	(_lastsym),hl
jp	l545
;P:CPP_NEW.C: 1406: }
l545:
psect	bss
F587:
	defs	6
psect	text
jp	cret
f221	equ	-10
;P:CPP_NEW.C: 1411:  struct symtab * slookup(register char *p1, char *p2, int enterf) {
_slookup:
call	ncsv
defw	f223
ld	l,(ix+6)
ld	h,(ix+7)
push	hl
pop	iy
;P:CPP_NEW.C: 1412:     char *p3; char c2,c3; struct symtab *np;
;P:CPP_NEW.C: 1414:     c2 = *p2; *p2='\0';
ld	l,(ix+8)
ld	h,(ix+1+8)
ld	l,(hl)
ld	(ix+-3),l
ld	l,(ix+8)
ld	h,(ix+1+8)
ld	(hl),0
;P:CPP_NEW.C: 1415:     if ((p2-p1) > symlen) p3 = p1+symlen; else p3 = p2;
push	iy
pop	de
ld	l,(ix+8)
ld	h,(ix+1+8)
or	a
sbc	hl,de
ex	de,hl
ld	hl,(_symlen)
global	wrelop
call	wrelop
jp	age,l563
push	iy
pop	de
ld	hl,(_symlen)
add	hl,de
ld	(ix+-2),l
ld	(ix+1+-2),h
jp	l564
l563:
ld	l,(ix+8)
ld	h,(ix+1+8)
ld	(ix+-2),l
ld	(ix+1+-2),h
l564:
;P:CPP_NEW.C: 1416:     c3 = *p3; *p3='\0';
ld	l,(ix+-2)
ld	h,(ix+1+-2)
ld	l,(hl)
ld	(ix+-4),l
ld	l,(ix+-2)
ld	h,(ix+1+-2)
ld	(hl),0
;P:CPP_NEW.C: 1417:     if (enterf == 1) p1 = copy(p1);
ld	de,1
ld	l,(ix+10)
ld	h,(ix+1+10)
or	a
sbc	hl,de
jp	nz,l565
push	iy
call	_copy
exx
ld	hl,2
add	hl,sp
ld	sp,hl
exx
ld	l,l
ld	h,h
push	hl
pop	iy
;P:CPP_NEW.C: 1418:     np = lookup(p1, enterf); *p3 = c3; *p2 = c2;
l565:
ld	l,(ix+10)
ld	h,(ix+1+10)
push	hl
push	iy
call	_lookup
exx
ld	hl,2+2
add	hl,sp
ld	sp,hl
exx
ld	l,l
ld	h,h
ld	(ix+-6),l
ld	(ix+1+-6),h
ld	a,(ix+-4)
ld	l,(ix+-2)
ld	h,(ix+1+-2)
ld	(hl),a
ld	a,(ix+-3)
ld	l,(ix+8)
ld	h,(ix+1+8)
ld	(hl),a
;P:CPP_NEW.C: 1419:     if (np->value != 0 && flslvl==0) newp = subst(p2, np);
ld	l,(ix+-6)
ld	h,(ix+1+-6)
inc	hl
inc hl
ld	a,(hl)
inc	hl
or	(hl)
jp	z,20f
jp	21f
21:
ld	hl,(_flslvl)
ld	a,l
or	h
jp	nz,20f
jp	21f
21:jp	11f
20:jp	10f
10:
jp	l566
11:
global	_subst
ld	l,(ix+-6)
ld	h,(ix+1+-6)
push	hl
ld	l,(ix+8)
ld	h,(ix+1+8)
push	hl
call	_subst
exx
ld	hl,2+2
add	hl,sp
ld	sp,hl
exx
ld	l,l
ld	h,h
ld	(_newp),hl
;P:CPP_NEW.C: 1420:     else newp = 0;
jp	l567
l566:
ld	hl,0
ld	(_newp),hl
l567:
;P:CPP_NEW.C: 1421:     return (np);
ld	l,(ix+-6)
ld	h,(ix+1+-6)
jp	l562
;P:CPP_NEW.C: 1422: }
l562:
jp	cret
f223	equ	-6
;P:CPP_NEW.C: 1427:  char * subst(register char *p, struct symtab *sp) {
_subst:
call	ncsv
defw	f224
ld	l,(ix+6)
ld	h,(ix+7)
push	hl
pop	iy
;P:CPP_NEW.C: 1428:     static char match[] = "%s: argument mismatch";
psect	data
F601:
defb	37
defb	115
defb	58
defb	32
defb	97
defb	114
defb	103
defb	117
defb	109
defb	101
defb	110
defb	116
defb	32
defb	109
defb	105
defb	115
defb	109
defb	97
defb	116
defb	99
defb	104
defb	0
;P:CPP_NEW.C: 1429:     register char *ca,*vp; int params;
;P:CPP_NEW.C: 1430:     register char **pa;
;P:CPP_NEW.C: 1431:     char *actual[ 31	];
;P:CPP_NEW.C: 1432:     char acttxt[512	];
;P:CPP_NEW.C: 1434:     if (0 == (vp = sp->value)) return (p);
psect	text
ld	l,(ix+8)
ld	h,(ix+1+8)
inc	hl
inc hl
ld	c,(hl)
inc	hl
ld	b,(hl)
ld	(ix+-4),c
ld	(ix+1+-4),b
ld	a,c
or	b
jp	nz,l569
push	iy
pop	hl
jp	l568
;P:CPP_NEW.C: 1435:     if ((p-macforw) <= macdam) {
l569:
global	_macforw
ld	de,(_macforw)
push	iy
pop	hl
or	a
sbc	hl,de
ex	de,hl
ld	hl,(_macdam)
global	wrelop
call	wrelop
jp	alt,l570
;P:CPP_NEW.C: 1436: 	if (++maclvl > 500	 && !rflag) {
global	_rflag
ld	hl,(_maclvl)
inc	hl
ld	(_maclvl),hl
ex	de,hl
ld	hl,500
global	wrelop
call	wrelop
jp	age,20f
jp	21f
21:
ld	hl,(_rflag)
ld	a,l
or	h
jp	nz,20f
jp	21f
21:jp	11f
20:jp	10f
10:
jp	l571
11:
;P:CPP_NEW.C: 1437: 	    pperror("%s: macro recursion", sp->name); return (p);
ld	l,(ix+8)
ld	h,(ix+1+8)
ld	c,(hl)
inc	hl
ld	b,(hl)
push	bc
ld	hl,349f
push	hl
call	_pperror
ld	hl,2+2
add	hl,sp
ld	sp,hl
push	iy
pop	hl
jp	l568
;P:CPP_NEW.C: 1438: 	}
;P:CPP_NEW.C: 1439:     } else maclvl = 0;
l571:
jp	l572
l570:
ld	hl,0
ld	(_maclvl),hl
l572:
;P:CPP_NEW.C: 1440:     macforw = p; macdam = 0;
ld	(_macforw),iy
ld	hl,0
ld	(_macdam),hl
;P:CPP_NEW.C: 1441:     macnam = sp->name;
ld	l,(ix+8)
ld	h,(ix+1+8)
ld	c,(hl)
inc	hl
ld	b,(hl)
ld	(_macnam),bc
;P:CPP_NEW.C: 1442:     dump();
call	_dump
ld	hl,0
add	hl,sp
ld	sp,hl
;P:CPP_NEW.C: 1443:     if (sp == ulnloc) {
global	_ulnloc
ld	de,(_ulnloc)
ld	l,(ix+8)
ld	h,(ix+1+8)
or	a
sbc	hl,de
jp	nz,l573
;P:CPP_NEW.C: 1444: 	vp = acttxt; *vp++ = '\0';
push	ix
pop	de
ld	hl,-582
add	hl,de
ld	(ix+-4),l
ld	(ix+1+-4),h
ld	l,(ix+-4)
ld	h,(ix+1+-4)
inc	hl
ld	(ix+-4),l
ld	(ix+1+-4),h
dec	hl
ld	(hl),0
;P:CPP_NEW.C: 1445: 	sprintf(vp, "%d", lineno[ifno]); while (*vp++);
global	_sprintf
ld	de,_lineno
ld	hl,(_ifno)
add	hl,hl
add	hl,de
ld	c,(hl)
inc	hl
ld	b,(hl)
push	bc
ld	hl,359f
push	hl
ld	l,(ix+-4)
ld	h,(ix+1+-4)
push	hl
call	_sprintf
ld	hl,2+2+2
add	hl,sp
ld	sp,hl
jp	l574
l575:
l574:
ld	l,(ix+-4)
ld	h,(ix+1+-4)
ld	a,(hl)
inc	hl
ld	(ix+-4),l
ld	(ix+1+-4),h
or	a
jp	anz,l575
l576:
;P:CPP_NEW.C: 1446:     } else if (sp == uflloc) {
jp	l577
l573:
global	_uflloc
ld	de,(_uflloc)
ld	l,(ix+8)
ld	h,(ix+1+8)
or	a
sbc	hl,de
jp	nz,l578
;P:CPP_NEW.C: 1447: 	vp = acttxt; *vp++ = '\0';
push	ix
pop	de
ld	hl,-582
add	hl,de
ld	(ix+-4),l
ld	(ix+1+-4),h
ld	l,(ix+-4)
ld	h,(ix+1+-4)
inc	hl
ld	(ix+-4),l
ld	(ix+1+-4),h
dec	hl
ld	(hl),0
;P:CPP_NEW.C: 1448: 	ca = fnames[ifno];
ld	de,_fnames
ld	hl,(_ifno)
add	hl,hl
add	hl,de
ld	c,(hl)
inc	hl
ld	b,(hl)
ld	(ix+-2),c
ld	(ix+1+-2),b
;P:CPP_NEW.C: 1449: 	*vp++ = '"';
ld	l,(ix+-4)
ld	h,(ix+1+-4)
inc	hl
ld	(ix+-4),l
ld	(ix+1+-4),h
dec	hl
ld	(hl),34
;P:CPP_NEW.C: 1450: 	while (*ca) {
jp	l579
l580:
;P:CPP_NEW.C: 1451: 	    if (*ca == '\\') *vp++ = '\\';
ld	l,(ix+-2)
ld	h,(ix+1+-2)
ld	a,(hl)
cp	.low.92
jp	nz,l582
ld	l,(ix+-4)
ld	h,(ix+1+-4)
inc	hl
ld	(ix+-4),l
ld	(ix+1+-4),h
dec	hl
ld	(hl),92
;P:CPP_NEW.C: 1452: 	    *vp++ = *ca++;
l582:
ld	l,(ix+-2)
ld	h,(ix+1+-2)
ld	a,(hl)
inc	hl
ld	(ix+-2),l
ld	(ix+1+-2),h
ld	l,(ix+-4)
ld	h,(ix+1+-4)
inc	hl
ld	(ix+-4),l
ld	(ix+1+-4),h
dec	hl
ld	(hl),a
;P:CPP_NEW.C: 1453: 	}
l579:
ld	l,(ix+-2)
ld	h,(ix+1+-2)
ld	a,(hl)
or	a
jp	anz,l580
l581:
;P:CPP_NEW.C: 1454: 	*vp++ = '"';
ld	l,(ix+-4)
ld	h,(ix+1+-4)
inc	hl
ld	(ix+-4),l
ld	(ix+1+-4),h
dec	hl
ld	(hl),34
;P:CPP_NEW.C: 1455: 	*vp++ = '\0';
ld	l,(ix+-4)
ld	h,(ix+1+-4)
inc	hl
ld	(ix+-4),l
ld	(ix+1+-4),h
dec	hl
ld	(hl),0
;P:CPP_NEW.C: 1456:     }
;P:CPP_NEW.C: 1457:     if (0 != (params = *--vp&0xFF)) {	
l578:
l577:
ld	l,(ix+-4)
ld	h,(ix+1+-4)
dec	hl
ld	(ix+-4),l
ld	(ix+1+-4),h
ld	a,(hl)
ld	l,a
rla
sbc	a,a
ld	h,a
ld	a,l
and	.low.255
ld	l,a
ld	a,h
and	.low.0
ld	h,a
ld	(ix+-6),l
ld	(ix+1+-6),h
ld	a,l
or	h
jp	z,l583
;P:CPP_NEW.C: 1458: 	ca = acttxt; pa = actual;
push	ix
pop	de
ld	hl,-582
add	hl,de
ld	(ix+-2),l
ld	(ix+1+-2),h
push	ix
pop	de
ld	hl,-70
add	hl,de
ld	(ix+-8),l
ld	(ix+1+-8),h
;P:CPP_NEW.C: 1459: 	if (params == 0xFF) params=1;
ld	de,255
ld	l,(ix+-6)
ld	h,(ix+1+-6)
or	a
sbc	hl,de
jp	nz,l584
ld	(ix+-6),.low.1
ld	(ix+1+-6),.high.1
;P:CPP_NEW.C: 1460: 	 ptrtab=slotab+128; ++flslvl;
l584:
ld	hl,_slotab+128
ld	(_ptrtab),hl
ld	hl,(_flslvl)
inc	hl
ld	(_flslvl),hl
;P:CPP_NEW.C: 1461: 	plvl = -1;
ld	hl,-1
ld	(_plvl),hl
;P:CPP_NEW.C: 1462: 	do p = skipbl(p); while (*inptr == '\n');
l587:
push	iy
call	_skipbl
exx
ld	hl,2
add	hl,sp
ld	sp,hl
exx
ld	l,l
ld	h,h
push	hl
pop	iy
l585:
ld	hl,(_inptr)
ld	a,(hl)
cp	.low.10
jp	z,l587
l586:
;P:CPP_NEW.C: 1463: 	if (*inptr == '(') {
ld	hl,(_inptr)
ld	a,(hl)
cp	.low.40
jp	nz,l588
;P:CPP_NEW.C: 1464: 	    maclin = lineno[ifno]; macfil = fnames[ifno];
ld	de,_lineno
ld	hl,(_ifno)
add	hl,hl
add	hl,de
ld	c,(hl)
inc	hl
ld	b,(hl)
ld	(_maclin),bc
ld	de,_fnames
ld	hl,(_ifno)
add	hl,hl
add	hl,de
ld	c,(hl)
inc	hl
ld	b,(hl)
ld	(_macfil),bc
;P:CPP_NEW.C: 1465: 	    for (plvl = 1; plvl != 0; ) {
ld	hl,1
ld	(_plvl),hl
jp	l592
l589:
;P:CPP_NEW.C: 1466: 		*ca++ = '\0';
ld	l,(ix+-2)
ld	h,(ix+1+-2)
inc	hl
ld	(ix+-2),l
ld	(ix+1+-2),h
dec	hl
ld	(hl),0
;P:CPP_NEW.C: 1467: 		for (;;) {
l593:
;P:CPP_NEW.C: 1468: 		    outptr = inptr = p; p = cotoken(p);
ld	(_inptr),iy
ld	(_outptr),iy
push	iy
call	_cotoken
exx
ld	hl,2
add	hl,sp
ld	sp,hl
exx
ld	l,l
ld	h,h
push	hl
pop	iy
;P:CPP_NEW.C: 1469: 		    if (*inptr == '(') ++plvl;
ld	hl,(_inptr)
ld	a,(hl)
cp	.low.40
jp	nz,l596
ld	hl,(_plvl)
inc	hl
ld	(_plvl),hl
;P:CPP_NEW.C: 1470: 		    if (*inptr == ')' && --plvl==0) {--params; break;}
l596:
ld	hl,(_inptr)
ld	a,(hl)
cp	.low.41
jp	nz,20f
jp	21f
21:
ld	hl,(_plvl)
dec	hl
ld	(_plvl),hl
ld	a,l
or	h
jp	nz,20f
jp	21f
21:jp	11f
20:jp	10f
10:
jp	l597
11:
ld	l,(ix+-6)
ld	h,(ix+1+-6)
dec	hl
ld	(ix+-6),l
ld	(ix+1+-6),h
jp	l594
;P:CPP_NEW.C: 1471: 		    if (plvl == 1 && *inptr == ',') {--params; break;}
l597:
ld	de,1
ld	hl,(_plvl)
or	a
sbc	hl,de
jp	nz,20f
jp	21f
21:
ld	hl,(_inptr)
ld	a,(hl)
cp	.low.44
jp	nz,20f
jp	21f
21:jp	11f
20:jp	10f
10:
jp	l598
11:
ld	l,(ix+-6)
ld	h,(ix+1+-6)
dec	hl
ld	(ix+-6),l
ld	(ix+1+-6),h
jp	l594
;P:CPP_NEW.C: 1472: 		    while (inptr < p) {
l598:
jp	l599
l600:
;P:CPP_NEW.C: 1481: 			if (*inptr == '\n' && inptr[-1] != '\\') *inptr = ' ';
ld	hl,(_inptr)
ld	a,(hl)
cp	.low.10
jp	nz,20f
jp	21f
21:
ld	hl,(_inptr)
dec	hl
ld	a,(hl)
cp	.low.92
jp	z,20f
jp	21f
21:jp	11f
20:jp	10f
10:
jp	l602
11:
ld	hl,(_inptr)
ld	(hl),32
;P:CPP_NEW.C: 1482: 			*ca++ = *inptr++;
l602:
ld	hl,(_inptr)
ld	a,(hl)
inc	hl
ld	(_inptr),hl
ld	l,(ix+-2)
ld	h,(ix+1+-2)
inc	hl
ld	(ix+-2),l
ld	(ix+1+-2),h
dec	hl
ld	(hl),a
;P:CPP_NEW.C: 1483: 		    }
l599:
push	iy
pop	de
ld	hl,(_inptr)
global	wrelop
call	wrelop
jp	llt,l600
l601:
;P:CPP_NEW.C: 1484: 		    if (ca > &acttxt[512	])
push	ix
pop	de
ld	hl,-70
add	hl,de
ld	e,(ix+-2)
ld	d,(ix+1+-2)
global	wrelop
call	wrelop
jp	lge,l603
;P:CPP_NEW.C: 1485: 		        pperror("%s: actuals too long", sp->name);
ld	l,(ix+8)
ld	h,(ix+1+8)
ld	c,(hl)
inc	hl
ld	b,(hl)
push	bc
ld	hl,369f
push	hl
call	_pperror
ld	hl,2+2
add	hl,sp
ld	sp,hl
;P:CPP_NEW.C: 1486: 		}
l603:
l595:
jp	l593
l594:
;P:CPP_NEW.C: 1487: 		if (pa >= &actual[ 31	]) ppwarn(match, sp->name);
push	ix
pop	de
ld	hl,-8
add	hl,de
ex	de,hl
ld	l,(ix+-8)
ld	h,(ix+1+-8)
global	wrelop
call	wrelop
jp	llt,l604
ld	l,(ix+8)
ld	h,(ix+1+8)
ld	c,(hl)
inc	hl
ld	b,(hl)
push	bc
ld	hl,F601
push	hl
call	_ppwarn
ld	hl,2+2
add	hl,sp
ld	sp,hl
;P:CPP_NEW.C: 1488: 		else *pa++ = ca;
jp	l605
l604:
ld	e,(ix+-2)
ld	d,(ix+1+-2)
ld	l,(ix+-8)
ld	h,(ix+1+-8)
inc	hl
inc hl
ld	(ix+-8),l
ld	(ix+1+-8),h
dec	hl
dec hl
ld	(hl),e
inc	hl
ld	(hl),d
l605:
;P:CPP_NEW.C: 1489: 	    }
l591:
l592:
ld	hl,(_plvl)
ld	a,l
or	h
jp	nz,l589
l590:
;P:CPP_NEW.C: 1490: 	}
;P:CPP_NEW.C: 1491: 	if (params != 0) ppwarn(match, sp->name);
l588:
ld	a,(ix+-6)
or	(ix+1+-6)
jp	z,l606
ld	l,(ix+8)
ld	h,(ix+1+8)
ld	c,(hl)
inc	hl
ld	b,(hl)
push	bc
ld	hl,F601
push	hl
call	_ppwarn
ld	hl,2+2
add	hl,sp
ld	sp,hl
;P:CPP_NEW.C: 1492: 	while (--params>=0) *pa++ = ""+1;
l606:
jp	l607
l608:
ld	de,379f+1
ld	l,(ix+-8)
ld	h,(ix+1+-8)
inc	hl
inc hl
ld	(ix+-8),l
ld	(ix+1+-8),h
dec	hl
dec hl
ld	(hl),e
inc	hl
ld	(hl),d
l607:
ld	l,(ix+-6)
ld	h,(ix+1+-6)
dec	hl
ld	(ix+-6),l
ld	(ix+1+-6),h
bit	7,h
jp	z,l608
l609:
;P:CPP_NEW.C: 1493: 	--flslvl;  ptrtab=fastab+128;
ld	hl,(_flslvl)
dec	hl
ld	(_flslvl),hl
ld	hl,_fastab+128
ld	(_ptrtab),hl
;P:CPP_NEW.C: 1494:     }
;P:CPP_NEW.C: 1495:     for (;;) {
l583:
l610:
;P:CPP_NEW.C: 1496: 	while (! ((fastab+128)[(int)*--vp]& 32)) {
jp	l613
l614:
;P:CPP_NEW.C: 1497: 	    if ( (pbeg>=(p))) {outptr = inptr = p; p = unfill(p);}
push	iy
pop	de
ld	hl,(_pbeg)
global	wrelop
call	wrelop
jp	llt,l616
ld	(_inptr),iy
ld	(_outptr),iy
push	iy
call	_unfill
exx
ld	hl,2
add	hl,sp
ld	sp,hl
exx
ld	l,l
ld	h,h
push	hl
pop	iy
;P:CPP_NEW.C: 1498: 	    *--p = *vp;
l616:
ld	l,(ix+-4)
ld	h,(ix+1+-4)
ld	l,(hl)
ld	de,-1
add	iy,de
ld	(iy+0),l
;P:CPP_NEW.C: 1499: 	}
l613:
ld	l,(ix+-4)
ld	h,(ix+1+-4)
dec	hl
ld	(ix+-4),l
ld	(ix+1+-4),h
ld	a,(hl)
ld	e,a
rla
sbc	a,a
ld	d,a
ld	hl,_fastab+128
add	hl,de
bit	5&7,(hl)
jp	z,l614
l615:
;P:CPP_NEW.C: 1500: 	if (*vp == warnc) {
ld	a,(_warnc)
ld	e,a
ld	l,(ix+-4)
ld	h,(ix+1+-4)
ld	a,(hl)
cp	e
jp	nz,l617
;P:CPP_NEW.C: 1501: 	    if (vp[-1] == warnc) {
ld	a,(_warnc)
ld	e,a
ld	l,(ix+-4)
ld	h,(ix+1+-4)
dec	hl
ld	a,(hl)
cp	e
jp	nz,l618
;P:CPP_NEW.C: 1502: 		*--p = *--vp;
ld	l,(ix+-4)
ld	h,(ix+1+-4)
dec	hl
ld	(ix+-4),l
ld	(ix+1+-4),h
ld	l,(hl)
ld	de,-1
add	iy,de
ld	(iy+0),l
;P:CPP_NEW.C: 1503: 		continue;
jp	l612
;P:CPP_NEW.C: 1504: 	    }
;P:CPP_NEW.C: 1505: 	    ca = actual[*--vp-1];
l618:
push	ix
pop	de
ld	l,(ix+-4)
ld	h,(ix+1+-4)
dec	hl
ld	(ix+-4),l
ld	(ix+1+-4),h
ld	a,(hl)
ld	l,a
rla
sbc	a,a
ld	h,a
dec	hl
add	hl,hl
add	hl,de
ld	de,-70
add	hl,de
ld	c,(hl)
inc	hl
ld	b,(hl)
ld	(ix+-2),c
ld	(ix+1+-2),b
;P:CPP_NEW.C: 1506: 	    while (*--ca) {
jp	l619
l620:
;P:CPP_NEW.C: 1507: 	        if ( (pbeg>=(p))) {outptr = inptr = p; p = unfill(p);}
push	iy
pop	de
ld	hl,(_pbeg)
global	wrelop
call	wrelop
jp	llt,l622
ld	(_inptr),iy
ld	(_outptr),iy
push	iy
call	_unfill
exx
ld	hl,2
add	hl,sp
ld	sp,hl
exx
ld	l,l
ld	h,h
push	hl
pop	iy
;P:CPP_NEW.C: 1508: 	        *--p = *ca;
l622:
ld	l,(ix+-2)
ld	h,(ix+1+-2)
ld	l,(hl)
ld	de,-1
add	iy,de
ld	(iy+0),l
;P:CPP_NEW.C: 1509: 	    }
l619:
ld	l,(ix+-2)
ld	h,(ix+1+-2)
dec	hl
ld	(ix+-2),l
ld	(ix+1+-2),h
ld	a,(hl)
or	a
jp	anz,l620
l621:
;P:CPP_NEW.C: 1510: 	} else break;
jp	l623
l617:
jp	l611
l623:
;P:CPP_NEW.C: 1511:     }
l612:
jp	l610
l611:
;P:CPP_NEW.C: 1512:     outptr = inptr = p;
ld	(_inptr),iy
ld	(_outptr),iy
;P:CPP_NEW.C: 1513:     return (p);
push	iy
pop	hl
jp	l568
;P:CPP_NEW.C: 1514: }
l568:
jp	cret
f224	equ	-582
;P:CPP_NEW.C: 1519:  char * trmdir(register char *s) {
_trmdir:
call	ncsv
defw	f226
ld	l,(ix+6)
ld	h,(ix+7)
push	hl
pop	iy
;P:CPP_NEW.C: 1520:     register char *p = s;
push	iy
pop	hl
ld	(ix+-2),l
ld	(ix+1+-2),h
;P:CPP_NEW.C: 1522:     while (*p++)
jp	l625
l626:
;P:CPP_NEW.C: 1523: 	;
l625:
ld	l,(ix+-2)
ld	h,(ix+1+-2)
ld	a,(hl)
inc	hl
ld	(ix+-2),l
ld	(ix+1+-2),h
or	a
jp	anz,l626
l627:
;P:CPP_NEW.C: 1524:     --p;
ld	l,(ix+-2)
ld	h,(ix+1+-2)
dec	hl
ld	(ix+-2),l
ld	(ix+1+-2),h
;P:CPP_NEW.C: 1525:     while (p > s && *--p != '/')
jp	l628
l629:
;P:CPP_NEW.C: 1526: 	;
l628:
ld	e,(ix+-2)
ld	d,(ix+1+-2)
push	iy
pop	hl
global	wrelop
call	wrelop
jp	llt,20f
jp	21f
20:
ld	l,(ix+-2)
ld	h,(ix+1+-2)
dec	hl
ld	(ix+-2),l
ld	(ix+1+-2),h
ld	a,(hl)
cp	.low.47
jp	nz,20f
jp	21f
21:jp	11f
20:jp	10f
10:
jp	l629
11:
l630:
;P:CPP_NEW.C: 1530:     *p = '\0';
ld	l,(ix+-2)
ld	h,(ix+1+-2)
ld	(hl),0
;P:CPP_NEW.C: 1531:     return (s);
push	iy
pop	hl
jp	l624
;P:CPP_NEW.C: 1532: }
l624:
jp	cret
f226	equ	-2
;P:CPP_NEW.C: 1537:  char * copy(register char *s) {
_copy:
call	ncsv
defw	f227
ld	l,(ix+6)
ld	h,(ix+7)
push	hl
pop	iy
;P:CPP_NEW.C: 1538:     char *old;
;P:CPP_NEW.C: 1540:     old = savch; while ((*savch++ = *s++) != '\0');
ld	hl,(_savch)
ld	(ix+-2),l
ld	(ix+1+-2),h
jp	l632
l633:
l632:
ld	a,(iy+0)
inc	iy
ld	hl,(_savch)
inc	hl
ld	(_savch),hl
dec	hl
ld	(hl),a
or	a
jp	anz,l633
l634:
;P:CPP_NEW.C: 1541:     return(old);
ld	l,(ix+-2)
ld	h,(ix+1+-2)
jp	l631
;P:CPP_NEW.C: 1542: }
l631:
jp	cret
f227	equ	-2
;P:CPP_NEW.C: 1547:  char * strdex(register char *s, char c) {
global	_strdex
_strdex:
call	ncsv
defw	f228
ld	l,(ix+6)
ld	h,(ix+7)
push	hl
pop	iy
;P:CPP_NEW.C: 1549:     while (*s) if (*s++ == c) return (--s);
jp	l636
l637:
ld	a,(iy+0)
inc	iy
cp	(ix+8)
jp	nz,l639
ld	de,-1
add	iy,de
push	iy
pop	hl
jp	l635
;P:CPP_NEW.C: 1550:     return (0);
l639:
l636:
ld	a,(iy+0)
or	a
jp	anz,l637
l638:
ld	hl,0
jp	l635
;P:CPP_NEW.C: 1551: }
l635:
jp	cret
f228	equ	0
;P:CPP_NEW.C: 1556: int yywrap() { return (1); }
global	_yywrap
_yywrap:
call	ncsv
defw	f229
ld	hl,1
jp	l640
l640:
jp	cret
f229	equ	0
;P:CPP_NEW.C: 1561: int main(int argc, char *argv[]) {
global	_main
_main:
call	ncsv
defw	f230
;P:CPP_NEW.C: 1562:     register int i, c;
;P:CPP_NEW.C: 1563:     register char *p;
;P:CPP_NEW.C: 1564:     char *tf, **cp2;
;P:CPP_NEW.C: 1565:     char *sysdir = ((void *)0);
ld	(ix+-10),.low.0
ld	(ix+1+-10),.high.0
;P:CPP_NEW.C: 1574:     fout = 	(&_iob[1]);
ld	hl,__iob+9
ld	(_fout),hl
;P:CPP_NEW.C: 1575:     p = "_ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789";
ld	iy,389f
;P:CPP_NEW.C: 1576:     i = 0;
ld	(ix+-2),.low.0
ld	(ix+1+-2),.high.0
;P:CPP_NEW.C: 1577:     while ((c = *p++) != '\0') {
jp	l642
l643:
;P:CPP_NEW.C: 1578: 	(fastab+128)[c] |=   1|  4|  2; (toktyp+128)[c]=2		;
ld	e,(ix+-4)
ld	d,(ix+1+-4)
ld	hl,_fastab+128
add	hl,de
ld	a,(hl)
or	.low.7
ld	(hl),a
ld	e,(ix+-4)
ld	d,(ix+1+-4)
ld	hl,_toktyp+128
add	hl,de
ld	(hl),2
;P:CPP_NEW.C: 1587:     }
l642:
ld	a,(iy+0)
inc	iy
ld	l,a
rla
sbc	a,a
ld	h,a
ld	(ix+-4),l
ld	(ix+1+-4),h
ld	a,l
or	h
jp	nz,l643
l644:
;P:CPP_NEW.C: 1588:     p = "0123456789.";
ld	iy,399f
;P:CPP_NEW.C: 1589:     while ((c = *p++) != '\0') {(fastab+128)[c] |=   4|  2; (toktyp+128)[c] = 3		;}
jp	l645
l646:
ld	e,(ix+-4)
ld	d,(ix+1+-4)
ld	hl,_fastab+128
add	hl,de
ld	a,(hl)
or	.low.6
ld	(hl),a
ld	e,(ix+-4)
ld	d,(ix+1+-4)
ld	hl,_toktyp+128
add	hl,de
ld	(hl),3
l645:
ld	a,(iy+0)
inc	iy
ld	l,a
rla
sbc	a,a
ld	h,a
ld	(ix+-4),l
ld	(ix+1+-4),h
ld	a,l
or	h
jp	nz,l646
l647:
;P:CPP_NEW.C: 1591:     p = "\n\"'/\\";
ld	iy,409f
;P:CPP_NEW.C: 1592:     while ((c = *p++) != '\0') (fastab+128)[c] |=   2;
jp	l648
l649:
ld	e,(ix+-4)
ld	d,(ix+1+-4)
ld	hl,_fastab+128
add	hl,de
set	1&7,(hl)
l648:
ld	a,(iy+0)
inc	iy
ld	l,a
rla
sbc	a,a
ld	h,a
ld	(ix+-4),l
ld	(ix+1+-4),h
ld	a,l
or	h
jp	nz,l649
l650:
;P:CPP_NEW.C: 1594:     p = "\n\"'\\";
ld	iy,419f
;P:CPP_NEW.C: 1595:     while ((c = *p++) != '\0') (fastab+128)[c] |=  16;
jp	l651
l652:
ld	e,(ix+-4)
ld	d,(ix+1+-4)
ld	hl,_fastab+128
add	hl,de
set	4&7,(hl)
l651:
ld	a,(iy+0)
inc	iy
ld	l,a
rla
sbc	a,a
ld	h,a
ld	(ix+-4),l
ld	(ix+1+-4),h
ld	a,l
or	h
jp	nz,l652
l653:
;P:CPP_NEW.C: 1597:     p="*\n"; while ((c = *p++)!= '\0') (fastab+128)[c] |=   8;
ld	iy,429f
jp	l654
l655:
ld	e,(ix+-4)
ld	d,(ix+1+-4)
ld	hl,_fastab+128
add	hl,de
set	3&7,(hl)
l654:
ld	a,(iy+0)
inc	iy
ld	l,a
rla
sbc	a,a
ld	h,a
ld	(ix+-4),l
ld	(ix+1+-4),h
ld	a,l
or	h
jp	nz,l655
l656:
;P:CPP_NEW.C: 1598:     (fastab+128)[(int)warnc] |=  32;
ld	a,(_warnc)
ld	e,a
rla
sbc	a,a
ld	d,a
ld	hl,_fastab+128
add	hl,de
set	5&7,(hl)
;P:CPP_NEW.C: 1599:     (fastab+128)['\0'] |=   8| 16|  2| 32;
ld	hl,_fastab+128
ld	a,(hl)
or	.low.58
ld	(hl),a
;P:CPP_NEW.C: 1600:     for (i = 256	; --i >= 0; ) slotab[i] = fastab[i]|  2;
ld	(ix+-2),.low.256
ld	(ix+1+-2),.high.256
jp	l660
l657:
ld	e,(ix+-2)
ld	d,(ix+1+-2)
ld	hl,_fastab
add	hl,de
ld	a,(hl)
or	.low.2
ld	e,(ix+-2)
ld	d,(ix+1+-2)
ld	hl,_slotab
add	hl,de
ld	(hl),a
l659:
l660:
ld	l,(ix+-2)
ld	h,(ix+1+-2)
dec	hl
ld	(ix+-2),l
ld	(ix+1+-2),h
bit	7,h
jp	z,l657
l658:
;P:CPP_NEW.C: 1601:     p = " \t\013\f\r";
ld	iy,439f
;P:CPP_NEW.C: 1602:     while ((c = *p++) != '\0') (toktyp+128)[c] = 1		;
jp	l661
l662:
ld	e,(ix+-4)
ld	d,(ix+1+-4)
ld	hl,_toktyp+128
add	hl,de
ld	(hl),1
l661:
ld	a,(iy+0)
inc	iy
ld	l,a
rla
sbc	a,a
ld	h,a
ld	(ix+-4),l
ld	(ix+1+-4),h
ld	a,l
or	h
jp	nz,l662
l663:
;P:CPP_NEW.C: 1609:     fnames[ifno = 0] = "";
ld	de,_fnames
ld	hl,0
ld	(_ifno),hl
add	hl,hl
add	hl,de
ld	de,449f
ld	(hl),e
inc	hl
ld	(hl),d
;P:CPP_NEW.C: 1610:     newsbf();
call	_newsbf
ld	hl,0
add	hl,sp
ld	sp,hl
;P:CPP_NEW.C: 1617:     for(i = 1; i < argc; i++) {
ld	(ix+-2),.low.1
ld	(ix+1+-2),.high.1
jp	l667
l664:
;P:CPP_NEW.C: 1618: 	switch(argv[i][0]) {
jp	l669
;P:CPP_NEW.C: 1619: 	    case '-':
l670:
;P:CPP_NEW.C: 1620: 		switch(argv[i][1]) {
jp	l672
;P:CPP_NEW.C: 1621: 		    case 'P':	pflag++;
l673:
ld	hl,(_pflag)
inc	hl
ld	(_pflag),hl
;P:CPP_NEW.C: 1622: 		    case 'E':	continue;
l674:
jp	l666
;P:CPP_NEW.C: 1623: 		    case 'R':	++rflag;   continue;
l675:
ld	hl,(_rflag)
inc	hl
ld	(_rflag),hl
jp	l666
;P:CPP_NEW.C: 1624: 		    case 'B':	cppflag--; continue;
l676:
ld	hl,(_cppflag)
dec	hl
ld	(_cppflag),hl
jp	l666
;P:CPP_NEW.C: 1625: 		    case 'C':	passcom++; continue;
l677:
ld	hl,(_passcom)
inc	hl
ld	(_passcom),hl
jp	l666
;P:CPP_NEW.C: 1626: 		    case 'D':
l678:
;P:CPP_NEW.C: 1627: 				if (predef > prespc+20 	) {
ld	de,(_predef)
ld	hl,_prespc+40
global	wrelop
call	wrelop
jp	lge,l679
;P:CPP_NEW.C: 1628: 				    pperror("too many -D options, ignoring %s",argv[i]);
ld	e,(ix+8)
ld	d,(ix+1+8)
ld	l,(ix+-2)
ld	h,(ix+1+-2)
add	hl,hl
add	hl,de
ld	c,(hl)
inc	hl
ld	b,(hl)
push	bc
ld	hl,459f
push	hl
call	_pperror
ld	hl,2+2
add	hl,sp
ld	sp,hl
;P:CPP_NEW.C: 1629: 				    continue;
jp	l666
;P:CPP_NEW.C: 1630: 				}
;P:CPP_NEW.C: 1632: 				if (*(argv[i]+2)) *predef++ = argv[i]+2;
l679:
ld	e,(ix+8)
ld	d,(ix+1+8)
ld	l,(ix+-2)
ld	h,(ix+1+-2)
add	hl,hl
add	hl,de
ld	a,(hl)
inc	hl
ld	h,(hl)
ld	l,a
inc	hl
inc hl
ld	a,(hl)
or	a
jp	az,l680
ld	e,(ix+8)
ld	d,(ix+1+8)
ld	l,(ix+-2)
ld	h,(ix+1+-2)
add	hl,hl
add	hl,de
ld	c,(hl)
inc	hl
ld	b,(hl)
inc	bc
inc bc
ld	hl,(_predef)
inc	hl
inc hl
ld	(_predef),hl
dec	hl
dec hl
ld	(hl),c
inc	hl
ld	(hl),b
;P:CPP_NEW.C: 1633: 				continue;
l680:
jp	l666
;P:CPP_NEW.C: 1634: 		    case 'U':
l681:
;P:CPP_NEW.C: 1635: 				if (prund > punspc+20 	) {
ld	de,(_prund)
ld	hl,_punspc+40
global	wrelop
call	wrelop
jp	lge,l682
;P:CPP_NEW.C: 1636: 				    pperror("too many -U options, ignoring %s",argv[i]);
ld	e,(ix+8)
ld	d,(ix+1+8)
ld	l,(ix+-2)
ld	h,(ix+1+-2)
add	hl,hl
add	hl,de
ld	c,(hl)
inc	hl
ld	b,(hl)
push	bc
ld	hl,469f
push	hl
call	_pperror
ld	hl,2+2
add	hl,sp
ld	sp,hl
;P:CPP_NEW.C: 1637: 				    continue;
jp	l666
;P:CPP_NEW.C: 1638: 				}
;P:CPP_NEW.C: 1639: 				*prund++ = argv[i]+2;
l682:
ld	e,(ix+8)
ld	d,(ix+1+8)
ld	l,(ix+-2)
ld	h,(ix+1+-2)
add	hl,hl
add	hl,de
ld	c,(hl)
inc	hl
ld	b,(hl)
inc	bc
inc bc
ld	hl,(_prund)
inc	hl
inc hl
ld	(_prund),hl
dec	hl
dec hl
ld	(hl),c
inc	hl
ld	(hl),b
;P:CPP_NEW.C: 1640: 				continue;
jp	l666
;P:CPP_NEW.C: 1641: 		    case 'n':
l683:
;P:CPP_NEW.C: 1642: 				if (strcmp(argv[i], "-noinclude") == 0)
ld	hl,479f
push	hl
ld	e,(ix+8)
ld	d,(ix+1+8)
ld	l,(ix+-2)
ld	h,(ix+1+-2)
add	hl,hl
add	hl,de
ld	c,(hl)
inc	hl
ld	b,(hl)
push	bc
call	_strcmp
exx
ld	hl,2+2
add	hl,sp
ld	sp,hl
exx
ld	l,l
ld	h,h
ld	a,l
or	h
jp	nz,l684
;P:CPP_NEW.C: 1643: 				    noinclude = 1;
global	_noinclude
ld	hl,1
ld	(_noinclude),hl
;P:CPP_NEW.C: 1644: 				else
jp	l685
l684:
;P:CPP_NEW.C: 1645: 				    goto unknown;
jp	l686
l685:
;P:CPP_NEW.C: 1646: 				continue;
jp	l666
;P:CPP_NEW.C: 1648: 		    case 'u':
l687:
;P:CPP_NEW.C: 1649: 				if (strcmp(argv[i], "-undef") == 0)
ld	hl,489f
push	hl
ld	e,(ix+8)
ld	d,(ix+1+8)
ld	l,(ix+-2)
ld	h,(ix+1+-2)
add	hl,hl
add	hl,de
ld	c,(hl)
inc	hl
ld	b,(hl)
push	bc
call	_strcmp
exx
ld	hl,2+2
add	hl,sp
ld	sp,hl
exx
ld	l,l
ld	h,h
ld	a,l
or	h
jp	nz,l688
;P:CPP_NEW.C: 1650: 				    nopredef = 1;
global	_nopredef
ld	hl,1
ld	(_nopredef),hl
;P:CPP_NEW.C: 1651: 				else
jp	l689
l688:
;P:CPP_NEW.C: 1652: 				    goto unknown;
jp	l686
l689:
;P:CPP_NEW.C: 1653: 				continue;
jp	l666
;P:CPP_NEW.C: 1676: 		    case 'I':
l690:
;P:CPP_NEW.C: 1677: 				if (nd >= 8	) 
ld	de,8
ld	hl,(_nd)
global	wrelop
call	wrelop
jp	alt,l691
;P:CPP_NEW.C: 1678: 				    pperror("excessive -I file (%s) ignored", argv[i]);
ld	e,(ix+8)
ld	d,(ix+1+8)
ld	l,(ix+-2)
ld	h,(ix+1+-2)
add	hl,hl
add	hl,de
ld	c,(hl)
inc	hl
ld	b,(hl)
push	bc
ld	hl,499f
push	hl
call	_pperror
ld	hl,2+2
add	hl,sp
ld	sp,hl
;P:CPP_NEW.C: 1679: 				else dirs[nd++] = argv[i]+2;
jp	l692
l691:
ld	e,(ix+8)
ld	d,(ix+1+8)
ld	l,(ix+-2)
ld	h,(ix+1+-2)
add	hl,hl
add	hl,de
ld	c,(hl)
inc	hl
ld	b,(hl)
inc	bc
inc bc
ld	de,_dirs
ld	hl,(_nd)
inc	hl
ld	(_nd),hl
dec	hl
add	hl,hl
add	hl,de
ld	(hl),c
inc	hl
ld	(hl),b
l692:
;P:CPP_NEW.C: 1680: 				continue;
jp	l666
;P:CPP_NEW.C: 1686: 		    case 'T':
l693:
;P:CPP_NEW.C: 1687: 				symlen = 8;
ld	hl,8
ld	(_symlen),hl
;P:CPP_NEW.C: 1688: 				continue;
jp	l666
;P:CPP_NEW.C: 1690: 		    case 'H':
l694:
;P:CPP_NEW.C: 1691: 				hflag++;
ld	hl,(_hflag)
inc	hl
ld	(_hflag),hl
;P:CPP_NEW.C: 1692: 				continue;
jp	l666
;P:CPP_NEW.C: 1698: 		    case 'Y':
l695:
;P:CPP_NEW.C: 1699: 				sysdir = argv[i]+2;
ld	e,(ix+8)
ld	d,(ix+1+8)
ld	l,(ix+-2)
ld	h,(ix+1+-2)
add	hl,hl
add	hl,de
ld	c,(hl)
inc	hl
ld	b,(hl)
inc	bc
inc bc
ld	(ix+-10),c
ld	(ix+1+-10),b
;P:CPP_NEW.C: 1700: 				continue;
jp	l666
;P:CPP_NEW.C: 1702: 		    case '\0': 	continue;
l696:
jp	l666
;P:CPP_NEW.C: 1703: 		    default:
l697:
;P:CPP_NEW.C: 1704: unknown:
l686:
;P:CPP_NEW.C: 1705: 				pperror("unknown flag %s", argv[i]);
ld	e,(ix+8)
ld	d,(ix+1+8)
ld	l,(ix+-2)
ld	h,(ix+1+-2)
add	hl,hl
add	hl,de
ld	c,(hl)
inc	hl
ld	b,(hl)
push	bc
ld	hl,509f
push	hl
call	_pperror
ld	hl,2+2
add	hl,sp
ld	sp,hl
;P:CPP_NEW.C: 1706: 				continue;
jp	l666
;P:CPP_NEW.C: 1707: 		}
jp	l671
l672:
ld	e,(ix+8)
ld	d,(ix+1+8)
ld	l,(ix+-2)
ld	h,(ix+1+-2)
add	hl,hl
add	hl,de
ld	a,(hl)
inc	hl
ld	h,(hl)
ld	l,a
inc	hl
ld	a,(hl)
or	a
jp	z,l696
cp	66
jp	z,l676
cp	67
jp	z,l677
cp	68
jp	z,l678
cp	69
jp	z,l674
cp	72
jp	z,l694
cp	73
jp	z,l690
cp	80
jp	z,l673
cp	82
jp	z,l675
cp	84
jp	z,l693
cp	85
jp	z,l681
cp	89
jp	z,l695
cp	110
jp	z,l683
cp	117
jp	z,l687
jp	l697
l671:
;P:CPP_NEW.C: 1708: 	    default:
l698:
;P:CPP_NEW.C: 1713: 		if (i < argc) {
ld	e,(ix+6)
ld	d,(ix+1+6)
ld	l,(ix+-2)
ld	h,(ix+1+-2)
global	wrelop
call	wrelop
jp	age,l699
;P:CPP_NEW.C: 1714: 		    fin = freopen(argv[i], "r", 	(&_iob[0]));
global	_freopen
ld	hl,__iob
push	hl
ld	hl,519f
push	hl
ld	e,(ix+8)
ld	d,(ix+1+8)
ld	l,(ix+-2)
ld	h,(ix+1+-2)
add	hl,hl
add	hl,de
ld	c,(hl)
inc	hl
ld	b,(hl)
push	bc
call	_freopen
exx
ld	hl,2+2+2
add	hl,sp
ld	sp,hl
exx
ld	l,l
ld	h,h
ld	(_fin),hl
;P:CPP_NEW.C: 1715: 		    if (0 == fin) {
ld	hl,(_fin)
ld	a,l
or	h
jp	nz,l700
;P:CPP_NEW.C: 1716: 		        pperror("No source file %s", argv[i]); exit(8);
ld	e,(ix+8)
ld	d,(ix+1+8)
ld	l,(ix+-2)
ld	h,(ix+1+-2)
add	hl,hl
add	hl,de
ld	c,(hl)
inc	hl
ld	b,(hl)
push	bc
ld	hl,529f
push	hl
call	_pperror
ld	hl,2+2
add	hl,sp
ld	sp,hl
ld	hl,8
push	hl
call	_exit
ld	hl,2
add	hl,sp
ld	sp,hl
;P:CPP_NEW.C: 1717: 		    }
;P:CPP_NEW.C: 1718: 		    fnames[ifno] = copy(argv[i]);
l700:
ld	e,(ix+8)
ld	d,(ix+1+8)
ld	l,(ix+-2)
ld	h,(ix+1+-2)
add	hl,hl
add	hl,de
ld	c,(hl)
inc	hl
ld	b,(hl)
push	bc
call	_copy
exx
ld	hl,2
add	hl,sp
ld	sp,hl
exx
ld	e,l
ld	d,h
push	de
ld	de,_fnames
ld	hl,(_ifno)
add	hl,hl
add	hl,de
pop	de
ld	(hl),e
inc	hl
ld	(hl),d
;P:CPP_NEW.C: 1719: 		    input        = copy(argv[i]);
global	_input
ld	e,(ix+8)
ld	d,(ix+1+8)
ld	l,(ix+-2)
ld	h,(ix+1+-2)
add	hl,hl
add	hl,de
ld	c,(hl)
inc	hl
ld	b,(hl)
push	bc
call	_copy
exx
ld	hl,2
add	hl,sp
ld	sp,hl
exx
ld	l,l
ld	h,h
ld	(_input),hl
;P:CPP_NEW.C: 1720: 		    dirs[0]      = dirnams[ifno] = trmdir(argv[i]);
ld	e,(ix+8)
ld	d,(ix+1+8)
ld	l,(ix+-2)
ld	h,(ix+1+-2)
add	hl,hl
add	hl,de
ld	c,(hl)
inc	hl
ld	b,(hl)
push	bc
call	_trmdir
exx
ld	hl,2
add	hl,sp
ld	sp,hl
exx
ld	e,l
ld	d,h
push	de
ld	de,_dirnams
ld	hl,(_ifno)
add	hl,hl
add	hl,de
pop	de
ld	(hl),e
inc	hl
ld	(hl),d
ld	(_dirs),de
;P:CPP_NEW.C: 1721: 	            if(++i < argc) {
ld	e,(ix+6)
ld	d,(ix+1+6)
ld	l,(ix+-2)
ld	h,(ix+1+-2)
inc	hl
ld	(ix+-2),l
ld	(ix+1+-2),h
global	wrelop
call	wrelop
jp	age,l701
;P:CPP_NEW.C: 1722: 	                fout = freopen(&argv[i][0], "w", 	(&_iob[1]));
ld	hl,__iob+9
push	hl
ld	hl,539f
push	hl
ld	e,(ix+8)
ld	d,(ix+1+8)
ld	l,(ix+-2)
ld	h,(ix+1+-2)
add	hl,hl
add	hl,de
ld	c,(hl)
inc	hl
ld	b,(hl)
push	bc
call	_freopen
exx
ld	hl,2+2+2
add	hl,sp
ld	sp,hl
exx
ld	l,l
ld	h,h
ld	(_fout),hl
;P:CPP_NEW.C: 1723: 	                if(fout == 0) {
ld	hl,(_fout)
ld	a,l
or	h
jp	nz,l702
;P:CPP_NEW.C: 1724: 	                    pperror("Can't create %s", &argv[i][0]);
ld	e,(ix+8)
ld	d,(ix+1+8)
ld	l,(ix+-2)
ld	h,(ix+1+-2)
add	hl,hl
add	hl,de
ld	c,(hl)
inc	hl
ld	b,(hl)
push	bc
ld	hl,549f
push	hl
call	_pperror
ld	hl,2+2
add	hl,sp
ld	sp,hl
;P:CPP_NEW.C: 1725: 	                    exit(8);
ld	hl,8
push	hl
call	_exit
ld	hl,2
add	hl,sp
ld	sp,hl
;P:CPP_NEW.C: 1726: 	                }
;P:CPP_NEW.C: 1727: 		    }
l702:
;P:CPP_NEW.C: 1728: 		}
l701:
;P:CPP_NEW.C: 1747: 	}
l699:
jp	l668
l669:
ld	e,(ix+8)
ld	d,(ix+1+8)
ld	l,(ix+-2)
ld	h,(ix+1+-2)
add	hl,hl
add	hl,de
ld	a,(hl)
inc	hl
ld	h,(hl)
ld	l,a
ld	a,(hl)
cp	45
jp	z,l670
jp	l698
l668:
;P:CPP_NEW.C: 1748:     }
l666:
ld	l,(ix+-2)
ld	h,(ix+1+-2)
inc	hl
ld	(ix+-2),l
ld	(ix+1+-2),h
l667:
ld	e,(ix+6)
ld	d,(ix+1+6)
ld	l,(ix+-2)
ld	h,(ix+1+-2)
global	wrelop
call	wrelop
jp	alt,l664
l665:
;P:CPP_NEW.C: 1779:     fins[ifno] = fin;
ld	de,_fins
ld	hl,(_ifno)
add	hl,hl
add	hl,de
ld	de,(_fin)
ld	(hl),e
inc	hl
ld	(hl),d
;P:CPP_NEW.C: 1780:     exfail = 0;
ld	hl,0
ld	(_exfail),hl
;P:CPP_NEW.C: 1784:     if (sysdir != ((void *)0)) {
ld	a,(ix+-10)
or	(ix+1+-10)
jp	z,l703
;P:CPP_NEW.C: 1785: 	dirs[nd++] = sysdir;
ld	de,_dirs
ld	hl,(_nd)
inc	hl
ld	(_nd),hl
dec	hl
add	hl,hl
add	hl,de
ld	e,(ix+-10)
ld	d,(ix+1+-10)
ld	(hl),e
inc	hl
ld	(hl),d
;P:CPP_NEW.C: 1786:     } else if (!noinclude) {
jp	l704
l703:
ld	hl,(_noinclude)
ld	a,l
or	h
jp	nz,l705
;P:CPP_NEW.C: 1789: 	dirs[nd++] = 0;
ld	de,_dirs
ld	hl,(_nd)
inc	hl
ld	(_nd),hl
dec	hl
add	hl,hl
add	hl,de
ld	de,0
ld	(hl),e
inc	hl
ld	(hl),d
;P:CPP_NEW.C: 1797:     }
;P:CPP_NEW.C: 1798:     dirs[nd++] = 0;
l705:
l704:
ld	de,_dirs
ld	hl,(_nd)
inc	hl
ld	(_nd),hl
dec	hl
add	hl,hl
add	hl,de
ld	de,0
ld	(hl),e
inc	hl
ld	(hl),d
;P:CPP_NEW.C: 1799:     defloc    = ppsym("define");
ld	hl,559f
push	hl
call	_ppsym
exx
ld	hl,2
add	hl,sp
ld	sp,hl
exx
ld	l,l
ld	h,h
ld	(_defloc),hl
;P:CPP_NEW.C: 1800:     udfloc    = ppsym("undef");
ld	hl,569f
push	hl
call	_ppsym
exx
ld	hl,2
add	hl,sp
ld	sp,hl
exx
ld	l,l
ld	h,h
ld	(_udfloc),hl
;P:CPP_NEW.C: 1801:     incloc    = ppsym("include");
ld	hl,579f
push	hl
call	_ppsym
exx
ld	hl,2
add	hl,sp
ld	sp,hl
exx
ld	l,l
ld	h,h
ld	(_incloc),hl
;P:CPP_NEW.C: 1802:     elsloc    = ppsym("else");
ld	hl,589f
push	hl
call	_ppsym
exx
ld	hl,2
add	hl,sp
ld	sp,hl
exx
ld	l,l
ld	h,h
ld	(_elsloc),hl
;P:CPP_NEW.C: 1803:     eifloc    = ppsym("endif");
ld	hl,599f
push	hl
call	_ppsym
exx
ld	hl,2
add	hl,sp
ld	sp,hl
exx
ld	l,l
ld	h,h
ld	(_eifloc),hl
;P:CPP_NEW.C: 1804:     elifloc   = ppsym("elif");
ld	hl,609f
push	hl
call	_ppsym
exx
ld	hl,2
add	hl,sp
ld	sp,hl
exx
ld	l,l
ld	h,h
ld	(_elifloc),hl
;P:CPP_NEW.C: 1805:     ifdloc    = ppsym("ifdef");
ld	hl,619f
push	hl
call	_ppsym
exx
ld	hl,2
add	hl,sp
ld	sp,hl
exx
ld	l,l
ld	h,h
ld	(_ifdloc),hl
;P:CPP_NEW.C: 1806:     ifnloc    = ppsym("ifndef");
ld	hl,629f
push	hl
call	_ppsym
exx
ld	hl,2
add	hl,sp
ld	sp,hl
exx
ld	l,l
ld	h,h
ld	(_ifnloc),hl
;P:CPP_NEW.C: 1807:     ifloc     = ppsym("if");
ld	hl,639f
push	hl
call	_ppsym
exx
ld	hl,2
add	hl,sp
ld	sp,hl
exx
ld	l,l
ld	h,h
ld	(_ifloc),hl
;P:CPP_NEW.C: 1808:     lneloc    = ppsym("line");
ld	hl,649f
push	hl
call	_ppsym
exx
ld	hl,2
add	hl,sp
ld	sp,hl
exx
ld	l,l
ld	h,h
ld	(_lneloc),hl
;P:CPP_NEW.C: 1809:     idtloc    = ppsym("ident");
ld	hl,659f
push	hl
call	_ppsym
exx
ld	hl,2
add	hl,sp
ld	sp,hl
exx
ld	l,l
ld	h,h
ld	(_idtloc),hl
;P:CPP_NEW.C: 1810:     pragmaloc = ppsym("pragma");
ld	hl,669f
push	hl
call	_ppsym
exx
ld	hl,2
add	hl,sp
ld	sp,hl
exx
ld	l,l
ld	h,h
ld	(_pragmaloc),hl
;P:CPP_NEW.C: 1811:     errorloc  = ppsym("error");
ld	hl,679f
push	hl
call	_ppsym
exx
ld	hl,2
add	hl,sp
ld	sp,hl
exx
ld	l,l
ld	h,h
ld	(_errorloc),hl
;P:CPP_NEW.C: 1813:     asmloc    = ppsym("asm");
ld	hl,689f
push	hl
call	_ppsym
exx
ld	hl,2
add	hl,sp
ld	sp,hl
exx
ld	l,l
ld	h,h
ld	(_asmloc),hl
;P:CPP_NEW.C: 1814:     easmloc   = ppsym("endasm");
ld	hl,699f
push	hl
call	_ppsym
exx
ld	hl,2
add	hl,sp
ld	sp,hl
exx
ld	l,l
ld	h,h
ld	(_easmloc),hl
;P:CPP_NEW.C: 1817:     for (i = sizeof(macbit)/sizeof(macbit[0]); --i >= 0; )
ld	(ix+-2),.low.267
ld	(ix+1+-2),.high.267
jp	l709
l706:
;P:CPP_NEW.C: 1818:         macbit[i] = 0;
ld	e,(ix+-2)
ld	d,(ix+1+-2)
ld	hl,_macbit
add	hl,de
ld	(hl),0
l708:
l709:
ld	l,(ix+-2)
ld	h,(ix+1+-2)
dec	hl
ld	(ix+-2),l
ld	(ix+1+-2),h
bit	7,h
jp	z,l706
l707:
;P:CPP_NEW.C: 1820:     if (!nopredef) {
ld	hl,(_nopredef)
ld	a,l
or	h
jp	nz,l710
;P:CPP_NEW.C: 1821: 	varloc = 0;
global	_varloc
ld	hl,0
ld	(_varloc),hl
;P:CPP_NEW.C: 1827: 	ysysloc = stsym("CPM");
global	_ysysloc
ld	hl,709f
push	hl
call	_stsym
exx
ld	hl,2
add	hl,sp
ld	sp,hl
exx
ld	l,l
ld	h,h
ld	(_ysysloc),hl
;P:CPP_NEW.C: 1830:     }
;P:CPP_NEW.C: 1831:     ucpuloc = stsym("z80");
l710:
global	_ucpuloc
ld	hl,719f
push	hl
call	_stsym
exx
ld	hl,2
add	hl,sp
ld	sp,hl
exx
ld	l,l
ld	h,h
ld	(_ucpuloc),hl
;P:CPP_NEW.C: 1832:     ulnloc  = stsym("__LINE__");
ld	hl,729f
push	hl
call	_stsym
exx
ld	hl,2
add	hl,sp
ld	sp,hl
exx
ld	l,l
ld	h,h
ld	(_ulnloc),hl
;P:CPP_NEW.C: 1833:     uflloc  = stsym("__FILE__");
ld	hl,739f
push	hl
call	_stsym
exx
ld	hl,2
add	hl,sp
ld	sp,hl
exx
ld	l,l
ld	h,h
ld	(_uflloc),hl
;P:CPP_NEW.C: 1835:     tf  = fnames[ifno]; fnames[ifno] = "command line";
ld	de,_fnames
ld	hl,(_ifno)
add	hl,hl
add	hl,de
ld	c,(hl)
inc	hl
ld	b,(hl)
ld	(ix+-6),c
ld	(ix+1+-6),b
ld	de,_fnames
ld	hl,(_ifno)
add	hl,hl
add	hl,de
ld	de,749f
ld	(hl),e
inc	hl
ld	(hl),d
;P:CPP_NEW.C: 1836:     lineno[ifno] = 1;
ld	de,_lineno
ld	hl,(_ifno)
add	hl,hl
add	hl,de
ld	de,1
ld	(hl),e
inc	hl
ld	(hl),d
;P:CPP_NEW.C: 1837:     cp2 = prespc;
ld	hl,_prespc
ld	(ix+-8),l
ld	(ix+1+-8),h
;P:CPP_NEW.C: 1838:     while (cp2 < predef) stsym(*cp2++);
jp	l711
l712:
ld	l,(ix+-8)
ld	h,(ix+1+-8)
ld	c,(hl)
inc	hl
ld	b,(hl)
dec	hl
inc	hl
inc hl
ld	(ix+-8),l
ld	(ix+1+-8),h
push	bc
call	_stsym
ld	hl,2
add	hl,sp
ld	sp,hl
l711:
ld	de,(_predef)
ld	l,(ix+-8)
ld	h,(ix+1+-8)
global	wrelop
call	wrelop
jp	llt,l712
l713:
;P:CPP_NEW.C: 1839:     cp2 = punspc;
ld	hl,_punspc
ld	(ix+-8),l
ld	(ix+1+-8),h
;P:CPP_NEW.C: 1840:     while (cp2 < prund) {
jp	l714
l715:
;P:CPP_NEW.C: 1841: 	if ((p = strdex(*cp2, '=')) != ((void *)0)) *p++ = '\0';
ld	l,.low.61
push	hl
ld	l,(ix+-8)
ld	h,(ix+1+-8)
ld	c,(hl)
inc	hl
ld	b,(hl)
push	bc
call	_strdex
exx
ld	hl,2+2
add	hl,sp
ld	sp,hl
exx
ld	l,l
ld	h,h
push	hl
pop	iy
ld	a,l
or	h
jp	z,l717
ld	(iy+0),0
inc	iy
;P:CPP_NEW.C: 1842: 	if (strlen(*cp2) > symlen) (*cp2)[symlen] = '\0';
l717:
global	_strlen
ld	l,(ix+-8)
ld	h,(ix+1+-8)
ld	c,(hl)
inc	hl
ld	b,(hl)
push	bc
call	_strlen
exx
ld	hl,2
add	hl,sp
ld	sp,hl
exx
ld	e,l
ld	d,h
ld	hl,(_symlen)
global	wrelop
call	wrelop
jp	lge,l718
ld	de,(_symlen)
ld	l,(ix+-8)
ld	h,(ix+1+-8)
ld	a,(hl)
inc	hl
ld	h,(hl)
ld	l,a
add	hl,de
ld	(hl),0
;P:CPP_NEW.C: 1843: 	lookup(*cp2++,  0xFE	);
l718:
ld	hl,254
push	hl
ld	l,(ix+-8)
ld	h,(ix+1+-8)
ld	c,(hl)
inc	hl
ld	b,(hl)
dec	hl
inc	hl
inc hl
ld	(ix+-8),l
ld	(ix+1+-8),h
push	bc
call	_lookup
ld	hl,2+2
add	hl,sp
ld	sp,hl
;P:CPP_NEW.C: 1844:     }
l714:
ld	de,(_prund)
ld	l,(ix+-8)
ld	h,(ix+1+-8)
global	wrelop
call	wrelop
jp	llt,l715
l716:
;P:CPP_NEW.C: 1845:     fnames[ifno] = tf;
ld	de,_fnames
ld	hl,(_ifno)
add	hl,hl
add	hl,de
ld	e,(ix+-6)
ld	d,(ix+1+-6)
ld	(hl),e
inc	hl
ld	(hl),d
;P:CPP_NEW.C: 1846:     pbeg = buffer+symlen; pbuf = pbeg+512	;
global	_buffer
ld	de,(_symlen)
ld	hl,_buffer
add	hl,de
ld	(_pbeg),hl
ld	de,(_pbeg)
ld	hl,512
add	hl,de
ld	(_pbuf),hl
;P:CPP_NEW.C: 1847:     pend = pbuf+512	;
ld	de,(_pbuf)
ld	hl,512
add	hl,de
ld	(_pend),hl
;P:CPP_NEW.C: 1849:     trulvl = 0; flslvl = 0;
ld	hl,0
ld	(_trulvl),hl
ld	hl,0
ld	(_flslvl),hl
;P:CPP_NEW.C: 1850:     lineno[0] = 1; sayline(""	);
ld	hl,1
ld	(_lineno),hl
ld	hl,759f
push	hl
call	_sayline
ld	hl,2
add	hl,sp
ld	sp,hl
;P:CPP_NEW.C: 1851:     outptr = inptr = pend;
ld	hl,(_pend)
ld	(_inptr),hl
ld	(_outptr),hl
;P:CPP_NEW.C: 1855:     control(pend);
ld	hl,(_pend)
push	hl
call	_control
ld	hl,2
add	hl,sp
ld	sp,hl
;P:CPP_NEW.C: 1856:     return (exfail);
ld	hl,(_exfail)
jp	l641
;P:CPP_NEW.C: 1857: }
l641:
jp	cret
f230	equ	-10
;P:CPP_NEW.C: 1866:  void newsbf() {
_newsbf:
call	ncsv
defw	f231
;P:CPP_NEW.C: 1868:     if ((sbf = malloc(12000 )) == ((void *)0)) {
global	_malloc
ld	hl,12000
push	hl
call	_malloc
exx
ld	hl,2
add	hl,sp
ld	sp,hl
exx
ld	l,l
ld	h,h
ld	(_sbf),hl
ld	a,l
or	h
jp	nz,l720
;P:CPP_NEW.C: 1869: 	pperror("no buffer space");
ld	hl,769f
push	hl
call	_pperror
ld	hl,2
add	hl,sp
ld	sp,hl
;P:CPP_NEW.C: 1870: 	exit(exfail);
ld	hl,(_exfail)
push	hl
call	_exit
ld	hl,2
add	hl,sp
ld	sp,hl
;P:CPP_NEW.C: 1871:     }
;P:CPP_NEW.C: 1872:     savch = sbf;
l720:
ld	hl,(_sbf)
ld	(_savch),hl
;P:CPP_NEW.C: 1873: }
l719:
jp	cret
f231	equ	0
;P:CPP_NEW.C: 1878:  struct symtab * newsym() {
_newsym:
call	ncsv
defw	f232
;P:CPP_NEW.C: 1879:     static int		  nelem = 0;
psect	data
F629:
defw	0
;P:CPP_NEW.C: 1880:     static struct symtab *syms = ((void *)0);
F630:
defw	0
;P:CPP_NEW.C: 1882:     if (nelem <= 0) {
psect	text
ld	de,(F629)
ld	hl,0
global	wrelop
call	wrelop
jp	alt,l722
;P:CPP_NEW.C: 1883: 	syms = malloc(340		 * sizeof (struct symtab));
ld	hl,2040
push	hl
call	_malloc
exx
ld	hl,2
add	hl,sp
ld	sp,hl
exx
ld	l,l
ld	h,h
ld	(F630),hl
;P:CPP_NEW.C: 1884: 	if (syms == ((void *)0)) {
ld	hl,(F630)
ld	a,l
or	h
jp	nz,l723
;P:CPP_NEW.C: 1885: 	    pperror("too many defines");
ld	hl,779f
push	hl
call	_pperror
ld	hl,2
add	hl,sp
ld	sp,hl
;P:CPP_NEW.C: 1886: 	    exit(exfail);
ld	hl,(_exfail)
push	hl
call	_exit
ld	hl,2
add	hl,sp
ld	sp,hl
;P:CPP_NEW.C: 1887: 	}
;P:CPP_NEW.C: 1888: 	nelem = 340		;
l723:
ld	hl,340
ld	(F629),hl
;P:CPP_NEW.C: 1889:     }
;P:CPP_NEW.C: 1890:     nelem--;
l722:
ld	hl,(F629)
dec	hl
ld	(F629),hl
;P:CPP_NEW.C: 1891:     return (syms++);
ld	hl,(F630)
ld	bc,6
add	hl,bc
ld	(F630),hl
sbc	hl,bc
jp	l721
;P:CPP_NEW.C: 1892: }
l721:
jp	cret
f232	equ	0
;P:CPP_NEW.C: 1898: 	struct _iobuf * open1(char * name, char * mode) {
_open1:
call	ncsv
defw	f235
;P:CPP_NEW.C: 1899:     register 	struct _iobuf * stream;
;P:CPP_NEW.C: 1901:     stream = 	(&_iob[0]);
ld	iy,__iob
;P:CPP_NEW.C: 1902:     while(stream != 	(&_iob[0])+8) {
jp	l725
l726:
;P:CPP_NEW.C: 1903: 	if((stream->_flag & 3) == 0) break;
ld	a,(iy+6)
and	.low.3
ld	l,a
ld	a,(iy+1+6)
and	.low.0
ld	h,a
ld	a,l
or	h
jp	nz,l728
jp	l727
;P:CPP_NEW.C: 1904: 	++stream;
l728:
ld	de,9
add	iy,de
;P:CPP_NEW.C: 1905:     }
l725:
ld	de,__iob+72
push	iy
pop	hl
or	a
sbc	hl,de
jp	nz,l726
l727:
;P:CPP_NEW.C: 1906:     if(stream == 	(&_iob[0])+8) return 0; 
ld	de,__iob+72
push	iy
pop	hl
or	a
sbc	hl,de
jp	nz,l729
ld	hl,0
jp	l724
;P:CPP_NEW.C: 1907:     return freopen(name, mode, stream);
l729:
push	iy
ld	l,(ix+8)
ld	h,(ix+1+8)
push	hl
ld	l,(ix+6)
ld	h,(ix+1+6)
push	hl
call	_freopen
exx
ld	hl,2+2+2
add	hl,sp
ld	sp,hl
exx
ld	l,l
ld	h,h
jp	l724
;P:CPP_NEW.C: 1908: }
l724:
jp	cret
f235	equ	0
;P:CPP_NEW.C: 1913: int read1(char * buf, int p2, unsigned count, register 	struct _iobuf * st) {
_read1:
call	ncsv
defw	f236
ld	l,(ix+12)
ld	h,(ix+13)
push	hl
pop	iy
;P:CPP_NEW.C: 1914:     char * ptr_buf;
;P:CPP_NEW.C: 1915:     unsigned int    tot_count;
;P:CPP_NEW.C: 1916:     unsigned int    next_char;
;P:CPP_NEW.C: 1918:     tot_count = p2 * count;
ld	e,(ix+10)
ld	d,(ix+1+10)
ld	l,(ix+8)
ld	h,(ix+1+8)
global	lmul
call	lmul
ld	(ix+-4),l
ld	(ix+1+-4),h
;P:CPP_NEW.C: 1919:     ptr_buf = buf;
ld	l,(ix+6)
ld	h,(ix+1+6)
ld	(ix+-2),l
ld	(ix+1+-2),h
;P:CPP_NEW.C: 1921:     while(tot_count != 0) {
jp	l731
l732:
;P:CPP_NEW.C: 1922: 	if((next_char = fgetc(st)) == 	(-1)) break;
global	_fgetc
push	iy
call	_fgetc
exx
ld	hl,2
add	hl,sp
ld	sp,hl
exx
ld	l,l
ld	h,h
ld	(ix+-6),l
ld	(ix+1+-6),h
ld	de,-1
or	a
sbc	hl,de
jp	nz,l734
jp	l733
;P:CPP_NEW.C: 1923: 	--tot_count;
l734:
ld	de,-1
ld	l,(ix+-4)
ld	h,(ix+1+-4)
add	hl,de
ld	(ix+-4),l
ld	(ix+1+-4),h
;P:CPP_NEW.C: 1924: 	*ptr_buf++ = (char)next_char;
ld	a,(ix+-6)
ld	l,(ix+-2)
ld	h,(ix+1+-2)
inc	hl
ld	(ix+-2),l
ld	(ix+1+-2),h
dec	hl
ld	(hl),a
;P:CPP_NEW.C: 1925:     }
l731:
ld	a,(ix+-4)
or	(ix+1+-4)
jp	nz,l732
l733:
;P:CPP_NEW.C: 1926:     return count - (tot_count + p2 - 1)/p2;
ld	e,(ix+8)
ld	d,(ix+1+8)
ld	l,(ix+-4)
ld	h,(ix+1+-4)
add	hl,de
ld	de,-1
add	hl,de
ld	e,(ix+8)
ld	d,(ix+1+8)
global	ldiv
call	ldiv
ex	de,hl
ld	l,(ix+10)
ld	h,(ix+1+10)
or	a
sbc	hl,de
jp	l730
;P:CPP_NEW.C: 1927: }
l730:
jp	cret
f236	equ	-6
psect	data
19:
defb	35,32,37,100,32,34,37,115,34,10,0
29:
defb	116,111,107,101,110,32,116,111,111,32,108,111,110,103,0
39:
defb	37,115,58,32,117,110,116,101,114,109,105,110,97,116,101,100
defb	32,109,97,99,114,111,32,99,97,108,108,0
49:
defb	50,0
59:
defb	37,115,58,32,116,111,111,32,109,117,99,104,32,112,117,115
defb	104,98,97,99,107,0
69:
defb	116,111,107,101,110,32,116,111,111,32,108,111,110,103,0
79:
defb	98,97,100,32,105,110,99,108,117,100,101,32,115,121,110,116
defb	97,120,0
89:
defb	85,110,114,101,97,115,111,110,97,98,108,101,32,105,110,99
defb	108,117,100,101,32,110,101,115,116,105,110,103,0
99:
defb	114,0
109:
defb	67,97,110,39,116,32,102,105,110,100,32,105,110,99,108,117
defb	100,101,32,102,105,108,101,32,37,115,0
119:
defb	49,0
129:
defb	37,115,10,0
139:
defb	105,108,108,101,103,97,108,32,109,97,99,114,111,32,110,97
defb	109,101,0
149:
defb	0
159:
defb	37,115,58,32,109,105,115,115,105,110,103,32,41,0
169:
defb	98,97,100,32,102,111,114,109,97,108,58,32,37,115,0
179:
defb	116,111,111,32,109,97,110,121,32,102,111,114,109,97,108,115
defb	58,32,37,115,0
189:
defb	37,115,32,114,101,100,101,102,105,110,101,100,0
199:
defb	0
209:
defb	73,102,45,108,101,115,115,32,101,110,100,105,102,0
219:
defb	0
229:
defb	73,102,45,108,101,115,115,32,101,108,105,102,0
239:
defb	0
249:
defb	73,102,45,108,101,115,115,32,101,108,115,101,0
259:
defb	84,111,111,32,109,97,110,121,32,35,101,108,115,101,39,115
defb	0
269:
defb	98,97,100,32,110,117,109,98,101,114,32,102,111,114,32,35
defb	108,105,110,101,0
279:
defb	98,97,100,32,110,117,109,98,101,114,32,102,111,114,32,35
defb	108,105,110,101,0
289:
defb	98,97,100,32,110,117,109,98,101,114,32,102,111,114,32,35
defb	108,105,110,101,0
299:
defb	117,110,100,101,102,105,110,101,100,32,99,111,110,116,114,111
defb	108,0
309:
defb	101,120,116,114,97,32,116,111,107,101,110,115,32,40,105,103
defb	110,111,114,101,100,41,32,97,102,116,101,114,32,100,105,114
defb	101,99,116,105,118,101,0
319:
defb	32,49,0
329:
defb	37,115,58,32,0
339:
defb	37,100,58,32,0
349:
defb	37,115,58,32,109,97,99,114,111,32,114,101,99,117,114,115
defb	105,111,110,0
359:
defb	37,100,0
369:
defb	37,115,58,32,97,99,116,117,97,108,115,32,116,111,111,32
defb	108,111,110,103,0
379:
defb	0
389:
defb	95,65,66,67,68,69,70,71,72,73,74,75,76,77,78,79
defb	80,81,82,83,84,85,86,87,88,89,90,97,98,99,100,101
defb	102,103,104,105,106,107,108,109,110,111,112,113,114,115,116,117
defb	118,119,120,121,122,48,49,50,51,52,53,54,55,56,57,0
399:
defb	48,49,50,51,52,53,54,55,56,57,46,0
409:
defb	10,34,39,47,92,0
419:
defb	10,34,39,92,0
429:
defb	42,10,0
439:
defb	32,9,11,12,13,0
449:
defb	0
459:
defb	116,111,111,32,109,97,110,121,32,45,68,32,111,112,116,105
defb	111,110,115,44,32,105,103,110,111,114,105,110,103,32,37,115
defb	0
469:
defb	116,111,111,32,109,97,110,121,32,45,85,32,111,112,116,105
defb	111,110,115,44,32,105,103,110,111,114,105,110,103,32,37,115
defb	0
479:
defb	45,110,111,105,110,99,108,117,100,101,0
489:
defb	45,117,110,100,101,102,0
499:
defb	101,120,99,101,115,115,105,118,101,32,45,73,32,102,105,108
defb	101,32,40,37,115,41,32,105,103,110,111,114,101,100,0
509:
defb	117,110,107,110,111,119,110,32,102,108,97,103,32,37,115,0
519:
defb	114,0
529:
defb	78,111,32,115,111,117,114,99,101,32,102,105,108,101,32,37
defb	115,0
539:
defb	119,0
549:
defb	67,97,110,39,116,32,99,114,101,97,116,101,32,37,115,0
559:
defb	100,101,102,105,110,101,0
569:
defb	117,110,100,101,102,0
579:
defb	105,110,99,108,117,100,101,0
589:
defb	101,108,115,101,0
599:
defb	101,110,100,105,102,0
609:
defb	101,108,105,102,0
619:
defb	105,102,100,101,102,0
629:
defb	105,102,110,100,101,102,0
639:
defb	105,102,0
649:
defb	108,105,110,101,0
659:
defb	105,100,101,110,116,0
669:
defb	112,114,97,103,109,97,0
679:
defb	101,114,114,111,114,0
689:
defb	97,115,109,0
699:
defb	101,110,100,97,115,109,0
709:
defb	67,80,77,0
719:
defb	122,56,48,0
729:
defb	95,95,76,73,78,69,95,95,0
739:
defb	95,95,70,73,76,69,95,95,0
749:
defb	99,111,109,109,97,110,100,32,108,105,110,101,0
759:
defb	0
769:
defb	110,111,32,98,117,102,102,101,114,32,115,112,97,99,101,0
779:
defb	116,111,111,32,109,97,110,121,32,100,101,102,105,110,101,115
defb	0
psect	bss
_ifdloc:
	defs	2
_lastsym:
	defs	2
_slotab:
	defs	256
_sbf:
	defs	2
_buffer:
	defs	1086
_lineno:
	defs	32
_nopredef:
	defs	2
_instack:
	defs	28
_macbit:
	defs	267
_elflvl:
	defs	2
_fnames:
	defs	32
_pend:
	defs	2
_elslvl:
	defs	2
_toktyp:
	defs	256
_macfil:
	defs	2
_pbuf:
	defs	2
_pflag:
	defs	2
_incloc:
	defs	2
_errorloc:
	defs	2
_newp:
	defs	2
_ysysloc:
	defs	2
_asmloc:
	defs	2
_ifloc:
	defs	2
_exfail:
	defs	2
_lneloc:
	defs	2
_macnam:
	defs	2
_inptr:
	defs	2
_input:
	defs	2
_eifloc:
	defs	2
_ucpuloc:
	defs	2
_maclin:
	defs	2
_extrawarn:
	defs	2
_flslvl:
	defs	2
_defloc:
	defs	2
_uflloc:
	defs	2
_varloc:
	defs	2
_easmloc:
	defs	2
_noinclude:
	defs	2
_rflag:
	defs	2
_fretop:
	defs	2
_fastab:
	defs	256
_prespc:
	defs	40
_dirs:
	defs	22
_ulnloc:
	defs	2
_pragmaloc:
	defs	2
_ptrtab:
	defs	2
_fins:
	defs	32
_plvl:
	defs	2
_passcom:
	defs	2
_maclvl:
	defs	2
_inctop:
	defs	32
_udfloc:
	defs	2
_stab:
	defs	1000
_savch:
	defs	2
_punspc:
	defs	40
_ifno:
	defs	2
_cinit:
	defs	1
_bufstack:
	defs	28
_endbuf:
	defs	28
_elifloc:
	defs	2
_ifnloc:
	defs	2
_macforw:
	defs	2
_pbeg:
	defs	2
_mactop:
	defs	2
_elsloc:
	defs	2
_hflag:
	defs	2
_macdam:
	defs	2
_dirnams:
	defs	32
_idtloc:
	defs	2
_outptr:
	defs	2
_trulvl:
	defs	2
_fout:
	defs	2
trtab:
	defs	2
_fins:
	defs	32
_plvl:
	defs	2
_pass