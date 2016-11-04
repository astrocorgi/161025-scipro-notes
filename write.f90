program write_demo

  implicit none

  real :: pi = 3.14159
  print *, '(a,f4.2)','pi=',pi    ! all 4 commands
  write (*,'(a,f4.2)') & 'pi', pi ! print


end program write_demo
