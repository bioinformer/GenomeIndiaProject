#include<stdio.h>
int power(int base, int exp)
{	int pow=1;
	int i;
	for(i=0;i<exp;i++)
		pow*=base;
	return pow;	}

void rsg(int row, int col)
{	int table[row][col];
	char random[row][col];
	int i,j;
	for(i=0;i<row;i++)
		for(j=0;j<col;j++)
			table[i][j]=(i%(power(4,j+1)))/power(4,j);
	for(i=0;i<row;i++)                
		for(j=0;j<col;j++)	{                        
			if(table[i][j]==0)                                
				random[i][j]='A';                        
			if(table[i][j]==1)                                
				random[i][j]='C';                        
			if(table[i][j]==2)                                
				random[i][j]='G';                        
			if(table[i][j]==3)                                
				random[i][j]='T';	}        
	for(i=0;i<row;i++)        {
		for(j=0;j<col;j++)	{        
			printf("%c",random[i][j]);	}
		printf("\n");	}	}

int main()
{	int m,n;
	printf("Enter the length of the sequence in bp: ");
	scanf("%d",&n);
	m= power(4,n);
	printf("The number of possible sequences is: \n");
	rsg(m,n);	return 0;	}
