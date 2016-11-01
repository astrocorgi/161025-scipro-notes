program read_array
  

  integer, dimension(3) :: x = [-5, 6, 8]
  character :: ch;
  i=1
  open(unit=1, file='datax.txt',status = 'unknown') !how to read in a file! important!

  do
     read(1,'(a)',iostat=ios)ch
     print *,ch

  enddo
  
  close(unit=1)
  
end program read_array
