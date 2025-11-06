#include<stdio.h>
int main()
{
	int n,i,left,right,flag=0,mid,pos,key;
	printf("Enter size of the array:");
	scanf("%d",&n);
	int a[20];
	printf("Enter the %d elements:\n",n);
	for(i=0;i<n;i++)
	{
		scanf("%d",&a[i]);
	}
	printf("\nEnter the element you want to search:");
	scanf("%d",&key);
	left=0;
	right=n-1;
	while(left<=right)
	{
		mid=(left+right)/2;
		if(key==a[mid])
		{
			pos=mid+1;
			flag=1;
			break;
		}
		else if(key<a[mid])
		right=mid-1;
		else
		left=mid+1;
	}
	if(flag==1)
	printf("%d is found at position %d",key,pos);
	else
	printf("No element found");
	return 0;
}
