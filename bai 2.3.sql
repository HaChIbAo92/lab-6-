create trigger trg_delete
on dean
after delete
as
select MA_NVIEN, count(MADA) as 'Tổng số đề án đã tham gia' from PHANCONG
group by MA_NVIEN