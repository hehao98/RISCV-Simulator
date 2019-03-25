#include <stdio.h>

int result[42]={0};

//result: 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 21 22 23 24 25 26 27 28 29 30 31 32 33 34 35 36 37 38 39

void qsort(int l,int r) 
{  
	int x = result[l],i = l,j = r;     
	if(l >= r) return ;          
	while(i < j)  
	{  
		while(i < j && result[j] >= x) j--;    
			result[i] = result[j];                    
		while(i < j && result[i] <= x) i++;       
			result[j] = result[i];  
	}  
	result[i] = x;                 
	qsort(l,i-1);           
	qsort(i+1,r);  
} 

int main()  
{
	for(int i=40;i>=1;i--)
		result[i]=i;
	qsort(0,39);
	return 0;
}  