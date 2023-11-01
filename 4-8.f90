PROGRAM Harbour_z
IMPLICIT NONE
	integer :: n, i, j, row
	real, allocatable :: a(:, :)
	print *, 'Please input how many equations:'
	read *, n
	allocate(a(n + 1, n))
	print *, 'Please input each number in the augmented matrix:'
	read *, a
	do i = 1, n
	row = 0
	do j = i, n
	if (a(i, j) /= 0) then
	row = j
	exit
	end if
	end do
	if (row>i) then
	a(:,(/row, i/)) = a(:, (/i, row/))
	else if (row<i) then
	print *, 'ERROR: indetermined equation!'
	end if
	do j = i + 1, n
	a(i : n + 1, j) = a(i : n + 1, j) - a(i : n + 1, i) * a(i, j) / a(i, i)
	end do
	end do
	do i = n, 1, -1
	a(i : n + 1, i) = a(i : n + 1, i) / a(i, i)
	a(n + 1, 1 : i - 1) = a(n + 1, 1 : i - 1) - a(n + 1, i) * a(i, 1 : i - 1)
	end do
	print *, a(n + 1, :)
	deallocate(a)
END PROGRAM Harbour_z