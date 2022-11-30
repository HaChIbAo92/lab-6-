create trigger trg_TMNVL
	on NHANVIEN
	for insert
as
	declare @age int;
	select @age = DATEDIFF(YEAR, ngsinh, GETDATE())+1 from inserted;
	if @age < 18 or @age > 65
	begin
		print N'Tuổi của nhân viên không hợp lệ 18 <= tuổi <=65'
		rollback transaction
	end;
insert into NHANVIEN
values ('Ha', 'Quoc', N'Bao', '021', '2001-06-15', 'TPHCM', 'Nam', 30000, '004',1)