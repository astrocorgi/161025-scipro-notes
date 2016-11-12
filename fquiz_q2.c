#include <stdio.h>

void printArray1D(double array[10]);
void printArray2D(double array[10][10]);

int main()
{
  int n;
  double x;
  double a[10];
  double b[10];
  double c[10][10];
  double d[10][10];

  n=10;
  
  void _arrayHandle(int n,double x,double a,double b,double c,double d);

  printf("n is %d, x is %f\n",n,x);

  printf("a is: \n");
  printArray1D(&a[10]);
  printf("b is: \n");
  printArray1D(&b[10]);
  printf("c is: \n");
  printArray2D(&c[10][10]);
  printf("d is: \n");
  printArray2D(&d[10][10]);

  return 0;
}


void printArray1D(double array[10])
{
  int j;
  for (j=0;j<10;j++)
    {
      printf(" %f ",array[10]);
    }
}

void printArray2D(double array[10][10])
{
  int j,k;

  for (j=0;j<10;j++)
    {
      for (k=0;k<10;k++)
	{
	  printf("%f",array[j][k]);
	}
      printf("\n");
    }

}
