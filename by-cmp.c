#include<stdio.h>
#include<string.h>
int main()
{
	char a[100],b[100];
	int i;
	printf("Enter first string:");
	scanf("%d[^\n]",&a);
	printf("Enter second string:");
	scanf("%d[^\n]",&b);
	for(i=0;a[i]!='\0';i++)
	{
		if(a[i]!=b[i])
		break;
	}
	printf("these are not same strings");
	if(a[i]==b[i])
	printf("these are same");
	return 0;
}
