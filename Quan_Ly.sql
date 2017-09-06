select san_pham.Ten_San_Pham,sum(chi_tiet_don_dat_hang.So_Luong) as so_luong_dat_hang
from san_pham,don_dat_hang,chi_tiet_don_dat_hang
where (san_pham.ID_San_Pham = chi_tiet_don_dat_hang.ID_San_Pham
	and chi_tiet_don_dat_hang.ID_Don_Dat_Hang= don_dat_hang.ID_Don_Dat_Hang
    and 2016-11-01<=don_dat_hang.Ngay_Giao_Hang<=2016-11-30)
group by san_pham.Ten_San_Pham
order by sum(chi_tiet_don_dat_hang.So_Luong) desc
limit 5;  
-- 5 san pham ban chay nhat cua cua hang. 


select san_pham.Ten_San_Pham,sum(chi_tiet_don_dat_hang.Thanh_Tien) as doanh_thu
from san_pham,don_dat_hang,chi_tiet_don_dat_hang
where (san_pham.ID_San_Pham = chi_tiet_don_dat_hang.ID_San_Pham
	and chi_tiet_don_dat_hang.ID_Don_Dat_Hang= don_dat_hang.ID_Don_Dat_Hang
    and 2016-11-01<=don_dat_hang.Ngay_Giao_Hang<=2016-11-30)
group by san_pham.Ten_San_Pham
order by sum(chi_tiet_don_dat_hang.Thanh_Tien) desc;
    
-- doanh thu cua san pham tung thang
  Select san_pham.Ten_San_Pham,sum(chi_tiet_don_dat_hang.So_Luong) as so_luong_dat_hang
  from san_pham,san_pham_dien_thoai,chi_tiet_don_dat_hang,don_dat_hang 
  where (san_pham.ID_San_Pham = san_pham_dien_thoai.ID_San_Pham and san_pham_dien_thoai.ID_San_Pham_Dien_Thoai = chi_tiet_don_dat_hang.ID_San_Pham and don_dat_hang.ID_Don_Dat_Hang = chi_tiet_don_dat_hang.ID_Don_Dat_Hang and 2016-11-01<=don_dat_hang.Ngay_Giao_Hang<=2016-11-30 ) 
  group by san_pham.Ten_San_Pham order by sum(chi_tiet_don_dat_hang.So_Luong) desc limit 5;
-- Top 5 điện thoại bán chạy nhất trong tháng.
