%{
	#include <stdio.h>
%}

%%

\<[^>]*\> {fprintf(yyout, "%s\n", yytext);}
.|\n;

%%

	int yywrap() {
		return 1;
	}
	int main() {
		yyin = fopen("htmlIn.c", "r");
		yyout = fopen("htmlOut.c", "w");
		yylex();
		return 0;
	}
