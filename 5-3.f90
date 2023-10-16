PROGRAM Harbour_z
IMPLICIT NONE
	INTEGER M,N1,N2,N3,FIN
	M=0
	N1=1260
	N2=198
	call GDC(N1,N2,M)
	N3=72
	call GDC(N3,M,FIN)
	print*,'最大公约数为：',FIN
	CONTAINS
		SUBROUTINE GDC(N1,N2,M)
			integer N1,N2,G,M
			if(N1>N2)then
				G=mod(N1,N2)
				do while(G/=0)
					N1=N2
					N2=G
					G=mod(N1,N2)
				end do
				M=N2
			else
				G=mod(N2,N1)
				do while(G/=0)
					N2=N1
					N1=G
					G=mod(N2,N1)
				end do
				M=N1
			end if
		END SUBROUTINE GDC
END PROGRAM Harbour_z