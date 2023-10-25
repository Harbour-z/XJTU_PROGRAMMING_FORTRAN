PROGRAM Harbour_z
IMPLICIT NONE
	integer n,i,counter,j
	integer,allocatable :: num(:)
	read*,n
	allocate(num(n))
	do i=1,n
		read*,num(i)
	end do
	do i=1,n
		write(*,"(1x,I2,$)"),num(i)
	end do
	print*," "
	do counter=n,2,-1
		do i=counter,n,1
			write(*,"(1x,I2,$)"),num(i)
		end do
		do j=1,counter-1,1
			write(*,"(1x,I2,$)"),num(j)
		end do
		print*," "
	end do
END PROGRAM Harbour_z