;cc-anGwFF.1: 44: int _doprnt();
;cc-anGwFF.1: 70: struct symtab {
;cc-anGwFF.1: 71:     char *name;
;cc-anGwFF.1: 72:     char *value;
;cc-anGwFF.1: 73:     struct symtab *next;
;cc-anGwFF.1: 74: };
;cc-anGwFF.1: 76: extern char *skipbl(char *);
;cc-anGwFF.1: 77: extern void pperror(char *fmt, ...);
;cc-anGwFF.1: 78: extern void yyerror(char *fmt, ...);
;cc-anGwFF.1: 79: extern int yyparse(void);
;cc-anGwFF.1: 80: extern int yylex(void);
;cc-anGwFF.1: 81: extern struct symtab *lookup(char *, int);
;cc-anGwFF.1: 84: extern int _argc_;
;cc-anGwFF.1: 85: char **_getargs(char *_str, char *_name);
;cc-anGwFF.1: 86: char *fname(char *name);
;cc-anGwFF.1: 133: extern int yychar;
;cc-anGwFF.1: 134: extern short yyerrflag;
;cc-anGwFF.1: 144: int yylval, yyval;
;cc-anGwFF.1: 150: short yyexca[] = {
;cc-anGwFF.1: 151:     -1, 1,  0,   -1, -2,  0,  -1, 44, 262, 0,  263, 0,  60,  0,  62,  0,  -2,  9,
;cc-anGwFF.1: 152:     -1, 45, 262, 0,  263, 0,  60, 0,  62,  0,  -2,  10, -1,  46, 262, 0,  263, 0,
;cc-anGwFF.1: 153:     60, 0,  62,  0,  -2,  11, -1, 47, 262, 0,  263, 0,  60,  0,  62,  0,  -2,  12,
;cc-anGwFF.1: 154:     -1, 48, 260, 0,  261, 0,  -2, 13, -1,  49, 260, 0,  261, 0,  -2,  14,
;cc-anGwFF.1: 155: };
;cc-anGwFF.1: 160: short yyact[] = {
;cc-anGwFF.1: 162:     13, 24, 35, 58, 13, 11, 14, 30, 15, 11, 12, 60, 13, 24, 12, 1,  57, 11, 14, 30, 15, 59, 12,
;cc-anGwFF.1: 163:     18, 13, 19, 29, 0,  0,  11, 14, 0,  15, 0,  12, 18, 3,  19, 29, 13, 24, 31, 32, 33, 11, 14,
;cc-anGwFF.1: 164:     30, 15, 0,  12, 13, 24, 0,  0,  0,  11, 14, 25, 15, 5,  12, 0,  18, 0,  19, 29, 7,  0,  0,
;cc-anGwFF.1: 165:     25, 0,  4,  0,  18, 0,  19, 29, 0,  13, 24, 0,  0,  0,  11, 14, 0,  15, 26, 12, 0,  0,  0,
;cc-anGwFF.1: 166:     13, 24, 0,  0,  25, 11, 14, 26, 15, 18, 12, 19, 13, 24, 0,  25, 0,  11, 14, 0,  15, 13, 12,
;cc-anGwFF.1: 167:     18, 0,  19, 11, 14, 0,  15, 0,  12, 0,  0,  26, 18, 0,  19, 0,  0,  0,  0,  13, 25, 18, 26,
;cc-anGwFF.1: 168:     19, 11, 14, 0,  15, 0,  12, 13, 0,  0,  0,  25, 11, 14, 6,  15, 0,  12, 0,  18, 0,  19, 0,
;cc-anGwFF.1: 169:     0,  0,  0,  0,  26, 0,  0,  0,  0,  0,  0,  2,  0,  0,  0,  0,  0,  0,  26, 34, 0,  0,  0,
;cc-anGwFF.1: 170:     37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 0,  0,  0,
;cc-anGwFF.1: 171:     0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  36, 0,  0,  0,  22, 23, 20, 21, 16, 17, 27,
;cc-anGwFF.1: 172:     28, 0,  61, 0,  0,  22, 23, 20, 21, 16, 17, 27, 28, 0,  0,  0,  0,  0,  0,  0,  0,  16, 17,
;cc-anGwFF.1: 173:     0,  0,  0,  0,  0,  0,  0,  10, 0,  22, 23, 20, 21, 16, 17, 27, 28, 0,  0,  0,  22, 23, 20,
;cc-anGwFF.1: 174:     21, 16, 17, 27, 28, 0,  0,  9,  0,  8,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,
;cc-anGwFF.1: 175:     0,  0,  22, 23, 20, 21, 16, 17, 27, 0,  0,  0,  0,  0,  0,  0,  22, 23, 20, 21, 16, 17, 0,
;cc-anGwFF.1: 176:     0,  0,  0,  0,  0,  22, 23, 20, 21, 16, 17, 0,  0,  0,  22, 23, 20, 21, 16, 17, 0,  0,  0,
;cc-anGwFF.1: 177:     0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  20, 21, 16, 17
;cc-anGwFF.1: 178: };
;cc-anGwFF.1: 180: short yypact[] = { 26,    -1000, 2,     -1000, 26,    26,    26,    26,  -38, -1000, -1000,
;cc-anGwFF.1: 181:                    26,    26,    26,    26,    26,    26,    26,    26,  26,  26,    26,
;cc-anGwFF.1: 182:                    26,    26,    26,    26,    26,    26,    26,    26,  26,  -1000, -1000,
;cc-anGwFF.1: 183:                    -1000, -25,   -254,  -1000, -1000, -1000, -1000, -33, -33, 108,   108,
;cc-anGwFF.1: 184:                    -13,   -13,   -13,   -13,   97,    97,    76,    67,  67,  55,    41,
;cc-anGwFF.1: 185:                    -37,   13,    -1000, -30,   26,    -1000, 13 };
;cc-anGwFF.1: 187: short yypgo[]  = { 0, 15, 172, 36 };
;cc-anGwFF.1: 189: short yyr1[]   = { 0, 1, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2,
;cc-anGwFF.1: 190:                  2, 2, 2, 2, 2, 2, 2, 2, 3, 3, 3, 3, 3, 3, 3 };
;cc-anGwFF.1: 192: short yyr2[]   = { 0, 2, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3,
;cc-anGwFF.1: 193:                  3, 3, 3, 3, 3, 5, 3, 1, 2, 2, 2, 3, 4, 2, 1 };
;cc-anGwFF.1: 195: short yychk[]  = { -1000, -1,  -2, -3, 45,  33,  126, 40,  259, 257, 258, 42,  47,  37, 43, 45,
;cc-anGwFF.1: 196:                   264,   265, 60, 62, 262, 263, 260, 261, 38,  94,  124, 266, 267, 63, 44, -3,
;cc-anGwFF.1: 197:                   -3,    -3,  -2, 40, 257, -2,  -2,  -2,  -2,  -2,  -2,  -2,  -2,  -2, -2, -2,
;cc-anGwFF.1: 198:                   -2,    -2,  -2, -2, -2,  -2,  -2,  -2,  -2,  41,  257, 58,  41,  -2 };
;cc-anGwFF.1: 200: short yydef[]  = { 0, -2, 0,  22, 0,  0,  0,  0,  0,  29, 1,  0,  0,  0, 0,  0,  0, 0, 0,  0, 0,
;cc-anGwFF.1: 201:                   0, 0,  0,  0,  0,  0,  0,  0,  0,  0,  23, 24, 25, 0, 0,  28, 2, 3, 4,  5, 6,
;cc-anGwFF.1: 202:                   7, 8,  -2, -2, -2, -2, -2, -2, 15, 16, 17, 18, 19, 0, 21, 26, 0, 0, 27, 20 };
;cc-anGwFF.1: 218: int yyv[150];
;cc-anGwFF.1: 219: int yychar      = -1;
;cc-anGwFF.1: 220: int yynerrs     = 0;
;cc-anGwFF.1: 221: short yyerrflag = 0;
;cc-anGwFF.1: 223: int yyparse(void) {
;cc-anGwFF.1: 224:     short yyj, yym;
;cc-anGwFF.1: 225:     register int *yypvt;
;cc-anGwFF.1: 226:     short yystate, *yyps, yyn;
;cc-anGwFF.1: 227:     int *yypv;
;cc-anGwFF.1: 228:     short *yyxi;
;cc-anGwFF.1: 229:     short yys[150];
;cc-anGwFF.1: 231:     yystate   = 0;
;cc-anGwFF.1: 232:     yychar    = -1;
;cc-anGwFF.1: 233:     yynerrs   = 0;
;cc-anGwFF.1: 234:     yyerrflag = 0;
;cc-anGwFF.1: 235:     yyps      = &yys[-1];
;cc-anGwFF.1: 236:     yypv      = &yyv[-1];
;cc-anGwFF.1: 238: yystack:
;cc-anGwFF.1: 242:     if (++yyps > &yys[150]) {
;cc-anGwFF.1: 243:         yyerror("yacc stack overflow");
;cc-anGwFF.1: 244:         return (1);
;cc-anGwFF.1: 245:     }
;cc-anGwFF.1: 246:     *yyps = yystate;
;cc-anGwFF.1: 247:     ++yypv;
;cc-anGwFF.1: 248:     *yypv = yyval;
;cc-anGwFF.1: 250: yynewstate:
;cc-anGwFF.1: 252:     yyn = yypact[yystate];
;cc-anGwFF.1: 254:     if (yyn <=   -1000)
;cc-anGwFF.1: 255:         goto yydefault;
;cc-anGwFF.1: 257:     if (yychar < 0)
;cc-anGwFF.1: 258:         if ((yychar = yylex()) < 0)
;cc-anGwFF.1: 259:             yychar = 0;
;cc-anGwFF.1: 260:     if ((yyn += yychar) < 0 || yyn >=  363)
;cc-anGwFF.1: 261:         goto yydefault;
;cc-anGwFF.1: 263:     if (yychk[yyn = yyact[yyn]] == yychar) {
;cc-anGwFF.1: 264:         yychar  = -1;
;cc-anGwFF.1: 265:         yyval   = yylval;
;cc-anGwFF.1: 266:         yystate = yyn;
;cc-anGwFF.1: 267:         if (yyerrflag > 0)
;cc-anGwFF.1: 268:             --yyerrflag;
;cc-anGwFF.1: 269:         goto yystack;
;cc-anGwFF.1: 270:     }
;cc-anGwFF.1: 272: yydefault:
;cc-anGwFF.1: 275:     if ((yyn = yydef[yystate]) == -2) {
;cc-anGwFF.1: 276:         if (yychar < 0)
;cc-anGwFF.1: 277:             if ((yychar = yylex()) < 0)
;cc-anGwFF.1: 278:                 yychar = 0;
;cc-anGwFF.1: 281:         for (yyxi = yyexca; (*yyxi != (-1)) || (yyxi[1] != yystate); yyxi += 2)
;cc-anGwFF.1: 282:             ;
;cc-anGwFF.1: 284:         while (*(yyxi += 2) >= 0) {
;cc-anGwFF.1: 285:             if (*yyxi == yychar)
;cc-anGwFF.1: 286:                 break;
;cc-anGwFF.1: 287:         }
;cc-anGwFF.1: 288:         if ((yyn = yyxi[1]) < 0)
;cc-anGwFF.1: 289:             return (0);
;cc-anGwFF.1: 290:     }
;cc-anGwFF.1: 291:     if (yyn == 0) {
;cc-anGwFF.1: 294:         switch (yyerrflag) {
;cc-anGwFF.1: 296:         case 0:
;cc-anGwFF.1: 298:             yyerror("syntax error");
;cc-anGwFF.1: 299:         yyerrlab:
;cc-anGwFF.1: 300:             ++yynerrs;
;cc-anGwFF.1: 302:         case 1:
;cc-anGwFF.1: 303:         case 2:
;cc-anGwFF.1: 305:             yyerrflag = 3;
;cc-anGwFF.1: 309:             while (yyps >= yys) {
;cc-anGwFF.1: 310:                 yyn = yypact[*yyps] + 256;
;cc-anGwFF.1: 311:                 if (yyn >= 0 && yyn <  363 && yychk[yyact[yyn]] == 256) {
;cc-anGwFF.1: 312:                     yystate = yyact[yyn];
;cc-anGwFF.1: 313:                     goto yystack;
;cc-anGwFF.1: 314:                 }
;cc-anGwFF.1: 315:                 yyn = yypact[*yyps];
;cc-anGwFF.1: 320:                 --yyps;
;cc-anGwFF.1: 321:                 --yypv;
;cc-anGwFF.1: 322:             }
;cc-anGwFF.1: 324:         yyabort:
;cc-anGwFF.1: 325:             return (1);
;cc-anGwFF.1: 327:         case 3:
;cc-anGwFF.1: 331:             if (yychar == 0)
;cc-anGwFF.1: 332:                 goto yyabort;
;cc-anGwFF.1: 333:             yychar = -1;
;cc-anGwFF.1: 334:             goto yynewstate;
;cc-anGwFF.1: 335:         }
;cc-anGwFF.1: 336:     }
;cc-anGwFF.1: 342:     yyps -= yyr2[yyn];
;cc-anGwFF.1: 343:     yypvt = yypv;
;cc-anGwFF.1: 344:     yypv -= yyr2[yyn];
;cc-anGwFF.1: 345:     yyval = yypv[1];
;cc-anGwFF.1: 346:     yym   = yyn;
;cc-anGwFF.1: 348:     yyn = yyr1[yyn];
;cc-anGwFF.1: 349:     yyj = yypgo[yyn] + *yyps + 1;
;cc-anGwFF.1: 350:     if (yyj >=  363 || yychk[yystate = yyact[yyj]] != -yyn)
;cc-anGwFF.1: 351:         yystate = yyact[yypgo[yyn]];
;cc-anGwFF.1: 353:     switch (yym) {
;cc-anGwFF.1: 354:     case 1:
;cc-anGwFF.1: 355:         {
;cc-anGwFF.1: 356:             return (yypvt[-1]);
;cc-anGwFF.1: 357:         }
;cc-anGwFF.1: 358:     case 2:
;cc-anGwFF.1: 359:         {
;cc-anGwFF.1: 360:             yyval = yypvt[-2] * yypvt[-0];
;cc-anGwFF.1: 361:         }
;cc-anGwFF.1: 362:         break;
;cc-anGwFF.1: 363:     case 3:
;cc-anGwFF.1: 364:         {
;cc-anGwFF.1: 365:             if (yypvt[0] == 0) {
;cc-anGwFF.1: 366:                 yyerror("division by zero");
;cc-anGwFF.1: 367:                 yyval = 0;
;cc-anGwFF.1: 368:             } else if (yypvt[-2] == 	-32768		 && yypvt[0] == -1) {
;cc-anGwFF.1: 369:                 yyerror("division overflow");
;cc-anGwFF.1: 370:                 yylval = 	-32768		;
;cc-anGwFF.1: 371:             } else {
;cc-anGwFF.1: 372:                 yyval = yypvt[-2] / yypvt[-0];
;cc-anGwFF.1: 373:             }
;cc-anGwFF.1: 374:         }
;cc-anGwFF.1: 375:         break;
;cc-anGwFF.1: 376:     case 4:
;cc-anGwFF.1: 377:         {
;cc-anGwFF.1: 378:             if (yypvt[0] == 0) {
;cc-anGwFF.1: 379:                 yyerror("division by zero");
;cc-anGwFF.1: 380:                 yyval = 0;
;cc-anGwFF.1: 381:             } else if (yypvt[-2] == 	-32768		 && yypvt[0] == -1) {
;cc-anGwFF.1: 382:                 yyerror("division overflow");
;cc-anGwFF.1: 383:                 yylval = 	-32768		;
;cc-anGwFF.1: 384:             } else {
;cc-anGwFF.1: 385:                 yyval = yypvt[-2] % yypvt[-0];
;cc-anGwFF.1: 386:             }
;cc-anGwFF.1: 387:         }
;cc-anGwFF.1: 388:         break;
;cc-anGwFF.1: 389:     case 5:
;cc-anGwFF.1: 390:         {
;cc-anGwFF.1: 391:             yyval = yypvt[-2] + yypvt[-0];
;cc-anGwFF.1: 392:         }
;cc-anGwFF.1: 393:         break;
;cc-anGwFF.1: 394:     case 6:
;cc-anGwFF.1: 395:         {
;cc-anGwFF.1: 396:             yyval = yypvt[-2] - yypvt[-0];
;cc-anGwFF.1: 397:         }
;cc-anGwFF.1: 398:         break;
;cc-anGwFF.1: 399:     case 7:
;cc-anGwFF.1: 400:         {
;cc-anGwFF.1: 401:             yyval = yypvt[-2] << yypvt[-0];
;cc-anGwFF.1: 402:         }
;cc-anGwFF.1: 403:         break;
;cc-anGwFF.1: 404:     case 8:
;cc-anGwFF.1: 405:         {
;cc-anGwFF.1: 406:             yyval = yypvt[-2] >> yypvt[-0];
;cc-anGwFF.1: 407:         }
;cc-anGwFF.1: 408:         break;
;cc-anGwFF.1: 409:     case 9:
;cc-anGwFF.1: 410:         {
;cc-anGwFF.1: 411:             yyval = yypvt[-2] < yypvt[-0];
;cc-anGwFF.1: 412:         }
;cc-anGwFF.1: 413:         break;
;cc-anGwFF.1: 414:     case 10:
;cc-anGwFF.1: 415:         {
;cc-anGwFF.1: 416:             yyval = yypvt[-2] > yypvt[-0];
;cc-anGwFF.1: 417:         }
;cc-anGwFF.1: 418:         break;
;cc-anGwFF.1: 419:     case 11:
;cc-anGwFF.1: 420:         {
;cc-anGwFF.1: 421:             yyval = yypvt[-2] <= yypvt[-0];
;cc-anGwFF.1: 422:         }
;cc-anGwFF.1: 423:         break;
;cc-anGwFF.1: 424:     case 12:
;cc-anGwFF.1: 425:         {
;cc-anGwFF.1: 426:             yyval = yypvt[-2] >= yypvt[-0];
;cc-anGwFF.1: 427:         }
;cc-anGwFF.1: 428:         break;
;cc-anGwFF.1: 429:     case 13:
;cc-anGwFF.1: 430:         {
;cc-anGwFF.1: 431:             yyval = yypvt[-2] == yypvt[-0];
;cc-anGwFF.1: 432:         }
;cc-anGwFF.1: 433:         break;
;cc-anGwFF.1: 434:     case 14:
;cc-anGwFF.1: 435:         {
;cc-anGwFF.1: 436:             yyval = yypvt[-2] != yypvt[-0];
;cc-anGwFF.1: 437:         }
;cc-anGwFF.1: 438:         break;
;cc-anGwFF.1: 439:     case 15:
;cc-anGwFF.1: 440:         {
;cc-anGwFF.1: 441:             yyval = yypvt[-2] & yypvt[-0];
;cc-anGwFF.1: 442:         }
;cc-anGwFF.1: 443:         break;
;cc-anGwFF.1: 444:     case 16:
;cc-anGwFF.1: 445:         {
;cc-anGwFF.1: 446:             yyval = yypvt[-2] ^ yypvt[-0];
;cc-anGwFF.1: 447:         }
;cc-anGwFF.1: 448:         break;
;cc-anGwFF.1: 449:     case 17:
;cc-anGwFF.1: 450:         {
;cc-anGwFF.1: 451:             yyval = yypvt[-2] | yypvt[-0];
;cc-anGwFF.1: 452:         }
;cc-anGwFF.1: 453:         break;
;cc-anGwFF.1: 454:     case 18:
;cc-anGwFF.1: 455:         {
;cc-anGwFF.1: 456:             yyval = yypvt[-2] && yypvt[-0];
;cc-anGwFF.1: 457:         }
;cc-anGwFF.1: 458:         break;
;cc-anGwFF.1: 459:     case 19:
;cc-anGwFF.1: 460:         {
;cc-anGwFF.1: 461:             yyval = yypvt[-2] || yypvt[-0];
;cc-anGwFF.1: 462:         }
;cc-anGwFF.1: 463:         break;
;cc-anGwFF.1: 464:     case 20:
;cc-anGwFF.1: 465:         {
;cc-anGwFF.1: 466:             yyval = yypvt[-4] ? yypvt[-2] : yypvt[-0];
;cc-anGwFF.1: 467:         }
;cc-anGwFF.1: 468:         break;
;cc-anGwFF.1: 469:     case 21:
;cc-anGwFF.1: 470:         {
;cc-anGwFF.1: 471:             yyval = yypvt[-0];
;cc-anGwFF.1: 472:         }
;cc-anGwFF.1: 473:         break;
;cc-anGwFF.1: 474:     case 22:
;cc-anGwFF.1: 475:         {
;cc-anGwFF.1: 476:             yyval = yypvt[-0];
;cc-anGwFF.1: 477:         }
;cc-anGwFF.1: 478:         break;
;cc-anGwFF.1: 479:     case 23:
;cc-anGwFF.1: 480:         {
;cc-anGwFF.1: 481:             yyval = -yypvt[-0];
;cc-anGwFF.1: 482:         }
;cc-anGwFF.1: 483:         break;
;cc-anGwFF.1: 484:     case 24:
;cc-anGwFF.1: 485:         {
;cc-anGwFF.1: 486:             yyval = !yypvt[-0];
;cc-anGwFF.1: 487:         }
;cc-anGwFF.1: 488:         break;
;cc-anGwFF.1: 489:     case 25:
;cc-anGwFF.1: 490:         {
;cc-anGwFF.1: 491:             yyval = ~yypvt[-0];
;cc-anGwFF.1: 492:         }
;cc-anGwFF.1: 493:         break;
;cc-anGwFF.1: 494:     case 26:
;cc-anGwFF.1: 495:         {
;cc-anGwFF.1: 496:             yyval = yypvt[-1];
;cc-anGwFF.1: 497:         }
;cc-anGwFF.1: 498:         break;
;cc-anGwFF.1: 499:     case 27:
;cc-anGwFF.1: 500:         {
;cc-anGwFF.1: 501:             yyval = yypvt[-1];
;cc-anGwFF.1: 502:         }
;cc-anGwFF.1: 503:         break;
;cc-anGwFF.1: 504:     case 28:
;cc-anGwFF.1: 505:         {
;cc-anGwFF.1: 506:             yyval = yypvt[-0];
;cc-anGwFF.1: 507:         }
;cc-anGwFF.1: 508:         break;
;cc-anGwFF.1: 509:     case 29:
;cc-anGwFF.1: 510:         {
;cc-anGwFF.1: 511:             yyval = yypvt[-0];
;cc-anGwFF.1: 512:         }
;cc-anGwFF.1: 513:         break;
;cc-anGwFF.1: 514:     }
;cc-anGwFF.1: 515:     goto yystack;
;cc-anGwFF.1: 516: }
;cc-anGwFF.1: 558: static  char sccsid[] = "@(#)yylex.c	1.9 19/08/29 2010-2019 J. Schilling";
;cc-anGwFF.1: 635: typedef	int		ptrdiff_t;
;cc-anGwFF.1: 636: typedef	unsigned	size_t;
;cc-anGwFF.1: 645: extern int	errno;
;cc-anGwFF.1: 647: extern void	*memcpy(void *, void *, size_t);
;cc-anGwFF.1: 648: extern void	*memmove(void *, void *, size_t);
;cc-anGwFF.1: 649: extern char	*strcpy(char *, char *);
;cc-anGwFF.1: 650: extern char	*strncpy(char *, char *, size_t);
;cc-anGwFF.1: 651: extern char	*strcat(char *, char *);
;cc-anGwFF.1: 652: extern char	*strncat(char *, char *, size_t);
;cc-anGwFF.1: 653: extern int	 memcmp(void *, void *, size_t);
;cc-anGwFF.1: 654: extern int	 strcmp(char *, char *);
;cc-anGwFF.1: 655: extern int	 strcasecmp(char *, char *);
;cc-anGwFF.1: 657: extern int	 strncmp(char *, char *, size_t);
;cc-anGwFF.1: 658: extern int	 strncasecmp(char *, char *, size_t);
;cc-anGwFF.1: 661: extern void	*memchr(void *, int, size_t);
;cc-anGwFF.1: 665: extern char	*strstr(char *, char *);
;cc-anGwFF.1: 666: extern char	*strtok(char *, char *);
;cc-anGwFF.1: 667: extern void	*memset(void *, int, size_t);
;cc-anGwFF.1: 668: extern char	*strerror(int);
;cc-anGwFF.1: 669: extern size_t	 strlen(char *);
;cc-anGwFF.1: 670: extern char	*strchr(char *, int);
;cc-anGwFF.1: 672: extern char	*index(char *, int);
;cc-anGwFF.1: 673: extern char	*strrchr(char *, int);
;cc-anGwFF.1: 675: extern char	*rindex(char *, int);
;cc-anGwFF.1: 676: extern char	*strcasestr(char *, char *);
;cc-anGwFF.1: 678: extern char	*strncasestr(char *, char *, size_t);
;cc-anGwFF.1: 695:  int yylex(void);
;cc-anGwFF.1: 696: static int tobinary(char *, int);
;cc-anGwFF.1: 698: int yylex() {
;cc-anGwFF.1: 699:     static int ifdef   = 0;
;cc-anGwFF.1: 700:     static char *op2[] = { "||", "&&", ">>", "<<", ">=", "<=", "!=", "==" };
;cc-anGwFF.1: 701:     static int val2[]  = {      267,    266,        265,        264,        263,        262,        261,        260 };
;cc-anGwFF.1: 702:     static char *opc   = "b\bt\tn\nf\fr\r\\\\";
;cc-anGwFF.1: 703:     extern char fastab[];
;cc-anGwFF.1: 704:     extern char *outptr, *inptr, *newp;
;cc-anGwFF.1: 705:     extern int flslvl;
;cc-anGwFF.1: 706:     register char savc, *s;
;cc-anGwFF.1: 707:     int val;
;cc-anGwFF.1: 708:     register char **p2;
;cc-anGwFF.1: 709:     struct symtab *sp;
;cc-anGwFF.1: 711:     for (;;) {
;cc-anGwFF.1: 712:         newp = skipbl(newp);
;cc-anGwFF.1: 713:         if (*inptr == '\n')
;cc-anGwFF.1: 714:             return (     258);
;cc-anGwFF.1: 715:         savc  = *newp;
;cc-anGwFF.1: 716:         *newp = '\0';
;cc-anGwFF.1: 717:         for (p2 = op2 + 8; --p2 >= op2;)
;cc-anGwFF.1: 718:             if (0 == strcmp(*p2, inptr)) {
;cc-anGwFF.1: 719:                 val = val2[p2 - op2];
;cc-anGwFF.1: 720:                 goto ret;
;cc-anGwFF.1: 721:             }
;cc-anGwFF.1: 722:         s = "+-*/%<>&^|?:!~(),";
;cc-anGwFF.1: 723:         while (*s)
;cc-anGwFF.1: 724:             if (*s++ == *inptr) {
;cc-anGwFF.1: 725:                 val = *--s;
;cc-anGwFF.1: 726:                 goto ret;
;cc-anGwFF.1: 727:             }
;cc-anGwFF.1: 728:         if (*inptr <= '9' && *inptr >= '0') {
;cc-anGwFF.1: 729:             if (*inptr == '0')
;cc-anGwFF.1: 730:                 yylval = (inptr[1] == 'x' || inptr[1] == 'X') ? tobinary(inptr + 2, 16)
;cc-anGwFF.1: 731:                                                               : tobinary(inptr + 1, 8);
;cc-anGwFF.1: 732:             else
;cc-anGwFF.1: 733:                 yylval = tobinary(inptr, 10);
;cc-anGwFF.1: 734:             val =    257;
;cc-anGwFF.1: 735:         } else if ( ((fastab + 128)[(int)*inptr] &      1)) {
;cc-anGwFF.1: 736:             if (0 == strcmp(inptr, "defined")) {
;cc-anGwFF.1: 737:                 ifdef = 1;
;cc-anGwFF.1: 738:                 ++flslvl;
;cc-anGwFF.1: 739:                 val =   259;
;cc-anGwFF.1: 740:             } else {
;cc-anGwFF.1: 741:                 sp = lookup(inptr, -1);
;cc-anGwFF.1: 742:                 if (ifdef != 0) {
;cc-anGwFF.1: 743:                     ifdef = 0;
;cc-anGwFF.1: 744:                     --flslvl;
;cc-anGwFF.1: 745:                 }
;cc-anGwFF.1: 746:                 yylval = (sp->value == 0) ? 0 : 1;
;cc-anGwFF.1: 747:                 val    =    257;
;cc-anGwFF.1: 748:             }
;cc-anGwFF.1: 749:         } else if (*inptr == '\'') {
;cc-anGwFF.1: 750:             val =    257;
;cc-anGwFF.1: 751:             if (inptr[1] == '\\') {
;cc-anGwFF.1: 752:                  char c;
;cc-anGwFF.1: 754:                 if (newp[-1] == '\'')
;cc-anGwFF.1: 755:                     newp[-1] = '\0';
;cc-anGwFF.1: 756:                 s = opc;
;cc-anGwFF.1: 757:                 while (*s)
;cc-anGwFF.1: 758:                     if (*s++ != inptr[2])
;cc-anGwFF.1: 759:                         ++s;
;cc-anGwFF.1: 760:                     else {
;cc-anGwFF.1: 761:                         yylval = *s;
;cc-anGwFF.1: 762:                         goto ret;
;cc-anGwFF.1: 763:                     }
;cc-anGwFF.1: 764:                 if (inptr[2] <= '9' && inptr[2] >= '0')
;cc-anGwFF.1: 765:                         yylval = c = tobinary(inptr + 2, 8);
;cc-anGwFF.1: 766:                 else
;cc-anGwFF.1: 767:                     yylval = inptr[2];
;cc-anGwFF.1: 768:             } else
;cc-anGwFF.1: 769:                 yylval = inptr[1];
;cc-anGwFF.1: 770:         } else if (0 == strcmp("\\\n", inptr)) {
;cc-anGwFF.1: 771:             *newp = savc;
;cc-anGwFF.1: 772:             continue;
;cc-anGwFF.1: 773:         } else {
;cc-anGwFF.1: 774:             *newp = savc;
;cc-anGwFF.1: 775:             pperror("Illegal character %c in preprocessor if", *inptr);
;cc-anGwFF.1: 776:             continue;
;cc-anGwFF.1: 777:         }
;cc-anGwFF.1: 778:     ret:
;cc-anGwFF.1: 779:         *newp  = savc;
;cc-anGwFF.1: 780:         outptr = inptr = newp;
;cc-anGwFF.1: 781:         return (val);
;cc-anGwFF.1: 782:     }
;cc-anGwFF.1: 783: }
;cc-anGwFF.1: 785: static int tobinary(char *st, int b) {
;cc-anGwFF.1: 786:     int n, c, t;
;cc-anGwFF.1: 787:     char *s;
;cc-anGwFF.1: 788:     n = 0;
;cc-anGwFF.1: 789:     s = st;
;cc-anGwFF.1: 790:     while ((c = *s++)) {
;cc-anGwFF.1: 791:         switch (c) {
;cc-anGwFF.1: 792:         case '0':
;cc-anGwFF.1: 793:         case '1':
;cc-anGwFF.1: 794:         case '2':
;cc-anGwFF.1: 795:         case '3':
;cc-anGwFF.1: 796:         case '4':
;cc-anGwFF.1: 797:         case '5':
;cc-anGwFF.1: 798:         case '6':
;cc-anGwFF.1: 799:         case '7':
;cc-anGwFF.1: 800:         case '8':
;cc-anGwFF.1: 801:         case '9':
;cc-anGwFF.1: 802:             t = c - '0';
;cc-anGwFF.1: 803:             break;
;cc-anGwFF.1: 804:         case 'a':
;cc-anGwFF.1: 805:         case 'b':
;cc-anGwFF.1: 806:         case 'c':
;cc-anGwFF.1: 807:         case 'd':
;cc-anGwFF.1: 808:         case 'e':
;cc-anGwFF.1: 809:         case 'f':
;cc-anGwFF.1: 810:             t = c - 'a' + 10;
;cc-anGwFF.1: 811:             if (b > 10)
;cc-anGwFF.1: 812:                 break;
;cc-anGwFF.1: 813:         case 'A':
;cc-anGwFF.1: 814:         case 'B':
;cc-anGwFF.1: 815:         case 'C':
;cc-anGwFF.1: 816:         case 'D':
;cc-anGwFF.1: 817:         case 'E':
;cc-anGwFF.1: 818:         case 'F':
;cc-anGwFF.1: 819:             t = c - 'A' + 10;
;cc-anGwFF.1: 820:             if (b > 10)
;cc-anGwFF.1: 821:                 break;
;cc-anGwFF.1: 822:         default:
;cc-anGwFF.1: 823:             t = -1;
;cc-anGwFF.1: 824:             if (c == 'l' || c == 'L')
;cc-anGwFF.1: 825:                 if (*s == '\0')
;cc-anGwFF.1: 826:                     break;
;cc-anGwFF.1: 827:             pperror("Illegal number %s", st);
;cc-anGwFF.1: 828:         }
;cc-anGwFF.1: 829:         if (t < 0)
;cc-anGwFF.1: 830:             break;
;cc-anGwFF.1: 831:         n = n * b + t;
;cc-anGwFF.1: 832:     }
;cc-anGwFF.1: 833:     return (n);
;cc-anGwFF.1: 834: }
