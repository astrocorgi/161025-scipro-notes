program print_array
  implicit none

  integer, dimension(3) :: x = [-5, 6, 8]

  print *, x
  print '(4(3i2))',x !3 columns, 2 spaces, repeat 4 times

  write(*,'("value of x:",i2)')x(1)
  
end program print_array
