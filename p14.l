%{
    // Design YACC/LEX code that translates infix expression to postfix expression.
    #include "p14.tab.h"
    extern int yylval;
%}

%%

[0-9]+  {yylval=atoi(yytext); return NUMBER;}
\n return 0;
. return *yytext;

%%
int yywrap() {
    return 1;
}