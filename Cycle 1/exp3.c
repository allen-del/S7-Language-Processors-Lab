/*Allen George Ajth CSA 14*/
/*  DFA for regular expression ((ab)^*bb)^+  */

#include <stdio.h>
#include <string.h>

int state = 1;

void DFA(char ch){
	if(state==1){
		if(ch=='a'){
			state=2;}
		else if(ch=='b'){
			state=3;}
}
	else if(state==2){
		if(ch=='b'){
			state=4;}
}
	else if(state==3){
		if(ch=='b'){
			state=5;}
}
	else if(state==4){
		if(ch=='a'){
			state=2;}
		else if(ch=='b'){
			state=3;}
}

	else if(state==5){
		if(ch=='a'){
			state=2;}
		else if(ch=='b'){
			state=3;}
}

}

void Final_State_Check(){
printf("State reached: %d \n",state);
if(state==5){
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
//printf("%c",str[i]);
DFA(str[i]);
}
Final_State_Check();

return 0;
}

/*OUTPUT
Enter string :abbb
State reached: 5 
Valid String

Enter string :abba
State reached: 3 
Invalid String

Enter string :bb
State reached: 5 
Valid String
*/
