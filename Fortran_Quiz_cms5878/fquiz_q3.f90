program BigMatrix
  implicit none
  real, dimension(100,100) :: realmat=0, realread, realbin
  integer, dimension(100,100) :: intmat=0, intread, intbin
  integer,parameter :: seed = 86456
  integer :: i=1
  integer :: j=1
  character(len=10) :: fmti, fmtr
  
  call random_number(realmat)
  call srand(seed)
  fmti = '(10i4)' !The matrices are 100x100, but are printed in columns of 10 for readability in terminal
  fmtr = '(10f8.2)'

  
  do while (i<=100)
     do while (j<=100)
        intmat(i,j) =  int(100*rand())
        j = j+1
     enddo
     i=i+1
     j=1
  enddo
  
  realmat(:,:) = realmat(:,:)*100
  write (*,fmti) intmat
  write (*,fmtr) realmat

  ! Writing to file
  open (unit=1, file='mat.txt',status="unknown")
  open (unit=2, file='mat.bin',status="unknown")
  write (unit=1, fmt=fmti) intmat
  write (unit=1, fmt=fmtr) realmat
  write (unit=2, fmt=fmti) intmat
  write (unit=2, fmt=fmtr) realmat
  close (1)
  close (2)

  ! Reading from text file
  open (1,file='mat.txt', status="unknown" )
  read (1, *) intread
  read (1, *) realread

  write (*,fmti) intread
  write (*,fmtr) realread

  ! Reading from binary file
  open (2, file='mat.bin')
  read (2, *) intbin
  read (2, *) realbin

  write (*,fmti) intbin
  write (*,fmtr) realbin  
  
end program BigMatrix
