#include <stdio.h>
#include <unistd.h>
#include <stdlib.h>

#include <algorithm>
#include <cstring>
#include <string>
#include <vector>
#include <cassert>
#include <random>

#include "mcp.h"
#include "my-player.h"

using namespace std;

void read_board(char *);
int getLineIndex(char);
bool inBounds(position *);
void movePosition(position *, direction);
void write_move(char *);
void write_board(char *);
void moveToString(turn *, char *);
char getPiece(position *);
vector<position> getAllPieces(char *);
vector<turn> getMovesForPiece(position *);
vector<turn> getAllMoves(char *);
void get_move(char *, char*);

void read_board(char *buf)
{
        ssize_t count = read(CHILD_IN_FD, buf, 64);
		assert(count == 64);
        assert(buf[63] == '\0');
}
int getLineIndex(char line)
{
	return distance(line_names, find(line_names, line_names + 9, line));
}
bool inBounds(position *pos)
{
	if(pos->diag < 1 || pos->diag > 9 || pos->line < 0 || pos->line > 8)
	{
		return false;
	}
	
	if(		(pos->line < 4 && pos->diag > line_length[pos->line])
		|| 	(pos->line > 4 && pos->diag <= pos->line - 4))
	{
			return false;
	}
	return true;	
}
void movePosition(position *pos, direction dir)
{
		switch(dir)
		{
			case 0:
				pos->line++;
				break;
			case 1:
				pos->line++;
				pos->diag++;
				break;
			case 2:
				pos->line--;
				pos->diag--;
				break;
			case 3:
				pos->line--;
				break;
			case 4: 
				pos->diag--;
				break;
			case 5:
				pos->diag++;
		}
}



void write_move(char *buf)
{

	
// 		buf[0]='I';
// 		buf[1]='9';
// 		buf[2]=',';
// 		buf[3]='H';
// 		buf[4]='8';
// 		
// 		buf[5] = '\0';
	
        size_t const len = strlen(buf)+1;		
		
        ssize_t count = write(CHILD_OUT_FD, buf, len);
		assert(count == static_cast<ssize_t>(len));
		
        if(count != static_cast<ssize_t>(len))
		{
				printf("error in write move");
		}
}
void write_board(char *board)
{

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
void moveToString(turn *move, char *buf)
{
	
	assert(move->pieces.size() > 1);
	
	if(move->pieces.size() == 2) // standard Zug
	{		
		buf[0] = line_names[move->pieces.front().line];
		buf[1] = '0' + move->pieces.front().diag;
		buf[2] = ',';
		buf[3] = line_names[move->pieces.back().line];
		buf[4] = '0' + move->pieces.back().diag;
		
		buf[5] = '\0';
	}
}

char getPiece(position *pos, char *board)
{
	assert(inBounds(pos));
	
	int acc = 0;
	
	for(unsigned i = 0; i < 9; ++i)
	{
			if(pos->line == i)
			{				
				return board[acc + 1 + pos->diag - max(0,(int) i - 4)];
			}
			acc += line_length[i];
	}
	return '\0';
}

vector<position> getAllPieces(char *board)
{
		vector<position> positions;
		positions = vector<position>();
		
		int lineIndex = 0;
		
		int lineAcc = 0;
	
		for(unsigned diagonal = 1; lineIndex < 9; diagonal++)
		{
				
				if(board[diagonal + 1 + lineAcc - max(0, lineIndex - 4)] == board[0])
				{
						position p;
						p.line = lineIndex;
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

vector<turn> getMovesForPiece(position *pos, char *board)
{
	char color = getPiece(pos, board);
	char antiColor = color == 'W' ? 'B' : 'W';

	vector<turn> turns = vector<turn>();
	
	position p;
	
	turn t;
	
// 	printf("Getting Moves for: %c at %c %i \n", color, line_names[pos->line], pos->diag);
		
	bool isSumito;
	int pushStrength;
	int enemyPushStrength;
	
	vector<position> positions;
	
	for(unsigned dir = 0; dir < 6; ++dir)
	{		
		p = *pos;
		isSumito = false;		
		positions = vector<position>();
		positions.push_back(p);
		pushStrength = 0;
		enemyPushStrength = 0;
		
// 		printf("Durchlauf mit direction %i \n", dir);
		
		for(unsigned depth = 0; depth < 6; ++depth)
		{
			movePosition(&p,(direction) dir);
			
			if(inBounds(&p))
			{
// 				printf("		%c %i | \n ", line_names[p.line], p.diag);
				
				char piece = getPiece(&p, board);
				
				if(piece == color && !isSumito && depth < 1)
				{
// 					printf("standard-push \n");
					positions.push_back(p);
				}else if(piece == color && (isSumito || depth >= 2))
				{
// 					printf("fail: 2 farbwechsel oder lange farbe \n");
					break;
				}else if(piece == antiColor && !isSumito && depth == 0)
				{
// 					printf("fail: alleine kein sumito \n");
					break;
				}else if(piece == antiColor && !isSumito)
				{
// 					printf("sumito-start, eigene stärke: %i \n", depth + 1);
					++enemyPushStrength;
					pushStrength = depth + 1;
					isSumito = true;
				}else if(piece == antiColor && isSumito)
				{
// 					printf("sumito mittelteil, selbst: %i, gegner: %i \n", pushStrength, enemyPushStrength + 1);
					++enemyPushStrength;
					if(enemyPushStrength >= pushStrength)
					{
// 						printf("fail: zu schwach für sumito \n");
						break;						
					}
					
				}else if(piece == '.' && !isSumito)
				{
// 					printf("standard ende \n");					
					if(depth == 0){
						positions.push_back(p);
					}
					t.pieces = positions;
					t.dir = (direction) dir;
					turns.push_back(t);
					break;
				}
			}else
			{
				if(!isSumito)
				{
// 					printf("spielfeld zuende, kein sumito \n");
					break;
					
				}else{
// 					printf("erfolgreiches sumito \n");
					t.pieces = positions;
					t.dir = (direction) dir;
					turns.push_back(t);		
					break;
				}
			}
		}
		
	}
	for(turn tu : turns)
	{
// 		printf("\n MOVE: ");
		
		for(position po : tu.pieces)
		{
// 			printf("%c %i | ", line_names[po.line], po.diag);
		}
// 		printf("\n");
	}

	return turns;
}

vector<turn> getAllMoves(char *board)
{
	vector<turn> turns = vector<turn>();
	
	vector<position> positions = getAllPieces(board);
	
	for(vector<position>::iterator it = positions.begin(); it != positions.end(); ++it)
	{
	
		vector<turn> turnsForThisPiece = getMovesForPiece(&*it, board);
		
		turns.insert(turns.end(), turnsForThisPiece.begin(), turnsForThisPiece.end());
	}
	
	
	return turns;
}

void get_move(char *move, char *board)
{
	
	vector<turn> allTurns = getAllMoves(board);
	
	random_device rd;
    mt19937 gen(rd());
    uniform_int_distribution<> dis(0, allTurns.size() - 1);
	
    int randomIndex = dis(gen);
	
	moveToString(&allTurns.at(randomIndex), move);
	
	position p;
	p.diag = 5;
	p.line = 7;
	
// 	getMovesForPiece(&p, board);
	
	//for(vector<position>::iterator it = positions.begin(); it != positions.end(); ++it) {
	//	printf("OUT:   %c, %i --> %c \n", it->line, it->diag, getPiece(&*it, board));
	//}
	
	
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
