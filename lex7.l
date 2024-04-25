%Susmita Rani Saha B180305047
%{
	#include<stdio.h>
	int sen=0;
%}
%%
(""[aA][nN][dD]"")|(""[oO][rR]"")|(""[bB][uU][tT]"")|(""[yY][eE][tT]"") { printf("\n%s is used as compound word\n",yytext); sen=1; }

(""[tT][hH][oO][uU][gG][hH]"")|(""[aA][sS]"")|(""[sS][iI][nN][cC][eE]"")|(""[bB][eE][cC][aA][uU][sS][eE]"")|(""[tT][hH][aA][tT]"")|(""[iI][fF]"") { printf("\n%s is used as complex word\n",yytext);sen=2;}

%%
int main()
{
	printf("Enter the sentence ");
        yylex();	
	if(sen==1)
	printf("\nCompound Sentence\n");
	else if(sen==2)
	printf("\nComplex Sentence\n");
	else
	printf("\nSimple Sentence\n");
	return 0;
}
int yywrap(){
return 1;
}

