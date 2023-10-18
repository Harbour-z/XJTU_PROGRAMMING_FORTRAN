PROGRAM Harbour_z
IMPLICIT NONE
	real,parameter:: PI=3.14159265358979323846
	real x,sin_my,factorial
	integer :: m=1
	read*,x
	print*,"sin(",x,")","=",sin_my(x)
END PROGRAM Harbour_z
	FUNCTION SIN_MY(X)
		implicit none
		real,parameter:: PI=3.14159265358979323846
		real :: x,sin_my,factorial,para
		integer :: i,j=0
		sin_my=0
		para=1
		i=1
		do while(abs(para)>=0.000001)
			para=((-1)**j)*(x**i)/factorial(i)
			i=i+2
			j=j+1
			sin_my=sin_my+para
		end do
	END FUNCTION SIN_MY
	
	FUNCTION factorial(i)
		implicit none
		integer :: i,h
		real factorial
		h=i
		factorial=1
		do while(h>0)
			factorial=factorial*h
			h=h-1
		end do
	END FUNCTION FACTORIAL