/*
 *
 * The fname.c file is part of the restored P1.COM program
 * from the Hi-Tech CP/M Z80 C v3.09
 *
 * Not a commercial goal of this laborious work is to popularize among
 * potential fans of 8-bit computers the old HI-TECH Z80 C compiler V3.09
 * (HI-TECH Software) and extend its life, outside of the CP/M environment
 * for full operation in windows 32/64 and Unix-like operating systems
 *
 * The HI-TECH Z80 C cross compiler V3.09 is provided free of charge for any use,
 * private or commercial, strictly as-is. No warranty or product support
 * is offered or implied including merchantability, fitness for a particular
 * purpose, or non-infringement. In no event will HI-TECH Software or its
 * corporate affiliates be liable for any direct or indirect damages.
 *
 * You may use this software for whatever you like, providing you acknowledge
 * that the copyright to this software remains with HI-TECH Software and its
 * corporate affiliates.
 *
 * All copyrights to the algorithms used, binary code, trademarks, etc.
 * belong to the legal owner - Microchip Technology Inc. and its subsidiaries.
 * Commercial use and distribution of recreated source codes without permission
 * from the copyright holderis strictly prohibited.
 *
 *
 * See the readme.md file for additional commentary
 *
 * Mark Ogden
 * 25-Aug-2022
 *
 */

/*
 * Return a pointer past any drive letter / path prefix in `name`.
 * Recognises /, \, and : as separators, so works across CP/M
 * (drive:file), POSIX (/path/file), and DOS/Win32 (drive:\path/file)
 * without any #ifdefs. Avoids strpbrk which HI-TECH C v3.09's libc
 * does not ship despite the prototype in <string.h>.
 */
char *fname(char *name) {
    char *t;
    char *end = name;

    for (t = name; *t; t++)
        if (*t == '/' || *t == '\\' || *t == ':')
            end = t + 1;
    return end;
}
