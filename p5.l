%{
	// Design a LEX code to count and print the number of total characters, words, white spaces in given 'Input.txt' file.
	#include <stdio.h>
	int tWord=0, tChar=0, tSpace=0;
%}

%%

[^\n \t] {tChar++;}
" " {tWord++; tSpace++;}
[\n \t] {tWord++;}

%%

	int yywrap() {
		return 1;
	}
	int main() {
		yyin=fopen("p5.txt", "r");
		yylex();
		printf("\nTotal Word = %d, Total Character = %d, Total Space = %d\n", tWord, tChar, tSpace);
		return 0;
	}