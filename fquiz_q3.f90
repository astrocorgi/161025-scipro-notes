program BigMatrix
  implicit none
  real, dimension(4,4) :: realmat=0, realread
  integer, dimension(4,4) :: intmat=0, intread
  integer,parameter :: seed = 86456
  integer :: i=1,j=1
  
  call random_number(realmat)
  call srand(seed)
  
  do while (i<=4)
     do while (j<=4)
        intmat(i,j) =  int(100*rand())
        j = j+1
     enddo
     i=i+1
  enddo
  
  realmat(:,:) = realmat(:,:)*100
  write (*,'(a,1(4i4))') intmat
  write (*,'(a,1(4f8.2))') (realmat)

  !print *,'real mat',realmat

  ! Writing to file
  open (unit=1, file='mat.txt',status="unknown")
  open (unit=2, file='mat.bin',status="unknown")
  write (unit=1, fmt='(a,1(4i4))') intmat
  write (unit=1, fmt='(a,1(4f8.2))') realmat
  write (unit=2, fmt='(a,1(4i4))') intmat
  write (unit=2, fmt='(a,1(4f8.2))') realmat
  close (1)
  close (2)

  ! Reading from text file
  open (1,file='mat.txt', status="unknown" )
  read (1, *) intread
  read (1, *) realread

  print *, intread
  print *, realread

  ! Reading from binary file
  open (2, file='mat.bin')

  
end program BigMatrix
