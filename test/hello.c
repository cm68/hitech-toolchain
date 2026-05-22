/*
 * C-level hello, exercising the full zc3-driven pipeline:
 *   cpp_new3 -> p1x3 -> cgen3 -> optim3 -> zasx3 -> linq3
 * plus libc startup (_getargs, stdio init) and printf.
 */
#include <stdio.h>

int main(void)
{
	printf("hello world\n");
	return 0;
}
