#include <stdio.h>

#include <termios.h>

#include <unistd.h>


#define MAX_LINE_LENGTH 1024


void enableRawMode() {

    struct termios tty;

    tcgetattr(STDIN_FILENO, &tty);

    tty.c_lflag &= ~(ICANON | ECHO);

    tcsetattr(STDIN_FILENO, TCSANOW, &tty);

}


int main() {

    enableRawMode();


    char buffer[MAX_LINE_LENGTH] = {0};

    int pos = 0;


    int c;

    while ((c = getchar()) != EOF) {

        if (c == '\t') {

            putchar('*');

            buffer[pos++] = '*';

        } else if (c == 127) { // 127 is the ASCII code for Backspace

            if (pos > 0) {

                // If not at the start of the buffer, erase the last character

                pos--;

                putchar('\b');

                putchar(' ');

                putchar('\b');

            } else if (pos == 0 && buffer[0] != '\0') {

                // If at the start of a line, move up to the previous line

                printf("\033[F"); // Move cursor up one line

                printf("\033[%dC", MAX_LINE_LENGTH); // Move cursor to the end of the previous line

                putchar('\b');

                putchar(' ');

                putchar('\b');

                buffer[pos] = '\0';

            }

        } else {

            putchar(c);

            buffer[pos++] = c;

        }

        fflush(stdout);

    }


    return 0;

}


