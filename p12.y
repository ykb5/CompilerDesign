%{
    #include <stdio.h>
    int yylex();
    int yyerror();
%}
%token NUMBER ID
%left '+' '-'
%left '*' '/'

%%

E:E'='P
 |P
P:P'+'Q
 |Q
Q:Q'-'R
 |R
R:R'*'S
 |S
S:S'/'T
 |T
T:NUMBER
 |ID

%%

int main() {
    printf("\nEnter the Expression: ");
    yyparse();
    printf("\nValid Expression");
}
int yyerror() {
    printf("\nInvalid Expression");
}