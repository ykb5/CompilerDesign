%{
	#include <stdio.h>
%}

%%

"//"[^\n]*;
"/*"[.*]"*/";
. {fprintf(yyout, "%s", yytext);}

%%

	int yywrap() {
		return 1;
	}
	int main() {
		yyin = fopen("in.c", "r");
		yyout = fopen("out.c", "w");
		yylex();
		return 0;
	}
