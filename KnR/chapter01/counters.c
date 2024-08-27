#include <stdio.h>

int main()
{
    int  nl, nc, c;

    nl = nc = 0;
    while ((c = getchar()) != EOF)
    {
        if (c == '\n')
            ++nl;
        else
            ++nc;
    }
    printf("Line numbers: %d\n", nl);
    printf("Char numbers: %d\n", nc);
    return 0;
}
