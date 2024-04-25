%{
	#include<stdio.h>
	int keyword = 0, cmnt = 0, op = 0, faltu=0; 
	
%}
%%
include|if|else|printf|stdio.h|return|main|int {keyword++;}

"/*".*"*/"   {cmnt++;}

"+"|"-"|"*"|"/"|"%"|"=="|"<="|">="  {op++;}

. { faltu++;}

%%


int main(){

	yyin = fopen("input.c","r");
	yylex();
	printf("The no. of Keywords is: %d\n",keyword);
	printf("The no. of comments is: %d\n",cmnt);
	printf("The no. of operator is: %d\n",op);
	return 0;
}
int yywrap()
{ return 1;
}