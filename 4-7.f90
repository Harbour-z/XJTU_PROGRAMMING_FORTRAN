PROGRAM Harbour_z
IMPLICIT NONE
	integer,dimension(2,2) :: A,B,C
	integer :: i,j,k,m1,m2,m3,m4,m5,m6,m7
	print*,"请输入A矩阵的值："
	do i=1,2
		do j=1,2
			read*,k
			A(i,j)=k
		end do
	end do
	print*,"请输入B矩阵的值："
	do i=1,2
		do j=1,2
			read*,k
			B(i,j)=k
		end do
	end do
	m1=(A(1,1)+A(2,2))*(B(1,1)+B(2,2))
	m2=(A(2,1)+A(2,2))*B(1,1)
	m3=A(1,1)*(B(1,2)-B(2,2))
	m4=A(2,2)*(B(2,1)-B(1,1))
	m5=(A(1,1)+A(1,2))*B(2,2)
	m6=(A(2,1)-A(1,1))*(B(1,1)+B(1,2))
	m7=(A(1,2)-A(2,2))*(B(2,1)+B(2,2))
	C(1,1)=m1+m4-m5+m7
	C(1,2)=m3+m5
	C(2,1)=m2+m4
	C(2,2)=m1-m2+m3+m6
	print*,C
END PROGRAM Harbour_z