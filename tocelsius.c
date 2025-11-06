#include<stdio.h>
int main()
{
	float c,fh;
	printf("Enter temperature in Farenheit: ");
	scanf("%f",&fh);
	c=(fh-32)/1.8;
	printf("\nCelsius=%fC",c)
	
	return 0;
}
