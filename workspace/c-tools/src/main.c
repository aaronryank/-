#include <stdio.h>
#include <string.h>
#include <stdlib.h>
#include <errno.h>
#include "c-tools.h"

int main(int argc, char **argv)
{
    assert_quit(argc > 1,"Usage: %s command filename\n",argv[0]);

    FILE *in = argv[2] ? fopen(argv[2],"r") : stdin;

    assert_quit(in,"Error opening file %s: %s\n",argv[2],strerror(errno));

    if (!strcmp(argv[1],"line2multi"))
        line2multi(in);

    fclose(in);
}