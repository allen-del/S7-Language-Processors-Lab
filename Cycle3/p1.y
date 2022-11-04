/* 
Allen 20219014
Implement a yacc program to accept belonging to the language L= a^n b^n | a>0
*/


%{
#include<stdio.h>
#include<stdlib.h>
%}

%token A B NL

%%
stmt: S NL {printf("valid string\n");
             exit(0);}
;
S: A S B |
;
%% 

int yyerror(char *msg)
{
printf("invalid string\n");
exit(0);
}

main()
{
printf("enter the string\n");
yyparse();
}

