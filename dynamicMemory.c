#include <stdio.h>
#include <stdlib.h>

int main(){
  int numStudents, i;
  double avg, *ptr, sum = 0.0;
  printf("Enter the num of students: ");
  scanf("%d",&numStudents); // & because that's how scanf works
  ptr=(double *) malloc(numStudents * sizeof(double));
  
  if(ptr == NULL)
    {
      printf("\n\nMemory allocation failed!");
      exit(1);
    }
  
  for (i=0; i<numStudents; i++)
    {
      printf("\nEnter the marks for the student %d\n", i+1);
      scanf("%lf",(ptr+i));
    }
  for (i=0; i<numStudents; i++)
    {
      sum = sum + *(ptr + i);
    }
  
  avg = sum/numStudents;
  printf("\nAvg marks = %lf \n",avg);
  free(ptr);
  return 0;

} // end of main function

