%{
	// Design a DFA in LEX code which accepts string containing even number of 'a' and even number of 'b' over input alphabet {a,b}.
	#include <stdio.h>
%}

%s A B C DEAD

%%

<INITIAL>a BEGIN A;
<INITIAL>b BEGIN B;
<INITIAL>[^ab\n] BEGIN DEAD;
<INITIAL>\n BEGIN INITIAL; {printf("String Accepted\n");}

<A>a BEGIN INITIAL;
<A>b BEGIN C;
<A>[^ab\n] BEGIN DEAD;
<A>\n BEGIN INITIAL; {printf("String Not Accepted\n");}

<B>a BEGIN C;
<B>b BEGIN INITIAL;
<B>[^ab\n] BEGIN DEAD;
<B>\n BEGIN INITIAL; {printf("String Not Accepted\n");}  

<C>a BEGIN B;
<C>b BEGIN A;
<C>[^ab\n] BEGIN DEAD;
<C>\n BEGIN INITIAL; {printf("String Not Accepted\n");}  

<DEAD>[^\n] BEGIN DEAD;
<DEAD>\n BEGIN INITIAL; {printf("Invalid String\n");}

%%

	int yywrap() {
		return 1;
	}
	int main() {
		printf("Enter the String: ");
		yylex();
		return 0;
	}