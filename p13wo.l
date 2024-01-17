%{
    #include "p13wo.tab.h"
%}

%%

[ \t]             /* ignore whitespace */
[0-9]+            { yylval = atoi(yytext); return NUMBER; }
[-+\/*()]        { return yytext[0]; }
\n                { return EOL; }
.                 { /* ignore unrecognized characters */ }

%%

int yywrap() {
    return 1;
}