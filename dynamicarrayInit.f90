program demo
  integer :: n
  integer, dimension(:), allocatable :: x

  read *, n

  !now we dynamically allocate x

  allocate(x(n),stat=ierror)
  if (ierror /= 0) stop 'error allocating memory'

  x=1
  print *,x
end program demo
