/*Allen George Ajth CSA 14*/
/*DFA for language {a,b}, each 'a' followed by one 'b' or 'ab', use a transition table*/

#include<stdio.h>
#include<stdlib.h>
#include<string.h>

int transition_table[4][2] = {{1,0},{2,3},{10,3},{1,3}};

int main()
{
	char str[100];
	printf("Enter the string :");
	scanf("%s",str);
	int state =  0;
	int len=(int)strlen(str);
	int i = 0;
	int x;
	for(i=0;i<len;++i){
		if(str[i] != 'a' && str[i] != 'b' ){
			printf("Invalid character detected!");
			return 0;
		}
	}
	for(i=0;i<len;++i){
		switch(state){
			case 0:	if(str[i] == 'b'){
						state = transition_table[0][1];
					}
					if(str[i] == 'a'){
						state = transition_table[0][0];
					}
					break;
			case 1:	if(str[i] == 'b'){
						state = transition_table[1][1];
					}
					if(str[i] == 'a'){
						state = transition_table[1][0];
					}
					break;
			case 2:	if(str[i] == 'b'){
						state = transition_table[2][1];
					}
					if(str[i] == 'a'){
						state = transition_table[2][0];
						i = 100;
					}
					break;
			case 3:	if(str[i] == 'b'){
						state = transition_table[3][1];
					}
					if(str[i] == 'a'){
						state = transition_table[3][0];
					}
					break;
		}
	}
	if(state != 3 && state != 0){
		printf("Invalid\n");
	}
	else{
		printf("Valid\n");
	}
}

/*OUTPUT
Enter the string :aab
Valid

Enter the string :ab
Valid

Enter the string :aaba 
Invalid

Enter the string :abba
Invalid

*/
