// susmita
#include<stdio.h>
int a[5];
int main()
{
    int i,count,j;
    for(i=0;i<5;i++)
    {
        scanf("%d",&a[i]);
        for(j=0;j<i;j++)
        {
            if(a[i]==a[j])
            {
                printf("enter unique value");
                scanf("%d",&a[i]);
            }
        //    else
       /*      continue; */
         }

        }
    return 0;
}
