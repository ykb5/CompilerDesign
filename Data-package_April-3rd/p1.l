%{
	#include <stdio.h>
%}

%%

^[a-z A-Z _][a-z A-Z 0-9 _]* {printf("Valid Identifier");}
^[^a-z A-Z _] {printf("\nInvalid Identifier");}
.;

%%

	int yywrap() {
		return 1;
	}
	int main() {
        	printf("Enter the input string: ");
        	yylex();
        }
