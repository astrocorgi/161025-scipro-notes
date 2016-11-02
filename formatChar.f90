program formatChar
  implicit none

  character(len=8) :: n = 'John Doe'
  
  print '(a1,a8,a1)', '>', n, '<'  ! >John Doe<  ! Explicit width
  print '(a, a, a)',  '>', n, '<'  ! >John Doe<  ! Implicit width
  print '(a, a4,a)',  '>', n, '<'  ! >John<      ! String truncated
  print '(a, a5,a)',  '>', n, '<'  ! >John <     ! String truncated
  print '(a, a6,a)',  '>', n, '<'  ! >John D<    ! String truncated
  print '(a, a8,a)',  '>', n, '<'  ! >John Doe<  ! String padded
  print '(a, a9,a)',  '>', n, '<'  ! > John Doe< ! String padded

  integer :: i =     1234,  &
             j = 12345678,  &
             n = -12345678
  
  print '(a,i4,a)', 'i=', i, '<'  ! i=1234<
  print '(a,i6,a)', 'i=', i, '<'  ! i=  1234<   Padding with blanks
  print '(a,i8,a)', 'i=', i, '<'  ! i=    1234<
  print '(a,i8,a)', 'j=', j, '<'  ! j=12345678<
  print '(a,i4,a)', 'j=', j, '<'  ! j=****<     Number has 8 digits                                 !             Format holds only 4
  print '(a,i2,a)', 'i=', i, '<'  ! i=**<       4 digits, 2 spaces
  print '(a,i8,a)', 'n=', n, '<'  ! n=********< Account for sign
  print '(a,i9,a)', 'n=', n, '<'  ! n=-12345678<
  
end program formatChar
