%Susmita Rani Saha B180305047
%{
	#include<stdio.h>
	int to=0;
%}
%%
"am"|"is"|"are"|"was"|"were"|"have"|"has"|"had" { printf("\n %s is to be verb\n",yytext);}
%%
int main()
{
        yylex();		
	return 0;
}
int yywrap(){
return 1;
}

