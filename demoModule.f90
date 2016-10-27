module demoModule

  private :: HelloPrivate

contains

  subroutine HelloPublic
    print *, "Hello World"
  end subroutine HelloPublic

  subroutine HelloPrivate
    print *, "Hello my little world"
  end subroutine HelloPrivate

end module demoModule

program HelloWorld
  use demoModule
  call HelloPublic

end program
