
#include <stdio.h>
#include <stdlib.h>
#include <unistd.h>
#include <string.h>
#include <assert.h>
#include "mcp.h"

void read_board(char *);
void write_move(char *);
void write_board(char *);
void get_move(char *);

void read_board(char *buf)
{
        ssize_t count = read(CHILD_IN_FD, buf, 64);
        assert(count == 64);
        assert(buf[63] == '\0');
}

void write_move(char *buf)
{
        size_t const len = strlen(buf)+1;
        ssize_t count = write(CHILD_OUT_FD, buf, len);
        assert(count == static_cast<ssize_t>(len));
}

void write_board(char *board)
{
        int const line_length[] = {5, 6, 7, 8, 9, 8, 7, 6, 5};

        int offset = 63;
        for (int l = 0; l < 9; ++l) {
                offset -= line_length[l];
                printf("%c  ", 'I' - l);

                for (int i = 0; i < 9-line_length[l]; ++i) {
                        printf("  ");
                }
                printf("%c", board[offset]);
                for (int i = 1; i < line_length[l]; ++i) {
                        printf(" - %c", board[offset+i]);
                }

                if (l > 4) {
                        printf("   %i", 14-l);
                }
                printf("\n    ");
                for (int i = 1; i < 9-line_length[l]+(l>4); ++i) {
                        printf("  ");
                }
                if (l < 4) {
                        for (int i = 0; i < line_length[l]; ++i) {
                                printf("/ \\ ");
                        }
                } else if (l < 8) {
                        for (int i = 1; i < line_length[l]; ++i) {
                                printf("\\ / ");
                        }
                }
                printf("\n");
        }
        printf("             1   2   3   4   5\n\n");
        printf("You're playing as %s.\n", board[0] == 'B' ?
               "black" : "white");
}

void get_move(char *buf)
{
        // See the README for a description of the move syntax
        printf("Please enter your move: ");
        fgets(buf, 10, stdin);
        // delete the newline that fgets inserts
        for (; *buf; ++buf) {
                if (*buf == '\n')
                        *buf = '\0';
        }
}

int main(int argc, char *argv[])
{
        (void)argc; (void)argv;
        char board_buffer[64];
        char move_buffer[10];
        while (true) {
                read_board(board_buffer);
                write_board(board_buffer);
                get_move(move_buffer);
                printf("move is: %s\n", move_buffer);
                write_move(move_buffer);
        }
}
