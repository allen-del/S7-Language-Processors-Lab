/*Allen George Ajth CSA 14*/
/*DFA to accept binary strings with even number of 0s(min 2) */

#include <stdio.h>
#include <string.h>

int state = 1;

void DFA(char ch){
	if(state==1){
		if(ch=='0'){
			state=2;}
		else if(ch=='1'){
			state=1;}
}
	else if(state==2){
		if(ch=='0'){
			state=3;}
		else if(ch=='1'){
			state=2;}
}
	else if(state==3){
		if(ch=='0'){
			state=2;}
		else if(ch=='1'){
			state=3;}
}

}

void Final_State_Check(){
printf("State reached: %d \n",state);
if(state==3){
	printf("Valid String");
}
else{
	printf("Invalid String");
}

}

int main(){

char str[100];

printf("Enter string :");
scanf("%s",str);
int len;
len=strlen(str);

int i;
for(i=0;i<len;i++){
DFA(str[i]);
}
Final_State_Check();

return 0;
}

/*OUTPUT
Enter string :0010 
State reached: 2 
Invalid String

Enter string :1001
State reached: 3 
Valid String

*/
