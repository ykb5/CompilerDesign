%{
	// Design a LEX code identify and print valid identifier of C/C++ in given input pattern.
	#include <stdio.h>
%}

%%

[a-zA-Z_][a-zA-Z0-9_]* {printf("Valid Identifier");}
.* {printf("Not a Valid Identifier");}

%%

	int yywrap() {
		return 1;
	}
	int main() {
        printf("\nEnter the input: ");
        yylex();
		return 0;
    }