/*Allen 20219014
While loop in YACC
*/%{
#include<stdio.h>
#include<stdlib.h>
%}
%token WHILE BOP BCL SP COP CCL SC NL ID REL CONST OP
%%
stmt: WHILE BOP COND BCL SP COP STA SC CCL NL{ printf("valid string\n");
              exit(0); }
;
COND: ID REL ID | ID REL CONST
;
STA: ID | ID REL ID OP ID | ID REL ID | ID OP
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

