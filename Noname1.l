
%{
	#include<stdio.h>
	
	int num=0;
%}

%%

([a-zA-Z0-9])* {num++;}
"\n" {printf("%d\n", num); num = 0;}

%%
int yywrap(void){}
int main()
{
        yylex();
	
	return 0;
}