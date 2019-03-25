#include<stdio.h>

int result[10]={1,2,3,4,5,6,7,8,9,10};

//result:11 12 13 14 15 1 2 3 4 5

void fuction()
{
	int i=0;
	for(i=0;i<5;i++)
		result[i]=result[i]+10;
	for(i=5;i<10;i++)
		result[i]=result[i]-5;
}

int main()
{
	fuction();
	return 0;
}