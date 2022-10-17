/*Allen George Ajth CSA 14*/
/*Lex pgm 3*/
letters [a-zA-Z]
digits [0-9]

%{
#include<stdio.h>
#include<string.h>

int keywords = 0, identifiers = 0, arithmetic_operators = 0, relational_operators = 0, loops = 0;

%}

%%

["](.)*["] {}

int|main|include|printf|scanf|return|<stdio.h> { keywords++; }
for|while|do { loops++; keywords++; }
"++"|"--"|[+|-|*|/|%] { arithmetic_operators++; }
==|>=|<=|>|< { relational_operators++; }
{letters}({letters}|{digits}|_)* { identifiers++; }

. {}
%%

int yywrap(void) {}

int main(void) {
	extern FILE *yyin;

	yyin = fopen("input.c", "r");
	yylex();
	printf("\n Number of keywords: %d", keywords);
	printf("\n Number of identifiers: %d", identifiers);
	printf("\n Number of arithmetic operators: %d", arithmetic_operators);
	printf("\n Number of relational operators: %d", relational_operators);
	printf("\n Total number of loops: %d\n", loops);

	return 0;
}

/*INPUT
#include <stdio.h>
int main()
{
    int n, count, sum = 0;
    printf("Enter the value of n(positive integer): ");
    scanf("%d",&n);
    for(count=1; count <= n; count++)
    {  sum = sum + count;
    }
    printf("Sum of first %d natural numbers is: %d",n, sum);
    return 0;
}

OUTPUT
 Number of keywords: 10
 Number of identifiers: 13
 Number of arithmetic operators: 2
 Number of relational operators: 1
 Total number of loops: 1
*/

