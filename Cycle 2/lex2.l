/*Allen George Ajth CSA 14*/
/*Lex pgm 2*/
%{
#include<stdio.h>
#include<string.h>
int c3=0,num=0,sa=0,eb=0,ci=0;
%}
  
/* Rules Section*/
%%
[0-9]+[ \t\n]+ {num++; if (yyleng==4) {c3++;}}
[0-9]+[a-z|A-Z|0-9|_]* {}
[a-z|A-Z|_][a-z|A-Z|0-9|_]* {ci++; if (yytext[0]=='a'){sa++;} if (yytext[yyleng-1]=='b') eb++;}

%%
  
int yywrap(void){}
  
int main()
{    
extern FILE *yyin;
yyin=fopen("input.txt","r");
yylex();
printf("Number of 3 Digit numbers %d\n", c3);
printf("Number of Numbers %d\n", num);
printf("Number of Identifiers %d\n", ci);
printf("Number of Identifiers starting with a %d\n", sa);
printf("Number of Identifiers ending with b %d\n", eb);
return 0;
}

/*INPUT
696 1234 212 22 8
allen
allen1
1allen
rob
bob

OUTPUT
Number of 3 Digit numbers 2
Number of Numbers 5
Number of Identifiers 4
Number of Identifiers starting with a 2
Number of Identifiers ending with b 2
*/
