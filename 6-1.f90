PROGRAM Harbour_z
IMPLICIT NONE
	! 声明派生类型 Date
    type :: Date
        integer :: year
        integer :: month
        integer :: day
    end type Date
    
    ! 声明变量
    type(Date) :: inputdate
    integer :: days = 0
	integer monthday(12)
	integer i
    ! 从键盘读取年、月、日
    write(*, *) "请输入年份："
    read(*, *) inputdate.year
    
    write(*, *) "请输入月份："
    read(*, *) inputdate.month
    
    write(*, *) "请输入日期："
    read(*, *) inputdate.day
    
	!算法实现步骤
	!将该年份的每月日期存放在一个数组中
	DATA monthday/31,28,31,30,31,30,31,31,30,31,30,31/
	if ( isleapyear(inputdate.year) == 1)then
		monthday(2)=29
	end if
	!计算天数
	do i = 1,inputdate.month-1
		days = days +monthday(i)
	end do
	days = days + inputdate.day
    ! 输出结果
    write(*, *) inputdate.month, "月", inputdate.day, "日是", inputdate.year, "年的第", days, "天。"
contains
    ! 判断是否为闰年
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