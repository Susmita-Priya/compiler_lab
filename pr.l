%{

#include<stdio.h>
int ch=0;
int keyword=0;
int comment=0;
int nline=0;
int op=0;
int identifier=0;
int other=0;

%}


%%

[a-zA-z] {ch++;}


%%

int main()
{
	yyin = fopen("input.c","r");
	yylex();
	
	printf("line number: %d\n",nline);
	printf("keyword is: %d\n",keyword);
	printf("Char is: %d\n",ch);
	printf("comments is: %d\n",comment);
	printf("operator is: %d\n",op);
	printf("identifier is: %d\n",identifier);
	printf("Other is: %d\n",other);

	return 0;
}
int yywrap()
{ return 1;
}