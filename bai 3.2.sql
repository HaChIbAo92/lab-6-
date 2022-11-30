create trigger nhanvien3 on NHANVIEN
after insert 
as
begin
insert into PHANCONG values ((select manv from inserted), 1,2,20)
end
INSERT INTO NHANVIEN VALUES ('sfd','Xu','Hi','031','7-12-1999','Hà nội','Nam',60000,'003',1)