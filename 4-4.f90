PROGRAM Harbour_z
IMPLICIT NONE
	integer n,i,counter
	integer,allocatable:: yanghui(:,:)
	
	print*,"请输入想输出的杨辉三角形的行数："
	read*,n
	allocate(yanghui(n,n))
	do i=1,n,1
		yanghui(i,1)=1
		yanghui(i,i)=1
	end do
	do i=3,n
		yanghui(i,2)=i-1
	end do
	if(n>=4)then
		do counter=4,n
			do i = 3,counter-1
				yanghui(counter,i)=yanghui(counter-1,i-1)+yanghui(counter-1,i)
			end do
		end do
	end if
	do i=1,n
		do counter=1,i
			write(*,"(1x,I2,$)"),yanghui(i,counter)
		end do
		print*," "
	end do
END PROGRAM Harbour_z