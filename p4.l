%{
	// Design a LEX code for tokenizing (Identify and print OPERATORS, SEPERATORS, KEYWORDS, IDENTIFIERS) the following C-fragment..
	#include <stdio.h>
%}

%%

[+ - = * /] {printf("Operator\n");}
[{}()] {printf("Separator\n");}
int|float|if|else|while|bool|for|do|double|char|printf|scanf|default|auto|goto|break|continue|case|switch|enum|extern|inline|long|short|return|sizeof|signed|static|unsigned|typedef|union|void {printf("Keyword\n");}
[a-z A-Z][a-z A-Z 0-9]* {printf("Identifier\n");}

%%

	int yywrap() {
		return 1;
	}
	int main() {
		yylex();
		return 0;
	}