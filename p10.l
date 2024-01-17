%{
    // Design a DFA in LEX code which accepts string containing third last elements 'a' over input alphabet {a,b}.
    #include <stdio.h>
%}
%s A B C D E F G DEAD

%%

<INITIAL>a BEGIN A;
<INITIAL>b BEGIN INITIAL;
<INITIAL>[^ab\n] BEGIN DEAD;
<INITIAL>[\n] BEGIN INITIAL; {printf("\nNot accepted\n");}
<G>a BEGIN A;
<G>b BEGIN INITIAL;
<G>[^ab\n] BEGIN DEAD;
<G>[\n] BEGIN INITIAL; {printf("\nAccepted\n");}
<E>a BEGIN B;
<E>b BEGIN F;
<E>[^ab\n] BEGIN DEAD;
<E>[\n] BEGIN INITIAL; {printf("\nAccepted\n");}
<F>a BEGIN E;
<F>b BEGIN G;
<F>[^ab\n] BEGIN DEAD;
<F>[\n] BEGIN INITIAL; {printf("\nNot accepted\n");}
<C>a BEGIN C;
<C>b BEGIN D;
<C>[^ab\n] BEGIN DEAD;
<C>[\n] BEGIN INITIAL; {printf("\nAccepted\n");}
<D>a BEGIN E;
<D>b BEGIN G;
<D>[^ab\n] BEGIN DEAD;
<D>[\n] BEGIN INITIAL; {printf("\nAccepted\n");}
<B>a BEGIN C;
<B>b BEGIN D;
<B>[^ab\n] BEGIN DEAD;
<B>[\n] BEGIN INITIAL; {printf("\nNot accepted\n");}
<A>a BEGIN B;
<A>b BEGIN F;
<A>[^ab\n] BEGIN DEAD;
<A>[\n] BEGIN INITIAL; {printf("\nNot accepted\n");}

%%

int yywrap() {
    return 1;
}
int main() {
    printf("\nEnter the string: ");
    yylex();
    return 0;
}