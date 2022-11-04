/*Allen 20219014
Implement validation of Arithmetric Exp*/
%{
#include<stdio.h>
#include<stdlib.h>
%}
%token BOP ID OP BCL SC
%%
stmt: A{ printf("valid expression\n");
              exit(0); }
;
A: B OP B SC | B OP ID SC | ID OP B SC | EX SC
;
B: BOP EX BCL
;
EX: ID | ID OP ID 
;
%%

int yyerror(char *msg)
 {
  printf("invalid string\n");
  exit(0);
 }

int main()
 {
  printf("enter the string\n");
  yyparse();
 }
