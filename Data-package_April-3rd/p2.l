%{
	#include <stdio.h>
%}

%%

^[0-9]*[.][0-9]* printf("Valid Identifier");
^[0-9]*[^.] printf("\nInvalid Identifier");
.;

%%

	int yywrap() {
		return 1;
	}
	int main() {
        	printf("Enter the input string: ");
        	yylex();
        }
