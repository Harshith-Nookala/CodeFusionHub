#include<stdio.h>
int main()
{
	float c,fh;
	printf("Enter temperature in centigrade:");
	scanf("%f",&c);
	fh=(c*1.8)+32;
	printf("\nFarenheit=%fF",fh);
	return 0;
}
