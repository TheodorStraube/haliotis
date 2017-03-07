#include <stdio.h>
#include <unistd.h>
#include <stdlib.h>

#include <algorithm>
#include <cstring>
#include <string>
#include <vector>

#include "mcp.h"
#include "my_player.h"

using namespace std;

void read_board(char *);
void mirror_board(char *);
void write_move(char *);
void write_board(char *);
vector<position> getAllPieces(char*);
void get_move(char *, char*);

void read_board(char *buf)
{
        ssize_t count = read(CHILD_IN_FD, buf, 64);
}

void write_move(char *buf)
{
        size_t const len = strlen(buf)+1;
        ssize_t count = write(CHILD_OUT_FD, buf, len);
        if(count != static_cast<ssize_t>(len))
		{
				printf("error in write move");
		}
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

vector<position> getAllPieces(char *board)
{
		vector<position> positions;
		positions = vector<position>();
		
		int lineIndex;
		lineIndex = 0;
		
		int lineAcc = 0;
	
		for(unsigned diagonal = 1; lineIndex < 9; diagonal++)
		{
				
				if(board[diagonal + 1 + lineAcc - max(0, lineIndex - 4)] == board[0])
				{
						position p;
						p.line = line_names[lineIndex];
						p.diag = diagonal;
					
						positions.push_back(p);
				}
				if(diagonal >= (lineIndex >= 5 ? 9 : line_length[lineIndex]))
				{
					diagonal = max(0, lineIndex - 3);
					lineAcc += line_length[lineIndex];
					lineIndex++; 
				}	
				
						
		}
		return positions;
}
	

void get_move(char *move, char *board)
{
	
	vector<position> positions = getAllPieces(board);
	
	for(vector<position>::iterator it = positions.begin(); it != positions.end(); ++it) {
		printf("OUT:   %c, %i \n", it->line, it->diag);
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
				get_move(move_buffer, board_buffer);
				write_move(move_buffer);
        }
}
