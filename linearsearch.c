//linear search program
#include<stdio.h>
int main()
{
	int a[20],n,i,key,pos,flag;
	printf("Enter size of an array:\n");
	scanf("%d",&n);
	printf("Enter %d elements in array:\n",n);
	for(i=0;i<n;i++)
	{
		scanf("%d",&a[i]);
	}
	printf("Enter element to be search:\n");
	scanf("%d",&key);
	flag=0;
	for(i=0;i<n;i++)
	{
		if(key==a[i])
		{
			flag=1;
			pos=i+1;
			break;
		}
	}
	if(flag==1)
	{
		printf("Element %d Found at %d\n",key,pos);
	}
	else
	{
		printf("Elements %d is Not found",key);
	}
	return 0;
}
