%{
    #include <stdio.h>
    int yylex();
    void yyerror(char *s);
%}
%token num
%left '+' '-'
%left '*' '/' '%'
%left '('')'

%%

S:E {printf("\nResult: %d", $1); return 0;}
E:E '+' E { $$ = $1 + $3; }
 | E '-' E { $$ = $1 - $3; }
 | E '*' E { $$ = $1 * $3; }
 | E '/' E { $$ = $1 / $3; }
 | E '%' E { $$ = $1 % $3; }
 | '('E')' {$$=$2;}
 | num { $$ = $1; }
;

%%

int main() {
    printf("\nEnter the expression: ");
    yyparse();
    return 0;
}
void yyerror(char *s) {
    printf("\nError: %s\n", s);
}