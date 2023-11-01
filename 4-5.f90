PROGRAM Harbour_z
IMPLICIT NONE
	integer :: temp=0,i,j,n,k,userinput
	integer,allocatable :: ARR(:) 
	read*,n
	allocate(ARR(n))
	print*,"请输入您想给数组的值："
	do k=1,n
		read*,userinput
		ARR(k)=userinput
	end do
	do i=1,n
		do j=1,n-i
			if  (ARR(j)>ARR(j+1))then
				temp=arr(j)
				arr(j)=arr(j+1)
				arr(j+1)=temp
			end if
		end do
	end do
	print*,ARR
	
	
END PROGRAM Harbour_z