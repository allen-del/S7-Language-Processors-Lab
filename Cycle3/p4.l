/*Allen 20219014

While loop in YACC*/
%{
#include "y.tab.c"
%}
%%
(while) {return WHILE;}
"(" {return BOP;}
")" {return BCL;}
[a-zA-z][a-zA-Z0-9]* {return ID;}
[0-9]+ {return CONST;}
"<="|"=="|">="|">"|"<"|"=" {return REL;}
"+"|"-"|"*"|"/"|"++"|"%"|"--" {return OP;}
"{" {return COP;}
"}" {return CCL;}
" " {return SP;}
; {return SC;}
\n {return NL;}
. {return yytext[0];}
%%
int yywrap()
{
return 1;
}

/*
OUTPUT
enter the string
while(a=b) {a=a*b;}
valid string

enter the string
while(x/) {e;}
invalid string
*/
