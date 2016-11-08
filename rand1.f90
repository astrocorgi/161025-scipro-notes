program test_random_number
  real :: r(5,5)
  call random_number(r)

  print *, r
  print *, r*100
end program
