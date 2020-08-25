program sine
    implicit none
    
    real :: val

    read (*,*) val

    val = sin(val)

    val = val*val

    print *,val

end program sine
