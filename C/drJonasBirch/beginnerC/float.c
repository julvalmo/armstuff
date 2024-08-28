/* float.c */
#include <stdio.h>

int main()
{
    float pi, r, answer;
    printf("What is the R in cm?\n");
    scanf("%f", &r);

    pi = 3.14;

    answer = r * r * pi;
    printf("The area is %.2f\n", answer);

    return 0;
}
