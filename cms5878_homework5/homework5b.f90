module StudentData

  type student
     character (len=50) :: name
     real :: grade
  end type student
  
end module StudentData

module ClassData !(student array input?)

  type class
     real :: average_grade
     real :: max_grade
     real :: lowest_grade
  end type class

  !subroutine averageCalc(c)
   ! type(class) :: c

  !end subroutine averageCalc
  
end module ClassData

program type_array

  use StudentData
  use ClassData
  type(student), dimension(10) :: students !Rank 1, 10 rows... I think
  real :: sum = 0, average
  integer :: i = 1
  real :: max_grade = 0
  real :: minimum_grade = 999
  
  do while (i<=10)
     print *, 'Enter student name:'
     read (*,*), students(i)%name
     print *, 'Enter student grade:'
     read (*,*), students(i)%grade
     i = i+1
  end do

  !calculate the average grade
  i=1

  do while (i<=10)
     sum = sum + students(i)%grade
     i = i+1
  end do
  average = sum/10
  print *, 'The average grade is', average

  i=1
  do while (i<=10)
     if (students(i)%grade > max_grade) then
        max_grade = students(i)%grade
     endif
  i=i+1
  end do
  print *, 'The maximum grade is', max_grade

  i=1
  do while (i<=10)
     if (students(i)%grade < minimum_grade) then
        minimum_grade = students(i)%grade
     endif
     i = i+1
  end do
  print *, 'The minimum grade is ',minimum_grade
  
end program type_array
