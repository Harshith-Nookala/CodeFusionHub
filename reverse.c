//reverse of elements in array
#include<stdio.h>
int main()
{
	int a[20],n,i,t;
	printf("Enter size of an array:\n");
	scanf("%d",&n);
	printf("Enter the elements in array:\n");
	printf("Elements before reverse:\n");
	for(i=0;i<n;i++)
	{
		scanf("%d",&a[i]);
	}
	for(i=0;i<n/2;i++)
	{
		t=a[i];
		a[i]=a[n-1-i];
		a[n-1-i]=t;
	}
	printf("\nElements after reverse:\n");
	for(i=0;i<n;i++)
	{
		printf("%d\n",a[i]);
	}
	return 0;
}
