subroutine pscl()
implicit none

  integer :: i,j,k,p,n

  ! Get how big to make the triangle.
  write (*, '("input n: ")', advance="no")
  read(*,*) n

  ! Loop
  do i = 0, n-1
    p = 1
    
    ! Aligns triangle.
    do j = 1, n-1-i
      write(*,'(3X)', advance="no")
    end do

    ! Prints the numbers.
    do k = 0,i
      write(*,'(I6)', advance="no") p
      p = p*(i-k)/(k+1)
    end do

    ! Newline
    write(*, '(/)')
  end do
end subroutine pscl

program pascal
implicit none

  call pscl

stop
end program pascal
