;cc-s6xHe0.1: 44: int _doprnt();
;cc-s6xHe0.1: 70: struct symtab {
;cc-s6xHe0.1: 71:     char *name;
;cc-s6xHe0.1: 72:     char *value;
;cc-s6xHe0.1: 73:     struct symtab *next;
;cc-s6xHe0.1: 74: };
;cc-s6xHe0.1: 76: extern char *skipbl(char *);
;cc-s6xHe0.1: 77: extern void pperror(char *fmt, ...);
;cc-s6xHe0.1: 78: extern void yyerror(char *fmt, ...);
;cc-s6xHe0.1: 79: extern int yyparse(void);
;cc-s6xHe0.1: 80: extern int yylex(void);
;cc-s6xHe0.1: 81: extern struct symtab *lookup(char *, int);
;cc-s6xHe0.1: 84: extern int _argc_;
;cc-s6xHe0.1: 85: char **_getargs(char *_str, char *_name);
;cc-s6xHe0.1: 86: char *fname(char *name);
;cc-s6xHe0.1: 133: extern int yychar;
;cc-s6xHe0.1: 134: extern short yyerrflag;
;cc-s6xHe0.1: 144: int yylval, yyval;
;cc-s6xHe0.1: 150: short yyexca[] = {
;cc-s6xHe0.1: 151:     -1, 1,  0,   -1, -2,  0,  -1, 44, 262, 0,  263, 0,  60,  0,  62,  0,  -2,  9,
;cc-s6xHe0.1: 152:     -1, 45, 262, 0,  263, 0,  60, 0,  62,  0,  -2,  10, -1,  46, 262, 0,  263, 0,
;cc-s6xHe0.1: 153:     60, 0,  62,  0,  -2,  11, -1, 47, 262, 0,  263, 0,  60,  0,  62,  0,  -2,  12,
;cc-s6xHe0.1: 154:     -1, 48, 260, 0,  261, 0,  -2, 13, -1,  49, 260, 0,  261, 0,  -2,  14,
;cc-s6xHe0.1: 155: };
;cc-s6xHe0.1: 160: short yyact[] = {
;cc-s6xHe0.1: 162:     13, 24, 35, 58, 13, 11, 14, 30, 15, 11, 12, 60, 13, 24, 12, 1,  57, 11, 14, 30, 15, 59, 12,
;cc-s6xHe0.1: 163:     18, 13, 19, 29, 0,  0,  11, 14, 0,  15, 0,  12, 18, 3,  19, 29, 13, 24, 31, 32, 33, 11, 14,
;cc-s6xHe0.1: 164:     30, 15, 0,  12, 13, 24, 0,  0,  0,  11, 14, 25, 15, 5,  12, 0,  18, 0,  19, 29, 7,  0,  0,
;cc-s6xHe0.1: 165:     25, 0,  4,  0,  18, 0,  19, 29, 0,  13, 24, 0,  0,  0,  11, 14, 0,  15, 26, 12, 0,  0,  0,
;cc-s6xHe0.1: 166:     13, 24, 0,  0,  25, 11, 14, 26, 15, 18, 12, 19, 13, 24, 0,  25, 0,  11, 14, 0,  15, 13, 12,
;cc-s6xHe0.1: 167:     18, 0,  19, 11, 14, 0,  15, 0,  12, 0,  0,  26, 18, 0,  19, 0,  0,  0,  0,  13, 25, 18, 26,
;cc-s6xHe0.1: 168:     19, 11, 14, 0,  15, 0,  12, 13, 0,  0,  0,  25, 11, 14, 6,  15, 0,  12, 0,  18, 0,  19, 0,
;cc-s6xHe0.1: 169:     0,  0,  0,  0,  26, 0,  0,  0,  0,  0,  0,  2,  0,  0,  0,  0,  0,  0,  26, 34, 0,  0,  0,
;cc-s6xHe0.1: 170:     37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 0,  0,  0,
;cc-s6xHe0.1: 171:     0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  36, 0,  0,  0,  22, 23, 20, 21, 16, 17, 27,
;cc-s6xHe0.1: 172:     28, 0,  61, 0,  0,  22, 23, 20, 21, 16, 17, 27, 28, 0,  0,  0,  0,  0,  0,  0,  0,  16, 17,
;cc-s6xHe0.1: 173:     0,  0,  0,  0,  0,  0,  0,  10, 0,  22, 23, 20, 21, 16, 17, 27, 28, 0,  0,  0,  22, 23, 20,
;cc-s6xHe0.1: 174:     21, 16, 17, 27, 28, 0,  0,  9,  0,  8,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,
;cc-s6xHe0.1: 175:     0,  0,  22, 23, 20, 21, 16, 17, 27, 0,  0,  0,  0,  0,  0,  0,  22, 23, 20, 21, 16, 17, 0,
;cc-s6xHe0.1: 176:     0,  0,  0,  0,  0,  22, 23, 20, 21, 16, 17, 0,  0,  0,  22, 23, 20, 21, 16, 17, 0,  0,  0,
;cc-s6xHe0.1: 177:     0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  20, 21, 16, 17
;cc-s6xHe0.1: 178: };
;cc-s6xHe0.1: 180: short yypact[] = { 26,    -1000, 2,     -1000, 26,    26,    26,    26,  -38, -1000, -1000,
;cc-s6xHe0.1: 181:                    26,    26,    26,    26,    26,    26,    26,    26,  26,  26,    26,
;cc-s6xHe0.1: 182:                    26,    26,    26,    26,    26,    26,    26,    26,  26,  -1000, -1000,
;cc-s6xHe0.1: 183:                    -1000, -25,   -254,  -1000, -1000, -1000, -1000, -33, -33, 108,   108,
;cc-s6xHe0.1: 184:                    -13,   -13,   -13,   -13,   97,    97,    76,    67,  67,  55,    41,
;cc-s6xHe0.1: 185:                    -37,   13,    -1000, -30,   26,    -1000, 13 };
;cc-s6xHe0.1: 187: short yypgo[]  = { 0, 15, 172, 36 };
;cc-s6xHe0.1: 189: short yyr1[]   = { 0, 1, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2,
;cc-s6xHe0.1: 190:                  2, 2, 2, 2, 2, 2, 2, 2, 3, 3, 3, 3, 3, 3, 3 };
;cc-s6xHe0.1: 192: short yyr2[]   = { 0, 2, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3,
;cc-s6xHe0.1: 193:                  3, 3, 3, 3, 3, 5, 3, 1, 2, 2, 2, 3, 4, 2, 1 };
;cc-s6xHe0.1: 195: short yychk[]  = { -1000, -1,  -2, -3, 45,  33,  126, 40,  259, 257, 258, 42,  47,  37, 43, 45,
;cc-s6xHe0.1: 196:                   264,   265, 60, 62, 262, 263, 260, 261, 38,  94,  124, 266, 267, 63, 44, -3,
;cc-s6xHe0.1: 197:                   -3,    -3,  -2, 40, 257, -2,  -2,  -2,  -2,  -2,  -2,  -2,  -2,  -2, -2, -2,
;cc-s6xHe0.1: 198:                   -2,    -2,  -2, -2, -2,  -2,  -2,  -2,  -2,  41,  257, 58,  41,  -2 };
;cc-s6xHe0.1: 200: short yydef[]  = { 0, -2, 0,  22, 0,  0,  0,  0,  0,  29, 1,  0,  0,  0, 0,  0,  0, 0, 0,  0, 0,
;cc-s6xHe0.1: 201:                   0, 0,  0,  0,  0,  0,  0,  0,  0,  0,  23, 24, 25, 0, 0,  28, 2, 3, 4,  5, 6,
;cc-s6xHe0.1: 202:                   7, 8,  -2, -2, -2, -2, -2, -2, 15, 16, 17, 18, 19, 0, 21, 26, 0, 0, 27, 20 };
;cc-s6xHe0.1: 218: int yyv[150];
;cc-s6xHe0.1: 219: int yychar      = -1;
;cc-s6xHe0.1: 220: int yynerrs     = 0;
;cc-s6xHe0.1: 221: short yyerrflag = 0;
;cc-s6xHe0.1: 223: int yyparse(void) {
;cc-s6xHe0.1: 224:     short yyj, yym;
;cc-s6xHe0.1: 225:     register int *yypvt;
;cc-s6xHe0.1: 226:     short yystate, *yyps, yyn;
;cc-s6xHe0.1: 227:     int *yypv;
;cc-s6xHe0.1: 228:     short *yyxi;
;cc-s6xHe0.1: 229:     short yys[150];
;cc-s6xHe0.1: 231:     yystate   = 0;
;cc-s6xHe0.1: 232:     yychar    = -1;
;cc-s6xHe0.1: 233:     yynerrs   = 0;
;cc-s6xHe0.1: 234:     yyerrflag = 0;
;cc-s6xHe0.1: 235:     yyps      = &yys[-1];
;cc-s6xHe0.1: 236:     yypv      = &yyv[-1];
;cc-s6xHe0.1: 238: yystack:
;cc-s6xHe0.1: 242:     if (++yyps > &yys[150]) {
;cc-s6xHe0.1: 243:         yyerror("yacc stack overflow");
;cc-s6xHe0.1: 244:         return (1);
;cc-s6xHe0.1: 245:     }
;cc-s6xHe0.1: 246:     *yyps = yystate;
;cc-s6xHe0.1: 247:     ++yypv;
;cc-s6xHe0.1: 248:     *yypv = yyval;
;cc-s6xHe0.1: 250: yynewstate:
;cc-s6xHe0.1: 252:     yyn = yypact[yystate];
;cc-s6xHe0.1: 254:     if (yyn <=   -1000)
;cc-s6xHe0.1: 255:         goto yydefault;
;cc-s6xHe0.1: 257:     if (yychar < 0)
;cc-s6xHe0.1: 258:         if ((yychar = yylex()) < 0)
;cc-s6xHe0.1: 259:             yychar = 0;
;cc-s6xHe0.1: 260:     if ((yyn += yychar) < 0 || yyn >=  363)
;cc-s6xHe0.1: 261:         goto yydefault;
;cc-s6xHe0.1: 263:     if (yychk[yyn = yyact[yyn]] == yychar) {
;cc-s6xHe0.1: 264:         yychar  = -1;
;cc-s6xHe0.1: 265:         yyval   = yylval;
;cc-s6xHe0.1: 266:         yystate = yyn;
;cc-s6xHe0.1: 267:         if (yyerrflag > 0)
;cc-s6xHe0.1: 268:             --yyerrflag;
;cc-s6xHe0.1: 269:         goto yystack;
;cc-s6xHe0.1: 270:     }
;cc-s6xHe0.1: 272: yydefault:
;cc-s6xHe0.1: 275:     if ((yyn = yydef[yystate]) == -2) {
;cc-s6xHe0.1: 276:         if (yychar < 0)
;cc-s6xHe0.1: 277:             if ((yychar = yylex()) < 0)
;cc-s6xHe0.1: 278:                 yychar = 0;
;cc-s6xHe0.1: 281:         for (yyxi = yyexca; (*yyxi != (-1)) || (yyxi[1] != yystate); yyxi += 2)
;cc-s6xHe0.1: 282:             ;
;cc-s6xHe0.1: 284:         while (*(yyxi += 2) >= 0) {
;cc-s6xHe0.1: 285:             if (*yyxi == yychar)
;cc-s6xHe0.1: 286:                 break;
;cc-s6xHe0.1: 287:         }
;cc-s6xHe0.1: 288:         if ((yyn = yyxi[1]) < 0)
;cc-s6xHe0.1: 289:             return (0);
;cc-s6xHe0.1: 290:     }
;cc-s6xHe0.1: 291:     if (yyn == 0) {
;cc-s6xHe0.1: 294:         switch (yyerrflag) {
;cc-s6xHe0.1: 296:         case 0:
;cc-s6xHe0.1: 298:             yyerror("syntax error");
;cc-s6xHe0.1: 299:         yyerrlab:
;cc-s6xHe0.1: 300:             ++yynerrs;
;cc-s6xHe0.1: 302:         case 1:
;cc-s6xHe0.1: 303:         case 2:
;cc-s6xHe0.1: 305:             yyerrflag = 3;
;cc-s6xHe0.1: 309:             while (yyps >= yys) {
;cc-s6xHe0.1: 310:                 yyn = yypact[*yyps] + 256;
;cc-s6xHe0.1: 311:                 if (yyn >= 0 && yyn <  363 && yychk[yyact[yyn]] == 256) {
;cc-s6xHe0.1: 312:                     yystate = yyact[yyn];
;cc-s6xHe0.1: 313:                     goto yystack;
;cc-s6xHe0.1: 314:                 }
;cc-s6xHe0.1: 315:                 yyn = yypact[*yyps];
;cc-s6xHe0.1: 320:                 --yyps;
;cc-s6xHe0.1: 321:                 --yypv;
;cc-s6xHe0.1: 322:             }
;cc-s6xHe0.1: 324:         yyabort:
;cc-s6xHe0.1: 325:             return (1);
;cc-s6xHe0.1: 327:         case 3:
;cc-s6xHe0.1: 331:             if (yychar == 0)
;cc-s6xHe0.1: 332:                 goto yyabort;
;cc-s6xHe0.1: 333:             yychar = -1;
;cc-s6xHe0.1: 334:             goto yynewstate;
;cc-s6xHe0.1: 335:         }
;cc-s6xHe0.1: 336:     }
;cc-s6xHe0.1: 342:     yyps -= yyr2[yyn];
;cc-s6xHe0.1: 343:     yypvt = yypv;
;cc-s6xHe0.1: 344:     yypv -= yyr2[yyn];
;cc-s6xHe0.1: 345:     yyval = yypv[1];
;cc-s6xHe0.1: 346:     yym   = yyn;
;cc-s6xHe0.1: 348:     yyn = yyr1[yyn];
;cc-s6xHe0.1: 349:     yyj = yypgo[yyn] + *yyps + 1;
;cc-s6xHe0.1: 350:     if (yyj >=  363 || yychk[yystate = yyact[yyj]] != -yyn)
;cc-s6xHe0.1: 351:         yystate = yyact[yypgo[yyn]];
;cc-s6xHe0.1: 353:     switch (yym) {
;cc-s6xHe0.1: 354:     case 1:
;cc-s6xHe0.1: 355:         {
;cc-s6xHe0.1: 356:             return (yypvt[-1]);
;cc-s6xHe0.1: 357:         }
;cc-s6xHe0.1: 358:     case 2:
;cc-s6xHe0.1: 359:         {
;cc-s6xHe0.1: 360:             yyval = yypvt[-2] * yypvt[-0];
;cc-s6xHe0.1: 361:         }
;cc-s6xHe0.1: 362:         break;
;cc-s6xHe0.1: 363:     case 3:
;cc-s6xHe0.1: 364:         {
;cc-s6xHe0.1: 365:             if (yypvt[0] == 0) {
;cc-s6xHe0.1: 366:                 yyerror("division by zero");
;cc-s6xHe0.1: 367:                 yyval = 0;
;cc-s6xHe0.1: 368:             } else if (yypvt[-2] == 	-32768		 && yypvt[0] == -1) {
;cc-s6xHe0.1: 369:                 yyerror("division overflow");
;cc-s6xHe0.1: 370:                 yylval = 	-32768		;
;cc-s6xHe0.1: 371:             } else {
;cc-s6xHe0.1: 372:                 yyval = yypvt[-2] / yypvt[-0];
;cc-s6xHe0.1: 373:             }
;cc-s6xHe0.1: 374:         }
;cc-s6xHe0.1: 375:         break;
;cc-s6xHe0.1: 376:     case 4:
;cc-s6xHe0.1: 377:         {
;cc-s6xHe0.1: 378:             if (yypvt[0] == 0) {
;cc-s6xHe0.1: 379:                 yyerror("division by zero");
;cc-s6xHe0.1: 380:                 yyval = 0;
;cc-s6xHe0.1: 381:             } else if (yypvt[-2] == 	-32768		 && yypvt[0] == -1) {
;cc-s6xHe0.1: 382:                 yyerror("division overflow");
;cc-s6xHe0.1: 383:                 yylval = 	-32768		;
;cc-s6xHe0.1: 384:             } else {
;cc-s6xHe0.1: 385:                 yyval = yypvt[-2] % yypvt[-0];
;cc-s6xHe0.1: 386:             }
;cc-s6xHe0.1: 387:         }
;cc-s6xHe0.1: 388:         break;
;cc-s6xHe0.1: 389:     case 5:
;cc-s6xHe0.1: 390:         {
;cc-s6xHe0.1: 391:             yyval = yypvt[-2] + yypvt[-0];
;cc-s6xHe0.1: 392:         }
;cc-s6xHe0.1: 393:         break;
;cc-s6xHe0.1: 394:     case 6:
;cc-s6xHe0.1: 395:         {
;cc-s6xHe0.1: 396:             yyval = yypvt[-2] - yypvt[-0];
;cc-s6xHe0.1: 397:         }
;cc-s6xHe0.1: 398:         break;
;cc-s6xHe0.1: 399:     case 7:
;cc-s6xHe0.1: 400:         {
;cc-s6xHe0.1: 401:             yyval = yypvt[-2] << yypvt[-0];
;cc-s6xHe0.1: 402:         }
;cc-s6xHe0.1: 403:         break;
;cc-s6xHe0.1: 404:     case 8:
;cc-s6xHe0.1: 405:         {
;cc-s6xHe0.1: 406:             yyval = yypvt[-2] >> yypvt[-0];
;cc-s6xHe0.1: 407:         }
;cc-s6xHe0.1: 408:         break;
;cc-s6xHe0.1: 409:     case 9:
;cc-s6xHe0.1: 410:         {
;cc-s6xHe0.1: 411:             yyval = yypvt[-2] < yypvt[-0];
;cc-s6xHe0.1: 412:         }
;cc-s6xHe0.1: 413:         break;
;cc-s6xHe0.1: 414:     case 10:
;cc-s6xHe0.1: 415:         {
;cc-s6xHe0.1: 416:             yyval = yypvt[-2] > yypvt[-0];
;cc-s6xHe0.1: 417:         }
;cc-s6xHe0.1: 418:         break;
;cc-s6xHe0.1: 419:     case 11:
;cc-s6xHe0.1: 420:         {
;cc-s6xHe0.1: 421:             yyval = yypvt[-2] <= yypvt[-0];
;cc-s6xHe0.1: 422:         }
;cc-s6xHe0.1: 423:         break;
;cc-s6xHe0.1: 424:     case 12:
;cc-s6xHe0.1: 425:         {
;cc-s6xHe0.1: 426:             yyval = yypvt[-2] >= yypvt[-0];
;cc-s6xHe0.1: 427:         }
;cc-s6xHe0.1: 428:         break;
;cc-s6xHe0.1: 429:     case 13:
;cc-s6xHe0.1: 430:         {
;cc-s6xHe0.1: 431:             yyval = yypvt[-2] == yypvt[-0];
;cc-s6xHe0.1: 432:         }
;cc-s6xHe0.1: 433:         break;
;cc-s6xHe0.1: 434:     case 14:
;cc-s6xHe0.1: 435:         {
;cc-s6xHe0.1: 436:             yyval = yypvt[-2] != yypvt[-0];
;cc-s6xHe0.1: 437:         }
;cc-s6xHe0.1: 438:         break;
;cc-s6xHe0.1: 439:     case 15:
;cc-s6xHe0.1: 440:         {
;cc-s6xHe0.1: 441:             yyval = yypvt[-2] & yypvt[-0];
;cc-s6xHe0.1: 442:         }
;cc-s6xHe0.1: 443:         break;
;cc-s6xHe0.1: 444:     case 16:
;cc-s6xHe0.1: 445:         {
;cc-s6xHe0.1: 446:             yyval = yypvt[-2] ^ yypvt[-0];
;cc-s6xHe0.1: 447:         }
;cc-s6xHe0.1: 448:         break;
;cc-s6xHe0.1: 449:     case 17:
;cc-s6xHe0.1: 450:         {
;cc-s6xHe0.1: 451:             yyval = yypvt[-2] | yypvt[-0];
;cc-s6xHe0.1: 452:         }
;cc-s6xHe0.1: 453:         break;
;cc-s6xHe0.1: 454:     case 18:
;cc-s6xHe0.1: 455:         {
;cc-s6xHe0.1: 456:             yyval = yypvt[-2] && yypvt[-0];
;cc-s6xHe0.1: 457:         }
;cc-s6xHe0.1: 458:         break;
;cc-s6xHe0.1: 459:     case 19:
;cc-s6xHe0.1: 460:         {
;cc-s6xHe0.1: 461:             yyval = yypvt[-2] || yypvt[-0];
;cc-s6xHe0.1: 462:         }
;cc-s6xHe0.1: 463:         break;
;cc-s6xHe0.1: 464:     case 20:
;cc-s6xHe0.1: 465:         {
;cc-s6xHe0.1: 466:             yyval = yypvt[-4] ? yypvt[-2] : yypvt[-0];
;cc-s6xHe0.1: 467:         }
;cc-s6xHe0.1: 468:         break;
;cc-s6xHe0.1: 469:     case 21:
;cc-s6xHe0.1: 470:         {
;cc-s6xHe0.1: 471:             yyval = yypvt[-0];
;cc-s6xHe0.1: 472:         }
;cc-s6xHe0.1: 473:         break;
;cc-s6xHe0.1: 474:     case 22:
;cc-s6xHe0.1: 475:         {
;cc-s6xHe0.1: 476:             yyval = yypvt[-0];
;cc-s6xHe0.1: 477:         }
;cc-s6xHe0.1: 478:         break;
;cc-s6xHe0.1: 479:     case 23:
;cc-s6xHe0.1: 480:         {
;cc-s6xHe0.1: 481:             yyval = -yypvt[-0];
;cc-s6xHe0.1: 482:         }
;cc-s6xHe0.1: 483:         break;
;cc-s6xHe0.1: 484:     case 24:
;cc-s6xHe0.1: 485:         {
;cc-s6xHe0.1: 486:             yyval = !yypvt[-0];
;cc-s6xHe0.1: 487:         }
;cc-s6xHe0.1: 488:         break;
;cc-s6xHe0.1: 489:     case 25:
;cc-s6xHe0.1: 490:         {
;cc-s6xHe0.1: 491:             yyval = ~yypvt[-0];
;cc-s6xHe0.1: 492:         }
;cc-s6xHe0.1: 493:         break;
;cc-s6xHe0.1: 494:     case 26:
;cc-s6xHe0.1: 495:         {
;cc-s6xHe0.1: 496:             yyval = yypvt[-1];
;cc-s6xHe0.1: 497:         }
;cc-s6xHe0.1: 498:         break;
;cc-s6xHe0.1: 499:     case 27:
;cc-s6xHe0.1: 500:         {
;cc-s6xHe0.1: 501:             yyval = yypvt[-1];
;cc-s6xHe0.1: 502:         }
;cc-s6xHe0.1: 503:         break;
;cc-s6xHe0.1: 504:     case 28:
;cc-s6xHe0.1: 505:         {
;cc-s6xHe0.1: 506:             yyval = yypvt[-0];
;cc-s6xHe0.1: 507:         }
;cc-s6xHe0.1: 508:         break;
;cc-s6xHe0.1: 509:     case 29:
;cc-s6xHe0.1: 510:         {
;cc-s6xHe0.1: 511:             yyval = yypvt[-0];
;cc-s6xHe0.1: 512:         }
;cc-s6xHe0.1: 513:         break;
;cc-s6xHe0.1: 514:     }
;cc-s6xHe0.1: 515:     goto yystack;
;cc-s6xHe0.1: 516: }
;cc-s6xHe0.1: 558: static  char sccsid[] = "@(#)yylex.c	1.9 19/08/29 2010-2019 J. Schilling";
;cc-s6xHe0.1: 635: typedef	int		ptrdiff_t;
;cc-s6xHe0.1: 636: typedef	unsigned	size_t;
;cc-s6xHe0.1: 645: extern int	errno;
;cc-s6xHe0.1: 647: extern void	*memcpy(void *, void *, size_t);
;cc-s6xHe0.1: 648: extern void	*memmove(void *, void *, size_t);
;cc-s6xHe0.1: 649: extern char	*strcpy(char *, char *);
;cc-s6xHe0.1: 650: extern char	*strncpy(char *, char *, size_t);
;cc-s6xHe0.1: 651: extern char	*strcat(char *, char *);
;cc-s6xHe0.1: 652: extern char	*strncat(char *, char *, size_t);
;cc-s6xHe0.1: 653: extern int	 memcmp(void *, void *, size_t);
;cc-s6xHe0.1: 654: extern int	 strcmp(char *, char *);
;cc-s6xHe0.1: 655: extern int	 strcasecmp(char *, char *);
;cc-s6xHe0.1: 657: extern int	 strncmp(char *, char *, size_t);
;cc-s6xHe0.1: 658: extern int	 strncasecmp(char *, char *, size_t);
;cc-s6xHe0.1: 661: extern void	*memchr(void *, int, size_t);
;cc-s6xHe0.1: 665: extern char	*strstr(char *, char *);
;cc-s6xHe0.1: 666: extern char	*strtok(char *, char *);
;cc-s6xHe0.1: 667: extern void	*memset(void *, int, size_t);
;cc-s6xHe0.1: 668: extern char	*strerror(int);
;cc-s6xHe0.1: 669: extern size_t	 strlen(char *);
;cc-s6xHe0.1: 670: extern char	*strchr(char *, int);
;cc-s6xHe0.1: 672: extern char	*index(char *, int);
;cc-s6xHe0.1: 673: extern char	*strrchr(char *, int);
;cc-s6xHe0.1: 675: extern char	*rindex(char *, int);
;cc-s6xHe0.1: 676: extern char	*strcasestr(char *, char *);
;cc-s6xHe0.1: 678: extern char	*strncasestr(char *, char *, size_t);
;cc-s6xHe0.1: 695:  int yylex(void);
;cc-s6xHe0.1: 696: static int tobinary(char *, int);
;cc-s6xHe0.1: 698: int yylex() {
;cc-s6xHe0.1: 699:     static int ifdef   = 0;
;cc-s6xHe0.1: 700:     static char *op2[] = { "||", "&&", ">>", "<<", ">=", "<=", "!=", "==" };
;cc-s6xHe0.1: 701:     static int val2[]  = {      267,    266,        265,        264,        263,        262,        261,        260 };
;cc-s6xHe0.1: 702:     static char *opc   = "b\bt\tn\nf\fr\r\\\\";
;cc-s6xHe0.1: 703:     extern char fastab[];
;cc-s6xHe0.1: 704:     extern char *outptr, *inptr, *newp;
;cc-s6xHe0.1: 705:     extern int flslvl;
;cc-s6xHe0.1: 706:     register char savc, *s;
;cc-s6xHe0.1: 707:     int val;
;cc-s6xHe0.1: 708:     register char **p2;
;cc-s6xHe0.1: 709:     struct symtab *sp;
;cc-s6xHe0.1: 711:     for (;;) {
;cc-s6xHe0.1: 712:         newp = skipbl(newp);
;cc-s6xHe0.1: 713:         if (*inptr == '\n')
;cc-s6xHe0.1: 714:             return (     258);
;cc-s6xHe0.1: 715:         savc  = *newp;
;cc-s6xHe0.1: 716:         *newp = '\0';
;cc-s6xHe0.1: 717:         for (p2 = op2 + 8; --p2 >= op2;)
;cc-s6xHe0.1: 718:             if (0 == strcmp(*p2, inptr)) {
;cc-s6xHe0.1: 719:                 val = val2[p2 - op2];
;cc-s6xHe0.1: 720:                 goto ret;
;cc-s6xHe0.1: 721:             }
;cc-s6xHe0.1: 722:         s = "+-*/%<>&^|?:!~(),";
;cc-s6xHe0.1: 723:         while (*s)
;cc-s6xHe0.1: 724:             if (*s++ == *inptr) {
;cc-s6xHe0.1: 725:                 val = *--s;
;cc-s6xHe0.1: 726:                 goto ret;
;cc-s6xHe0.1: 727:             }
;cc-s6xHe0.1: 728:         if (*inptr <= '9' && *inptr >= '0') {
;cc-s6xHe0.1: 729:             if (*inptr == '0')
;cc-s6xHe0.1: 730:                 yylval = (inptr[1] == 'x' || inptr[1] == 'X') ? tobinary(inptr + 2, 16)
;cc-s6xHe0.1: 731:                                                               : tobinary(inptr + 1, 8);
;cc-s6xHe0.1: 732:             else
;cc-s6xHe0.1: 733:                 yylval = tobinary(inptr, 10);
;cc-s6xHe0.1: 734:             val =    257;
;cc-s6xHe0.1: 735:         } else if ( ((fastab + 128)[(int)*inptr] &      1)) {
;cc-s6xHe0.1: 736:             if (0 == strcmp(inptr, "defined")) {
;cc-s6xHe0.1: 737:                 ifdef = 1;
;cc-s6xHe0.1: 738:                 ++flslvl;
;cc-s6xHe0.1: 739:                 val =   259;
;cc-s6xHe0.1: 740:             } else {
;cc-s6xHe0.1: 741:                 sp = lookup(inptr, -1);
;cc-s6xHe0.1: 742:                 if (ifdef != 0) {
;cc-s6xHe0.1: 743:                     ifdef = 0;
;cc-s6xHe0.1: 744:                     --flslvl;
;cc-s6xHe0.1: 745:                 }
;cc-s6xHe0.1: 746:                 yylval = (sp->value == 0) ? 0 : 1;
;cc-s6xHe0.1: 747:                 val    =    257;
;cc-s6xHe0.1: 748:             }
;cc-s6xHe0.1: 749:         } else if (*inptr == '\'') {
;cc-s6xHe0.1: 750:             val =    257;
;cc-s6xHe0.1: 751:             if (inptr[1] == '\\') {
;cc-s6xHe0.1: 752:                  char c;
;cc-s6xHe0.1: 754:                 if (newp[-1] == '\'')
;cc-s6xHe0.1: 755:                     newp[-1] = '\0';
;cc-s6xHe0.1: 756:                 s = opc;
;cc-s6xHe0.1: 757:                 while (*s)
;cc-s6xHe0.1: 758:                     if (*s++ != inptr[2])
;cc-s6xHe0.1: 759:                         ++s;
;cc-s6xHe0.1: 760:                     else {
;cc-s6xHe0.1: 761:                         yylval = *s;
;cc-s6xHe0.1: 762:                         goto ret;
;cc-s6xHe0.1: 763:                     }
;cc-s6xHe0.1: 764:                 if (inptr[2] <= '9' && inptr[2] >= '0')
;cc-s6xHe0.1: 765:                         yylval = c = tobinary(inptr + 2, 8);
;cc-s6xHe0.1: 766:                 else
;cc-s6xHe0.1: 767:                     yylval = inptr[2];
;cc-s6xHe0.1: 768:             } else
;cc-s6xHe0.1: 769:                 yylval = inptr[1];
;cc-s6xHe0.1: 770:         } else if (0 == strcmp("\\\n", inptr)) {
;cc-s6xHe0.1: 771:             *newp = savc;
;cc-s6xHe0.1: 772:             continue;
;cc-s6xHe0.1: 773:         } else {
;cc-s6xHe0.1: 774:             *newp = savc;
;cc-s6xHe0.1: 775:             pperror("Illegal character %c in preprocessor if", *inptr);
;cc-s6xHe0.1: 776:             continue;
;cc-s6xHe0.1: 777:         }
;cc-s6xHe0.1: 778:     ret:
;cc-s6xHe0.1: 779:         *newp  = savc;
;cc-s6xHe0.1: 780:         outptr = inptr = newp;
;cc-s6xHe0.1: 781:         return (val);
;cc-s6xHe0.1: 782:     }
;cc-s6xHe0.1: 783: }
;cc-s6xHe0.1: 785: static int tobinary(char *st, int b) {
;cc-s6xHe0.1: 786:     int n, c, t;
;cc-s6xHe0.1: 787:     char *s;
;cc-s6xHe0.1: 788:     n = 0;
;cc-s6xHe0.1: 789:     s = st;
;cc-s6xHe0.1: 790:     while ((c = *s++)) {
;cc-s6xHe0.1: 791:         switch (c) {
;cc-s6xHe0.1: 792:         case '0':
;cc-s6xHe0.1: 793:         case '1':
;cc-s6xHe0.1: 794:         case '2':
;cc-s6xHe0.1: 795:         case '3':
;cc-s6xHe0.1: 796:         case '4':
;cc-s6xHe0.1: 797:         case '5':
;cc-s6xHe0.1: 798:         case '6':
;cc-s6xHe0.1: 799:         case '7':
;cc-s6xHe0.1: 800:         case '8':
;cc-s6xHe0.1: 801:         case '9':
;cc-s6xHe0.1: 802:             t = c - '0';
;cc-s6xHe0.1: 803:             break;
;cc-s6xHe0.1: 804:         case 'a':
;cc-s6xHe0.1: 805:         case 'b':
;cc-s6xHe0.1: 806:         case 'c':
;cc-s6xHe0.1: 807:         case 'd':
;cc-s6xHe0.1: 808:         case 'e':
;cc-s6xHe0.1: 809:         case 'f':
;cc-s6xHe0.1: 810:             t = c - 'a' + 10;
;cc-s6xHe0.1: 811:             if (b > 10)
;cc-s6xHe0.1: 812:                 break;
;cc-s6xHe0.1: 813:         case 'A':
;cc-s6xHe0.1: 814:         case 'B':
;cc-s6xHe0.1: 815:         case 'C':
;cc-s6xHe0.1: 816:         case 'D':
;cc-s6xHe0.1: 817:         case 'E':
;cc-s6xHe0.1: 818:         case 'F':
;cc-s6xHe0.1: 819:             t = c - 'A' + 10;
;cc-s6xHe0.1: 820:             if (b > 10)
;cc-s6xHe0.1: 821:                 break;
;cc-s6xHe0.1: 822:         default:
;cc-s6xHe0.1: 823:             t = -1;
;cc-s6xHe0.1: 824:             if (c == 'l' || c == 'L')
;cc-s6xHe0.1: 825:                 if (*s == '\0')
;cc-s6xHe0.1: 826:                     break;
;cc-s6xHe0.1: 827:             pperror("Illegal number %s", st);
;cc-s6xHe0.1: 828:         }
;cc-s6xHe0.1: 829:         if (t < 0)
;cc-s6xHe0.1: 830:             break;
;cc-s6xHe0.1: 831:         n = n * b + t;
;cc-s6xHe0.1: 832:     }
;cc-s6xHe0.1: 833:     return (n);
;cc-s6xHe0.1: 834: }
