module RightTriangle
  real :: a, b, c, hypotenuse, angle_a, angle_b, angle_c, area
  real, parameter :: pi = 3.14159
  
contains
  subroutine setSides(r,a,b,c)
    r%a = a
    r%b = b
    r%c = c
  end subroutine setSides
  
  subroutine findHypotenuse(r)
    type (RightTriangle) :: r
    hypotenuse =  sqrt(r%a**2+r%b**2)
    angle_a = atan(r%a/r%b)*180/pi
    angle_b = atan(r%b/r%a)*180/pi
    angle_c = 90
    print *, 'The hypotenuse is length ',hypotenuse, '. Angle a = ', angle_a, '. Angle b = ', angle_b, '. Angle c = ', angle_c
  end subroutine findHypotenuse

  subroutine findArea(r)
    type (RightTriangle) :: r
    area = (r%a*r%b)/2
    print *, 'The sides of your triangle are a = ', r%a, ' b = ', r%b, ' c = ', r%c, '. The area is ', area
  end subroutine findArea
  
end module RightTriangle

program triangle

  implicit none
  use RightTriangle
  type(RightTriangle) :: R
  real a,b,c

  ! Prompt user for input triangle
  print *, 'Enter the first side of the triangle'
  read (*), a
  print *, 'Enter the second side of the triangle'
  read (*), b
  print *, 'Enter the third side of the triangle. For calculated hypotenuse, enter 0'
  read (*), c

  !Initialize module values
  call setSides(R,a,b,c)
  
  ! Select case for module subroutines
  select case (R%c)
  case (0)                   !Find the hypotenuse
     call findHypotenuse(R)
  case (sqrt(a**2+b**2))     !Find the area
     call findArea(R)
  case DEFAULT               !Fail case
     print *, 'You do not have a right triangle :('
  end select

end program triangle
