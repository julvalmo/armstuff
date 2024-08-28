/* triangle.c */
#include <stdio.h>

int main()
{
    int base, height, area, area_triangle(int, int);

    printf("Base: "); /* it may buffer until theres a newline so it can print */
    fflush(stdout); /* make shure the stdout is printed*/
    scanf("%d", &base);

    printf("Height: "); /* it may buffer until theres a newline so it can print*/
    fflush(stdout); /* make shure the stdout is printed*/
    scanf("%d", &height);

    area = area_triangle(base, height);
    printf("The are of the triangle is: %d\n", area);
    return 0;
}

int area_triangle(int base, int height)
{
    return (base * height) / 2;
}
