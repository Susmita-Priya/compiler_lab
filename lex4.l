%Susmita Rani Saha B180305047

%{
	#include<stdio.h>
	int in=0;
	int flt=0;
	int expp=0;
	int cmplx=0;	
%}

%%

[+-]?[0-9]+ {in++; printf("\n%s is integer",yytext);}

[+-]?[0-9]*"."[0-9]+ {flt++; printf("\n%s is float",yytext);}

[+-]?[0-9]+[Ee][-+]?[0-9]+ {expp++; printf("\n%s is exponentital",yytext);}

[+-]?[0-9]*[-+]?[0-9]*"i" {cmplx++; printf("\n%s is complex",yytext);}

%%

int main()
{
        yylex();		
	
	return 0;
}
int yywrap(){
return 1;
}