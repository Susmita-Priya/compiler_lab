%Susmita Rani Saha B180305047
%{
	#include<stdio.h>
%}
%%
[0-9] {printf(""); }

^"+8801"[1]? { printf("\nCitycell\n"); }

^"+8801"[37]? { printf("\nGrameenphone\n"); }

^"+8801"[49]? { printf("\nBanglalink\n"); }

^"+8801"[5]? { printf("\nTeletalk\n"); }

^"+8801"[68]? { printf("\nRobi\n"); }


%%
int main()
{
	printf("Enter Phone number:\n");
        yylex();	
	return 0;
}
int yywrap(){
return 1;
}

