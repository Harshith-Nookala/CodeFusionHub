//fibannocci series
#include<stdio.h>
int main()
{
	int a=0,b=1,c,n,i;
	printf("Enter n value: ");
	scanf("%d\n",&n);
	for(i=1;i<=n;i++)
	{
		c=a+b;
		a=b;
		b=c;
		printf("%d ",c);
	}
	return 0;
}
