/* countdown.c */
#include <stdio.h>
#include <unistd.h>

int main()
{
    int number;
    number = 10;

    while (1)
    {
        printf("%d\n", number);
        sleep(1);
        number -= 1;

        if (number < 1)
            break;
    }
    return 0;
}
