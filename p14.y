%{
    #include <stdio.h>
    #include <stdlib.h>
    int yylex();
    int yyerror();
%}

%token NUMBER ID
%left '+' '-'
%left '*' '/'

%%

E:E'+'T {printf("+");}
 |T {}
T:T'-'F {printf("-");}
 |F {}
F:F'*'R {printf("*");}
 |R {}
R:R'/'G {printf("/");}
 |G {}
G:|NUMBER { printf("%d",yylval);}

%%

int main() {
    printf("\nEnter the Expression: ");
    yyparse();
}
int yyerror() {
    printf("\nInvalid");
}