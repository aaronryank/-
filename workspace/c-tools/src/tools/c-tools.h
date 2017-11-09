#include <stdio.h>

#define assert_quit(x,...) if (!(x)) { fprintf(stderr,__VA_ARGS__); exit(0); }

extern void line2multi(FILE *);