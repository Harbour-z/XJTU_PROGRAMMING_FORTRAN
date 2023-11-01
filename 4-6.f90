PROGRAM Harbour_z
IMPLICIT NONE
	integer,dimension(7) ::A,AC
	integer,dimension(5) :: B,BC
	integer	:: i,j,flag,x=1,y=1
	flag=0
	A=[2,5,5,8,9,12,18]
	B=[5,8,12,12,14]
	do i=1,7
		do j=1,5
			if(A(I)==B(j))then
				flag=1
			end if
		end do
		if(flag==0)then
			AC(x)=A(i)
			x=x+1
		end if
		flag=0
	end do
	do j=1,5
		do i=1,7
			if(B(j)==A(I))then
				flag=1
			end if
		end do
		if(flag==0)then
			BC(y)=B(j)
			y=y+1
		end if
		flag=0
	end do
			
	print*,AC(1:x-1)
	print*,BC(1:y-1)
	
	
	
END PROGRAM Harbour_z