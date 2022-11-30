create trigger trg_TMNV on NhanVien
for insert
as 
     if(select luong from inserted)<15000
	    begin
		  print 'Luong phai lon hon 15000'
		  rollback transaction
		end

insert into NHANVIEN
values ('HÀ', 'CHÍ', N'BẢO', '1725', '2002-10-17', 'TPHCM', 'Nam', 30000, '004',1)