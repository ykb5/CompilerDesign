%{
	// Design a LEX code to remove the comments from any C-program given at run-time and store into 'out.c' file.
	#include <stdio.h>
%}

%%

\/\/(.*) {};
\/\*(.*\n)*.*\*\/ {};

%%

	int yywrap() {
		return 1;
	}
	int main() {
		yyin = fopen("p7_Input.c", "r");
		yyout = fopen("p7_Output.c", "w");
		yylex();
		return 0;
	}