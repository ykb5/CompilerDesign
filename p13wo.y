%{
    #include <stdio.h>
    int yylex();
    int yyerror();
%}

%token NUMBER
%left '+' '-'
%left '*' '/'
%token EOL

%%

input: /* empty */
     | input line

line: expr EOL { printf("Result: %d\n", $1); }

expr: term
    | expr '+' term    { $$ = $1 + $3; }
    | expr '-' term    { $$ = $1 - $3; }

term: factor
    | term '*' factor  { $$ = $1 * $3; }
    | term '/' factor  { $$ = $1 / $3; }

factor: NUMBER
      | '(' expr ')'   { $$ = $2; }

%%

int main() {
    yyparse();
    return 0;
}

int yyerror(char* s) {
    printf("Error: %s\n", s);
    return 0;
}