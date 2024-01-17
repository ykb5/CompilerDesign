%{
	#include <stdio.h>
%}

%%

[+ - = * /] {printf("\nOperator");}
[{}()] {printf("\nSeparator");}
int|char|float|double|if|else|for|while {printf("\nKeywords");}
[a-z A-Z][a-z A-Z 0-9]* {printf("\nIdentifier");}

%%

	int yywrap() {
		return 1;
	}
	int main() {
		yylex();
	}
