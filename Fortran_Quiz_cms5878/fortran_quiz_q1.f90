
program array2D
  implicit none
  real, dimension(10,10) :: array   
  real, dimension(10) :: colsum
  real, dimension(10) :: rowsum
  
  ! allocate random numbers to array elements and print
  call random_number(array)
  print *, array
  colsum = sum(array,DIM=1)
  print *, colsum
  rowsum = sum(array,DIM=2)
  print *, 'The row sum is', rowsum !! double check dimensions
  
end program array2D
