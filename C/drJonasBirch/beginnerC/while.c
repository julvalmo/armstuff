/* while.c */
#include <stdio.h>

#define true 1
#define false 0

int main()
{
    int x = 0;

    while (x == 0)
    {
        printf("Do you want to quit? press 1\n");
        scanf("%d", &x);
    }
    return 0;
}
