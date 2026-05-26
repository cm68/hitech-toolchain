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
