PROGRAM Harbour_z
IMPLICIT NONE
	INTEGER :: y,s1=0,t1=0,s2=0,t2=0,s3=0,t3=0,s4=0,t4=0
	call sum(s1,t1,1,2)
	call sum(s2,t2,3,4)
	call sum(s3,t3,5,6)
	call sum(s4,t4,7,8)
	print*,s1,s2,s3,s4,t1,t2,t3
	y=(s1+s2)+(s2+s3+s4)+(t2*t3)-(t1*3)
	print*,y
	CONTAINS
		SUBROUTINE SUM(S,T,N1,N2)
			integer N1,N2,S,T
			S=N1+N2
			T=N1*N2
		END SUBROUTINE SUM
END PROGRAM Harbour_z