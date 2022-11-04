/* 
Allen 20219014
Implement if condition in YACC
*/


alpha [A-Za-z]
digit [0-9]
%{
#include "y.tab.c"
%}

%%
[ \t\n]   
if   { return IF;}
then   { return THEN;}
else   { return ELSE;}
{digit}+    {return NUM;}
{alpha}({alpha}|{digit})*  {  return ID;}
"<="    {return LE;}
">="    { return GE;}
"=="    {return EQ;}
"!="    { return NE;}
"||"   { return OR;}
"&&"    {return AND;}
.    {return yytext[0];}
%%
int yywrap()								
{
return 1;
}

/* OUTPUT

exam@dslab-Veriton-Series:~/Desktop/20219014/yacc2$ lex p2.l
exam@dslab-Veriton-Series:~/Desktop/20219014/yacc2$ yacc p2.y -d
exam@dslab-Veriton-Series:~/Desktop/20219014/yacc2$ gcc lex.yy.c y.tab.c 
exam@dslab-Veriton-Series:~/Desktop/20219013/yacc2$ ./a.out
Enter the exp: B=22
invalid string
exam@dslab-Veriton-Series:~/Desktop/20219013/yacc2$ ./a.out
Enter the exp: if(A==X) then a=6; else b=9;
Input accepted.
*/
