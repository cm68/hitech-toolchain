/*
 * stdbool.h -- C99 boolean type for HI-TECH C v3.09.
 *
 * HI-TECH C v3.09 has no native bool, so we typedef it to
 * `unsigned char`. Be aware: sizeof(bool) is therefore 1, not 4 as
 * C99 implementations on 32-bit hosts often use.
 */

#ifndef _STDBOOL_H
#define _STDBOOL_H

typedef	unsigned char		bool;

#define	true	1
#define	false	0

#define	__bool_true_false_are_defined	1

#endif	/* _STDBOOL_H */
