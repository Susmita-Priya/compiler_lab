%Susmita Rani Saha B180305047
%{
	#include<stdio.h>
	int ch=0;
	int word=0;
	int space=0;
	int line=0;
%}

%%

[a-zA-Z] {ch++; printf("\n%s is char",yytext);}

[a-zA-Z][a-zA-Z]* {word++; printf("\n%s is word",yytext);}

" " {space++; printf("\n%s space",yytext);}

"\n" {line++; printf("%s new line\n",yytext);}

%%

int main()
{
        yylex();		
	printf("\nchar is %d,word is %d,space is %d,line is %d",ch,word,space,line);
	return 0;
}
int yywrap(){
return 1;
}