PROGRAM Harbour_z
IMPLICIT NONE
	! ������������ Date
    type :: Date
        integer :: year
        integer :: month
        integer :: day
    end type Date
    
    ! ��������
    type(Date) :: inputdate
    integer :: days = 0
	integer monthday(12)
	integer i
    ! �Ӽ��̶�ȡ�ꡢ�¡���
    write(*, *) "��������ݣ�"
    read(*, *) inputdate.year
    
    write(*, *) "�������·ݣ�"
    read(*, *) inputdate.month
    
    write(*, *) "���������ڣ�"
    read(*, *) inputdate.day
    
	!�㷨ʵ�ֲ���
	!������ݵ�ÿ�����ڴ����һ��������
	DATA monthday/31,28,31,30,31,30,31,31,30,31,30,31/
	if ( isleapyear(inputdate.year) == 1)then
		monthday(2)=29
	end if
	!��������
	do i = 1,inputdate.month-1
		days = days +monthday(i)
	end do
	days = days + inputdate.day
    ! ������
    write(*, *) inputdate.month, "��", inputdate.day, "����", inputdate.year, "��ĵ�", days, "�졣"
contains
    ! �ж��Ƿ�Ϊ����
    function isLeapYear(year)
        integer :: year, isleapyear
        if (mod(year, 4) == 0) then
            if (mod(year, 100) /= 0 .or. mod(year, 400) == 0) then
                isLeapYear = 1
			else
				isleapyear = 0
            endif
        endif
    end function isLeapYear
END PROGRAM Harbour_z