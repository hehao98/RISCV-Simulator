#include<stdio.h>

int result[10]={1,2,3,4,5,2,4,6,8,10};

//result:5 10 15 20 25 1 2 3 4 5

int main()
{
	int i=0;
	for(i=0;i<5;i++)
		result[i]=result[i]*5;
	for(i=5;i<10;i++)
		result[i]=result[i]/2;
	return 0;
}