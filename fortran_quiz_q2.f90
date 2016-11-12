
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
  print *, 'a is now', a

  a(:) = x 
  print *, 'a is now', a

  a(:) = c(1,4)
  print *, 'a is now', a
  
end program arrays
