%{
	// Design a LEX code to extract all HTML tags in the given HTML file at run-time and store into Text file given at run-time.
	#include <stdio.h>
%}

%%

"<"[^>]*> {fprintf(yyout,"%s\n",yytext);}
. {};

%%

	int yywrap() {
		return 1;
	}
	int main() {
		yyin = fopen("p8_htmlIn.html", "r");
		yyout = fopen("p8_htmlOut.txt", "w");
		yylex();
		return 0;
	}