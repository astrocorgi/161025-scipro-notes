
subroutine arrayGenerate(x,a,b,c,d)

  real :: x
  real, dimension(4) :: a,b
  real, dimension(4,4) :: c,d
  
  call random_number(x)
  call random_number(a)
  call random_number(b)
  call random_number(c)
  call random_number(d)

  print *, "x is"
  print *, x
  print *, "a is"
  print *, a
  print *, "b is"
  print *, b
  print *, "c is"
  print *, c
  print *, "d is"
  print *, d
  
end subroutine arrayGenerate

program arrays
  implicit none
  real :: x
  real, dimension(4) :: a,b
  real, dimension(4,4) :: c,d

  call arrayGenerate(x,a,b,c,d)
  
  a=b
  print *, 'a is now b', a

  a(:) = x 
  print *, 'a elements now equal x', a

  a(:) = c(:,1)
  print *, 'a is now the first row of c', a

  a(2:4) = c(2:4,4)
  print *, 'last three elements of a are now the last three elements of c', a

  c=d
  print *, 'c is now equal to d', c
  
end program arrays
