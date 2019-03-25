#include <stdio.h>

int result=0;
//result 3628800
int cal_n(int i)
{
	if(i==1)
		return i;
	else
		return i*cal_n(i-1);
}

int main()  
{
	result=cal_n(10);
	return 0;
}  