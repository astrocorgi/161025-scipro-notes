#include <stdio.h>

int main()
{
  
  int a[10];
  int i;
  int *ptr;
  
  for (i=0; i<10; i++)
    {
      a[i] = i*i;
      printf("%i\n",a[i]);
    }

  ptr = &a[4];
  printf("\n%i\n",*ptr);
  printf("%i\n",*ptr+1);
  printf("%i\n",*(ptr+1));
  printf("%i\n",*ptr++);
  printf("%i\n",*(ptr++));
  printf("%i\n",*++ptr);
  printf("%i\n",*(++ptr));
  printf("%i\n",*ptr);
  
  return 0;
}
