/*Allen George Ajth CSA 14*/
/* Lex Pgm 1 */

%{
#include<stdio.h>
#include<string.h>
int l=0, w=0,lc=0,uc=0,d=0,spc=0,x=0;
%}
  
/* Rules Section*/
%%
\n {l++;w++;} /* Rule for counting number of lines*/
[ \t\n] {w++;} /* Rule for counting number of words*/
[a-z] {lc++;x++;} /* Rule for counting number of lowercase characters*/
[A-Z] {uc++;x++;} /* Rule for counting number of uppercase characters*/
[0-9] {d++;x++;} /* Rule for counting number of digits*/
[^(a-zA-Z0-9 \t\n\\n] {spc++;x++;} /* Rule for counting number of special characters*/

%%
  
int yywrap(void){}
  
int main()
{    
extern FILE *yyin;
yyin=fopen("input.txt","r");
yylex();
printf("Number of Lines %d\n", l);
printf("Number of Words %d\n", w);
printf("Number of Lowercase %d\n", lc);
printf("Number of Uppercase %d\n", uc);
printf("Number of Digits %d\n", d);
printf("Number of Special %d\n", spc);
printf("Number of Characters %d\n", x);
return 0;
}

/*INPUT
Programming
I lOvE Programming
12@

OUTPUT
Number of Lines 3
Number of Words 5
Number of Lowercase 22
Number of Uppercase 5
Number of Digits 2
Number of Special 1
Number of Characters 30
*/
