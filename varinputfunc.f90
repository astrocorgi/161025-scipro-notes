module addInterface
  implicit none
  
  interface add
     function add_int(i,j)
       integer :: i,j
       integer :: add_int

       add_int = i+j
     end function add_int
  end interface add
end module addInterface

program addDemo

  implicit none

  use addInterface
  integer :: a=10, b=5
  
end program addDemo
