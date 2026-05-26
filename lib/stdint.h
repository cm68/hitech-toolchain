/*
 * stdint.h -- C99 fixed-width integer types for HI-TECH C v3.09.
 *
 * Maps stdint.h spellings onto the native HI-TECH primitives:
 *   char  is 8 bits, short is 16, int is 16, long is 32.
 *
 * 64-bit types (int64_t, uint64_t) are intentionally omitted; HI-TECH
 * C v3.09 has no native 64-bit integer. Sources that need 64-bit math
 * must do it explicitly.
 */

#ifndef _STDINT_H
#define _STDINT_H

/* HI-TECH C v3.09 has no `signed` keyword. Plain `char` is signed by
   default on Z80, so int8_t = char works. */
typedef	char			int8_t;
typedef	unsigned char		uint8_t;

typedef	short			int16_t;
typedef	unsigned short		uint16_t;

typedef	long			int32_t;
typedef	unsigned long		uint32_t;

/* Pointer-sized integers (16 bits on Z80). */
typedef	int			intptr_t;
typedef	unsigned		uintptr_t;

/* Limits, for callers that test them. */
#define	INT8_MIN	(-128)
#define	INT8_MAX	127
#define	UINT8_MAX	255

#define	INT16_MIN	(-32768)
#define	INT16_MAX	32767
#define	UINT16_MAX	65535

#define	INT32_MIN	(-2147483647L - 1)
#define	INT32_MAX	2147483647L
#define	UINT32_MAX	4294967295UL

#endif	/* _STDINT_H */
