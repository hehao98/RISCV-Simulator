#include<stdio.h>

double result_double[10]={1.1,2.2,3.3,4.4,5.5,6.6,7.7,8.8,9.9,11.0};
//result double : 5.5,5.5,5.5,5.5,5.5,1.1,1.1,1.1,1.1,1.1
 
float result_float[10]={1.1,2.2,3.3,4.4,5.5,6.6,7.7,8.8,9.9,11.0};
//result float : 5.5,5.5,5.5,5.5,5.5,1.1,1.1,1.1,1.1,1.1

int main()
{
	int i=0;
	for(i=4;i>=0;i--)
		result_double[i]=result_double[i]+i*1.1;
	for(i=5;i<10;i++)
		result_double[i]=result_double[i]-i*1.1;
	
	for(i=4;i>=0;i--)
		result_float[i]=result_float[i]+i*1.1;
	for(i=5;i<10;i++)
		result_float[i]=result_float[i]-i*1.1;
	
	return 0;
}