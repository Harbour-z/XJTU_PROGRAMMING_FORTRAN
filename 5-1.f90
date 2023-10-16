PROGRAM shangji5
IMPLICIT NONE
integer::L1=10,L2=30,L3=16,L4=13,L5=21,L6=14,L7=20,L8=36,L9=28
print*,'此六边形的面积为：',area(L1,L2,L3,L4,L5,L6,L7,L8,L9) 

	CONTAINS
		FUNCTION AREA(L1,L2,L3,L4,L5,L6,L7,L8,L9)
		integer :: L1,L2,L3,L4,L5,L6,L7,L8,L9
		real area,s1,s2,s3,s4,a1,a2,a3,a4
		a1=real(L5+L6+L9)/2
		a2=real(L1+L8+L9)/2
		a3=real(L2+L7+L8)/2
		a4=real(L3+L4+L7)/2
		s1=sqrt(a1*(a1-L5)*(a1-L6)*(a1-L9))
		s2=sqrt(a2*(a2-L1)*(a2-L8)*(a2-L9))
		s3=sqrt(a3*(a3-L2)*(a3-L7)*(a3-L8))
		s4=sqrt(a4*(a4-L3)*(a4-L4)*(a4-L7))
		AREA=s1+s2+s3+s4
		END FUNCTION AREA
END PROGRAM shangji5
