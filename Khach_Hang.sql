select san_pham.Ten_San_Pham,san_pham.Gia_San_Pham,
san_pham_dien_thoai.He_Dieu_Hanh,san_pham_dien_thoai.Chat_Lieu_Vo,
san_pham_dien_thoai.Tinh_Nang_Dac_Biet from san_pham inner join san_pham_dien_thoai 
on san_pham.ID_San_Pham = san_pham_dien_thoai.ID_San_Pham and san_pham_dien_thoai.Tinh_Nang_Dac_Biet like'%4G%' 
and san_pham_dien_thoai.Tinh_Nang_Dac_Biet like'%pin khung%';

-- cau lenh tim nhung san pham dien thoai co tinh nang dac biet la: Ho tro 4G va pin khung.

select san_pham.Ten_San_Pham,san_pham.Gia_San_Pham,
san_pham_dien_thoai.He_Dieu_Hanh,san_pham_dien_thoai.Chat_Lieu_Vo,
san_pham_dien_thoai.Tinh_Nang_Dac_Biet
from san_pham_dien_thoai,san_pham
where san_pham.ID_San_Pham=san_pham_dien_thoai.ID_San_Pham_Dien_Thoai
order by san_pham.Gia_San_Pham DESC
limit 5;
-- show ra 5 chiec dien thoai co gia thanh dat nhat trong cua hang.

select san_pham.Ten_San_Pham,san_pham.Gia_San_Pham,san_pham_laptop.RAM,san_pham_laptop.Man_Hinh,
san_pham_laptop.O_Cung,san_pham_laptop.Tinh_Nang_Dac_Biet
from san_pham,san_pham_laptop
where san_pham.ID_San_Pham=san_pham_laptop.ID_San_Pham_Laptop
and san_pham.Gia_San_Pham between 6000000 and 10000000;

-- tim nhung chiec may tinh co gia thanh tu 6 trieu den 10 trieu.

select san_pham.Ten_San_Pham,san_pham.Gia_San_Pham,san_pham_laptop.RAM,san_pham_laptop.Man_Hinh,
san_pham_laptop.O_Cung,san_pham_laptop.Tinh_Nang_Dac_Biet
from san_pham,san_pham_laptop
where 
(san_pham.ID_San_Pham=san_pham_laptop.ID_San_Pham_Laptop
 and san_pham_laptop.RAM like '%4 GB%'
 and san_pham.Gia_San_Pham<=10000000)
 ;
-- tim ra nhung san pham may tinh ram 4Gb ma co gia thanh re hon 10 trieu.
 
select san_pham.Ten_San_Pham,san_pham.Gia_San_Pham,
san_pham_dien_thoai.He_Dieu_Hanh,san_pham_dien_thoai.Chat_Lieu_Vo,
san_pham_dien_thoai.Tinh_Nang_Dac_Biet,san_pham.So_Sao_Trung_Binh
from san_pham_dien_thoai,san_pham
where san_pham.ID_San_Pham=san_pham_dien_thoai.ID_San_Pham_Dien_Thoai
order by san_pham.So_Sao_Trung_Binh DESC
limit 5;
-- tim ra nhung san pham dien thoai co so sao danh gia trung binh cao nhat.





