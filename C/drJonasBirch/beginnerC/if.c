/* if.c */
#include <stdio.h>

int main()
{
    int speed = 0;
    printf("How fast are you driving? km/h\n");
    scanf("%d", &speed);

    if (speed > 100)
        printf("You are driving too fast!\n");
    else if (speed > 80)
        printf("You are driving perfectly fine!\n");
    else
        printf("OK!\n");
    return 0;
}
