program functionTest
!! this is a function test program
integer :: i
integer, parameter :: n = 200
real :: x
real, dimension(n) :: y

x = 0;
i=2;
x = change(i)

print *, x, i

end program

real function change(j)
integer :: j
real :: q

j = 5;
change = 6;
