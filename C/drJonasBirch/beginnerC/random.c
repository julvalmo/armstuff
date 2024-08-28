/* random.c */
#include <stdio.h>
#include <stdlib.h>

#include <sys/types.h>
#include <unistd.h>

int main()
{
    int random, our_random_function(int);

    /* using the process id as a seed for the pseudo random generator */
    srand(getpid()); /* getpid is a syscall, find it with man 2 getpid */

    random = our_random_function(10);

    printf("%d\n", random);
    return 0;
}

int our_random_function(int max)
{
    int x;
    /* TODO: check man 3 rand */
    /* TODO: check how the modulus operator works here */
    x = rand() % max + 1; /* the plus 1 i used because the max is non inclusive */

    return x;
}
