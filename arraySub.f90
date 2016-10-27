program arrayDemo

  implicit none

  integer, dimension(10,10) :: a = 1 !can set every element to 1 like this, no need for loop
  call arrayRead(a)

  call arraySwap(a,b)

contains

  subroutine arrayRead(b
  integer i,j
  integer, dimension(:,:) :: b

  print *, size(b), size(b,1),size(b,2)
  do i=1,size(b,1)
     do j=1, size(b,2)
        print *,b(i,j)
        a(i,j) = 1;
     end do
  end do

end subroutine arrayRead
subroutine arraySwap(a,b)
  integer, dimension(:,:) :: a,b
  integer, dimension(size(a,1)):size(a,2)) :: z

  z=a
  a=b
  b=z
end subroutine arraySwap

end program arrayDemo
