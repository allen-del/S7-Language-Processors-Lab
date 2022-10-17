/*Allen George Ajth CSA 14*/
/*Lex pgm 4*/
%{
#include<stdio.h>
#include<string.h>
int ci=0,ce=0,co=0,cni=0,cf=0,cnf=0,neg=0;
%}
  
/* Rules Section*/
%%
[-0-9]+ {ci++; if(yytext[0]=='-') cni++; if((atoi(yytext))%2==0) ce++; else co++;}

[-0-9]+.[0-9]+ {cf++; if(yytext[0]=='-') cnf++;}

%%
  
int yywrap(void){}
  
int main()
{    
extern FILE *yyin;
yyin=fopen("input.txt","r");
yylex();
neg=cni+cnf;
printf("Number of Integers %d\n", ci);
printf("Number of Even Integers %d\n", ce);
printf("Number of Odd Integers %d\n", co);
printf("Number of Float %d\n", cf);
printf("Number of Negative numbers (both float and int) %d\n", neg);
return 0;
}

/*INPUT
-123
123.456
-98.76
868
-696.420
1197
999

OUTPUT
Number of Integers 4
Number of Even Integers 1
Number of Odd Integers 3
Number of Float 3
Number of Negative numbers (both float and int) 3
*/
