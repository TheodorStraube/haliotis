#pragma once

struct position
{
	int line;
	int diag;
	
};

enum direction {topleft, topright, bottomleft, bottomright, left, right };

struct turn
{
	std::vector<position> pieces;
	
	direction dir;	
	
};

int const line_length[] = {5, 6, 7, 8, 9, 8, 7, 6, 5};
char const line_names[] = {'A', 'B', 'C', 'D', 'E', 'F', 'G', 'H', 'I'};
