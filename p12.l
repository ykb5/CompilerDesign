%{
    // Design a YACC/LEX code to recognize valid arithmetic expression with operators +, -, *, and /.
    #include "p12.tab.h"
%}

%%

[0-9]+ {return NUMBER;}
[A-Za-z_][A-Za-z0-9_]* {return ID;}
[ \t]+;
\n {return 0;}
. {return yytext[0];}

%%

int yywrap() {
    return 1;
}