/*Allen 20219014
Implement validation of Arithmetic Expressions in YACC*/
%{
#include "y.tab.c"
%}

%%
"(" {return BOP;}
")" {return BCL;}
[a-zA-Z][a-zA-Z0-9]* {return ID;}
"+"|"-"|"*"|"/"|"++"|"%"|"--" {return OP;}
; {return SC;}
. {return yytext[0];}
%%

int yywrap() {return 1;}

/*OUTPUT
exam@dslab-Veriton-Series:~/Desktop/14$ ./a.out
enter the string
(a+b)*x;
valid expression
exam@dslab-Veriton-Series:~/Desktop/14$ ./a.out
enter the string
a=b/;   
invalid string
exam@dslab-Veriton-Series:~/Desktop/14$ 

*/

