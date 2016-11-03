module RightTriangle
  real, parameter :: pi = 3.14159
  type triangle
     real :: a, b, c, hypotenuse, angle_a, angle_b, angle_c, area
  end type triangle
  
contains
  subroutine setSides(r,a,b,c)
    type(triangle) :: r
    r%a = a
    r%b = b
    r%c = c
  end subroutine setSides

  subroutine findAngles(r)
    type(triangle) :: r
    r%angle_a = atan(r%a/r%b)*180/pi
    r%angle_b = atan(r%b/r%a)*180/pi
    r%angle_c = 90
  end subroutine findAngles
  
  subroutine findHypotenuse(r)
    type(triangle) :: r
    hypotenuse =  sqrt(r%a**2+r%b**2)
    call findAngles(r)
    print *, 'The hypotenuse is length',hypotenuse, 'Angle a =', r%angle_a, 'Angle b =', r%angle_b, 'Angle c =', r%angle_c
  end subroutine findHypotenuse

  subroutine findArea(r)
    type(triangle) :: r
    r%area = (r%a*r%b)/2
    call findAngles(r)
    print *, 'The sides of your triangle are a =', r%a, 'b =', r%b, 'c =', r%c
    print *, 'The area is', r%area, 'Angle A =', r%angle_a, 'Angle B = ', r%angle_b, 'Angle C = ', r%angle_c
  end subroutine findArea
  
end module RightTriangle


program trianglecalc

  use RightTriangle
  implicit none
  type(triangle) :: R
  real a,b,c,expected

  ! Prompt user for input triangle
  print *, 'Enter the first side of the triangle'
  read (*,*), a
  print *, 'Enter the second side of the triangle'
  read (*,*), b
  print *, 'Enter the third side of the triangle. For calculated hypotenuse, enter 0'
  read (*,*), c

  !Initialize module values
  call setSides(R,a,b,c)
  expected = sqrt(a**2+b**2) !The expected hypotenuse
  
  ! Control structure for module subroutines
  if (R%c ==0) then               !Find the hypotenuse
     call findHypotenuse(R)
  else if (R%c==expected) then    !Find the area
     call findArea(R)
  else                            !Fail case
     print *, 'You do not have a right triangle :('
  end if

end program trianglecalc
