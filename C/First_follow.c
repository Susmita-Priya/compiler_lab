/*P=i
P=c
P=nTS
Q=P
Q=aS
Q=bScST
R=b
R=#
S=c
S=Rn
S=#
T=RSq

P=i|c|nTs
Q=P|aS|bScST
R=b|#
S=c|Rn|#
T=RSq*/

#include<stdio.h>
#include<ctype.h>
#include<string.h>
#include<math.h>
#include<stdlib.h>

char production[20][20];
char f[100];
char done[100];
int count,n=0,m=0,flag=0;

void findfirst(char c);
void findfollow(char c);

int main()
{
    char c;
    printf("Enter the number of production rules:\n");
    scanf("%d",&count);

    printf("Enter the production rules (E=T+R) :\n");
    //input the grammer
    for(int i=0;i<count;i++){
        scanf("%s",&production[i]);
    }
     for(int i=0;i<count;i++){
        done[i]=production[i][0];
     }

     for(int i=0;i<count;i++){
            for(int j=0;j<count;j++){
                    if(done[i]==done[j]&&i!=j)
                    {
                        done[j]='!';
                    }
            }
     }
 //for(int i=0;i<count;i++){
   //     printf("%c",done[i]);
     //}
        // first function call
        for(int i=0;i<count;i++){
                n=0;
        c=done[i];
        if(isalpha(c))
       {
        findfirst(c);
        printf("First (%c) = {",c);
            for(int j=0;j<n;j++){
                printf(" %c ",f[j]);
            }
         printf("}\n");
        strcpy(f," ");
        n=0;
        findfollow(c);
         printf("Follow (%c) = {",c);
            for(int j=0;j<n;j++){
                printf(" %c ",f[j]);
            }
         printf("}\n");
        }
        }
}
void findfirst(char c){

    // lower letter hole direct first e jabe
    if(islower(c)){
        f[n++]=c;   //string hisebe chinta korche
    }

    //nahole jotogula same nonterminal thkbe sob gular first ber korbo
    for(int i=0;i<count;i++){
        if(production[i][0]==c)
        {
            if(production[i][2]=='#'){ // # mane epsilon. = erpr elsilon pele first e jabe
                f[n++]='#';
                findfollow(production[i][0]);
            }
            else if(islower(production[i][2]))   //terminal pele first e jbe
                f[n++]=production[i][2];
            else
                findfirst(production[i][2]);    // Non-terminal pele call again
        }
    }

}

void findfollow(char c){

    if(production[0][0]==c)
        f[n++]='$';
    for(int i=0;i<count;i++){
        for(int j=2;j<strlen(production[i]);j++){
            if(production[i][j]==c)
            {
                if(production[i][j+1]!='\0')
                    findfirst(production[i][j+1]);
                if(production[i][j+1]=='\0'&& c!=production[i][0])
                    findfollow(production[i][0]);
            }
        }
    }
}
