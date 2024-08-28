/* name.c */
#include <stdio.h>

int main()
{
    char name[32];

    printf("What is your name\n");

    /* read from the keyboard */
    scanf("%s", &name);
    printf("Hello %s!\n", &name);

    return 0;
}
