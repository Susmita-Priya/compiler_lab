%Susmita Rani Saha B180305047
%{
	#include<stdio.h>
	int sc=0;
	int mlc=0;
	
%}
%%
[/][/].* {sc++; printf("\n%s is singleline comment",yytext);}
"/*".*"*/" {mlc++; printf("\n%s is multiline comment",yytext);}

%%
int main()
{
	yyin = fopen("comments.c","r");
        yylex();		
	printf("%d single line,%d multiple line",sc,mlc);
        return 0;
}
int yywrap(){
return 1;
}
