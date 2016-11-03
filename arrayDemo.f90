program arrayDemo

  real, dimension(10) :: x

  call random_number(x)

  write (*,'(4(es13.7)1x)')(x(i),i=1,4) !4 repeats, scientific notation, 13 decimals, 7 after decimal point


end program arrayDemo
