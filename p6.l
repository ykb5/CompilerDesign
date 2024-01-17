%{
	// Design a LEX code to replace white spaces of 'Input.txt' file by a single blank character into 'Output.txt' file.
	#include <stdio.h>
%}

%%

[\t " "]+ {fprintf(yyout, " ");}

%%

	int yywrap() {
		return 1;
	}
	int main() {
		yyin = fopen("p6_Input.txt", "r");
		yyout = fopen("p6_Output.txt", "w");
		yylex();
		return 0;
	}