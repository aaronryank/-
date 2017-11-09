#include <stdio.h>
#include "../c-tools.h"

void line2multi(FILE *in)
{
    int c, prev = 0;
    int line_comment = 0;

    while ((c = getc(in)) != EOF)
    {
        if (prev == '/' && c == '/') {
            line_comment = 1;
            printf("/*");
            c = 0;
        }

        else if (prev)
            putchar(prev);

        if (c == '\n' && prev != '\\' && line_comment) {
            line_comment = 0;
            printf(" */");
        }

        prev = c;
    }

    putchar(prev);
}