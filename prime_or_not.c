#include<stdio.h>
int main()
{
	int n,i,flag,r;
	printf("Enter range:");
	scanf("%d",&r);
	for(n=2;n<=r;n++)
	{
	
	flag=1;
	for(i=2;i<=n/2;i++)
	{
		if(n%i==0)
		{
			flag=0;
			break;
		}
	}
	if(flag==1)
	{
		printf("%d ",n);
	}
	
}
	return 0;
}
