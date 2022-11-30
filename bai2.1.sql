create trigger trg_Sumemps
	on nhanvien
	after update
as
	declare @male int, @female int;
	select @female= count(MANV) from NHANVIEN where PHAI = N'Nữ';
	select @male= count(MANV) from NHANVIEN where PHAI = N'Nam';
	print N'Tổng số nhân viên nữ là: ' + cast(@female as varchar);
	print N'Tổng số nhân viên nam là: ' + cast(@male as varchar);

insert into NHANVIEN
values('A', 'B', 'C', '534', '09-12-1992', 'HCM', 'Nam', 302222, '005', 1)