program print_array
  implicit none

  integer, dimension(3) :: x = [-5, 6, 8]

  open(unit=1, file='datax.txt',status = 'old',position='append') !how to read in a file! important!

  print *, "Unformatted:"
  print *, x
  print *, "Formatted:"
  print '(4(3i2))',x !3 columns, 2 spaces, repeat 4 times

  write(unit=1,fmt='(3("value of x:",i2,1x))')x
  close(unit=1)
  
end program print_array
