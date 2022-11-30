create trigger trg_CNNV
	on nhanvien
	for update
as
	if exists (select dchi from inserted where DCHI like '%HCM%')
	begin
		print N'Không thể cập nhật cho nhân viên ở HCM';
		rollback tran;
	end;
update NHANVIEN
	set[PHAI] = 'Nam'
	where MANV = '001';
go