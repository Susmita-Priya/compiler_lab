%Susmita Rani Saha B180305047
%{
	#include<stdio.h>
	int keyword=0;
	int id=0;
%}

%%

"int"|"double"|"float"|"char"|"do"|"while"|"for"|"break"|"if"|"else"|"void"|"switch"|"printf"|"scanf"|"main" {keyword++; printf("\n%s is keyword",yytext);}

[a-zA-Z][a-zA-Z0-9]* {id++; printf("\n%s is identifier",yytext);}

%%

int main()
{
        yylex();
	printf("identifier is %d\n", id);	
	
	return 0;
}
int yywrap(){
return 1;
}