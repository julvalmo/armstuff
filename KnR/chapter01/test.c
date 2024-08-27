#include <stdio.h>
#include <termios.h>
#include <unistd.h>

void enableRawMode() {
    struct termios tty;
    tcgetattr(STDIN_FILENO, &tty);
    tty.c_lflag &= ~(ICANON | ECHO);
    tcsetattr(STDIN_FILENO, TCSANOW, &tty);
}

int main()
{
    enableRawMode();
    int c;

    while ((c = getchar()) != EOF)
    {
        if (c == '\t')
            putchar('*');
        else if (c == 127) // 127 is often the code for the Backspace key
        {
            putchar('\b');  // Move cursor back
            putchar(' ');   // Overwrite the character with a space
            putchar('\b');  // Move cursor back again
        }
        else
            putchar(c);
    }
    fflush(stdout);  // Ensure the character is printed immediately

    return 0;
}
