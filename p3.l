%{
	// Design a LEX code to identify and print integer and float value in given input pattern.
	#include <stdio.h>
%}

%%

[0-9]+"."[0-9]+ {printf("\nDecimal Number\n");}  
[0-9]+ {printf("\nInteger Number\n");}

%%

	int yywrap()		
	{
    	return 1;
    }
	int main()
	{
		yylex();
		return 0;
	}