
program array2D
  implicit none
  real, dimension(10,10) :: array, transarray   
  real, dimension(10) :: colsum
  real, dimension(10) :: rowsum
  real, dimension(10) :: arraytrace
  integer :: i, j
  real :: totalsum, average

  ! allocate random numbers to array elements and print
  call random_number(array)
  write (*,*) array
  colsum = sum(array,DIM=1)
  print *, colsum
  rowsum = sum(array,DIM=2)
  print *, 'The row sum is', rowsum 

  !Find the trace
  do i=1,10
     arraytrace(i) = array(i,i)
  enddo
  print *, 'The trace is'
  write(*,*) arraytrace

  totalsum = 0
  do i=1,10 !for each column
     do j=1,10 !for each row
        transarray(i,j) = array(j,i)
        totalsum = totalsum + array(i,j)
     enddo 
  enddo
  
  print *, 'The transpose is'
  write(*,*) transarray
  print *, 'The sum is', totalsum

  average = totalsum/100
  do i=1,10
     do j=1,10
        if (array(j,i) .LT. average) then
           array(j,i) = 0
        else
           array(j,i) = 1
        endif
     enddo
  enddo

  print *, array
  
  
end program array2D
