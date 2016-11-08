#include <stdio.h>
#include <time.h>
#include <stdlib.h>

int myrand();

int main()
{
   srand(time(NULL));
   int r;

   int i;
   for (i=0; i<10; i++)
   {
      r = rand(); // generate a random number, unlimited size;
      printf("%d\n", r);
      r = r%10; // genertate a random number between 0 and 10;
      printf("%d\n", r);

      r = myrand(10);
      printf(" from myrand: %d\n", r);
     
   }

   return 0;
}


int myrand(int x)
{


   return rand()%x;
}
