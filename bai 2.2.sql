create trigger trg_Sumempsupdate
	on nhanvien
	after update
as
	if (select top 1 phai from deleted) != (select top 1 phai from inserted)
	begin
		declare @male int, @female int;
		select @female= count(MANV) from NHANVIEN where PHAI = N'Nữ';
		select @male= count(MANV) from NHANVIEN where PHAI = N'Nam';
		print N'Tổng số nhân viên nữ là: ' + cast(@female as varchar);
		print N'Tổng số nhân viên nam là: ' + cast(@male as varchar);
	end;

update NHANVIEN
set [HONV] = 'cvyu', [PHAI] = N'Nam'
where MANV = '345'
go