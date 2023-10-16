MODULE my
	implicit none
	real,parameter:: PI=3.14159265359
	real,parameter:: e=2.71828182845
	CONTAINS
		SUBROUTINE sume(x,y,n)
		integer x,y,n,i,j
		x=0
		do i=1,n
			x=x+i*i
		end do
		y=1
		do j=1,n
			y=y*j
		end do
		END SUBROUTINE sume
END MODULE my
PROGRAM Harbour_z
USE my
IMPLICIT NONE
	integer n,x,y
	real re
	read*,n
	call sume(x,y,n)
	re=real(y)/real(x)
	print*,re
END PROGRAM Harbour_z