#include<stdio.h>
int main()
{
	float P,S;
	int T,R;
	printf("value of P:");
	scanf("%f",&P);
	printf("\nvalue of T:");
	scanf("%d",&T);
	printf("\nvalue of R:");
	scanf("%d",&R);
	S=(P*T*R)/100;
	printf("\nS=%f",S);
	
    return 0;	
}
