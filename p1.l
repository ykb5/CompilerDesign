%{
	// Design a LEX code to count the number of lines, space, tab-meta character and rest of characters in a given input pattern.
	#include <stdio.h>
	int l=0, c=0, s=0, t=0;
%}

%%

[\n] {l++;c++;}
[\t] {t++;c++;}
[ ] {s++;c++;}
[^\t\n ] {c++;}


%%

	int yywrap() {
		return 1;
	}
	int main() {
        	printf("Enter the input string: ");
        	yylex();
			printf("\nLines=%d\nCharacters=%d\nSpaces=%d\nTab=%d\n", l, c, s, t);
			return 0;
        }