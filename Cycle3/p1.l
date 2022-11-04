/* 
Implement a yacc program to accept belonging to the language L=a^nb^n | a>0
*/
%{
#include "y.tab.c"
%}

%%
[aA] {return A;}
[bB] {return B;}
\n {return NL;}
. {return yytext[0];}
%%

int yywrap()								
{
return 1;
}

/*
OUTPUT
exam@dslab-Veriton-Series:~/Desktop/20219014/yacc$ lex p1.l
exam@dslab-Veriton-Series:~/Desktop/20219014/yacc$ yacc p1.y -d
exam@dslab-Veriton-Series:~/Desktop/20219014/yacc$ gcc lex.yy.c y.tab.c -w
exam@dslab-Veriton-Series:~/Desktop/20219014/yacc$ ./a.out
enter the string
aabbb
invalid string
exam@dslab-Veriton-Series:~/Desktop/20219014/yacc$ ./a.out
enter the string
aaabbb
valid string
*/
