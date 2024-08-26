#include <stdio.h>

int main()
{
    int lower, upper, step;
    float fahr, celsius;
    lower = 0;
    upper = 300;
    step = 20;

    fahr = 0;

    printf("Fahrenheit to Celsius\n");
    printf("|-----------|\n");
    while (fahr <= upper)
    {
        celsius = (5.0/9.0) * (fahr-32.0);
        printf("|%4.0f|%6.1f|\n", fahr, celsius);

        fahr += step;
    }
    printf("|-----------|\n\n");

    return 0;
}
