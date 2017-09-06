-- MySQL dump 10.13  Distrib 5.7.15, for Linux (x86_64)
--
-- Host: localhost    Database: petgroup
-- ------------------------------------------------------
-- Server version	5.7.15-0ubuntu0.16.04.1

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `chi_tiet_danh_sach_yeu_thich`
--

DROP TABLE IF EXISTS `chi_tiet_danh_sach_yeu_thich`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `chi_tiet_danh_sach_yeu_thich` (
  `ID_Chi_Tiet_Danh_Sach_Yeu_Thich` int(11) NOT NULL AUTO_INCREMENT,
  `ID_Danh_Sach_Yeu_Thich` int(11) NOT NULL,
  `ID_San_Pham` int(11) NOT NULL,
  PRIMARY KEY (`ID_Chi_Tiet_Danh_Sach_Yeu_Thich`),
  KEY `fk_Chi_Tiet_Danh_Sach_Yeu_Thich_Danh_Sach_Yeu_Thich1_idx` (`ID_Danh_Sach_Yeu_Thich`),
  KEY `fk_Chi_Tiet_Danh_Sach_Yeu_Thich_San_Pham1_idx` (`ID_San_Pham`),
  CONSTRAINT `fk_Chi_Tiet_Danh_Sach_Yeu_Thich_Danh_Sach_Yeu_Thich1` FOREIGN KEY (`ID_Danh_Sach_Yeu_Thich`) REFERENCES `danh_sach_yeu_thich` (`ID_Danh_Sach_Yeu_Thich`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_Chi_Tiet_Danh_Sach_Yeu_Thich_San_Pham1` FOREIGN KEY (`ID_San_Pham`) REFERENCES `san_pham` (`ID_San_Pham`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `chi_tiet_danh_sach_yeu_thich`
--

LOCK TABLES `chi_tiet_danh_sach_yeu_thich` WRITE;
/*!40000 ALTER TABLE `chi_tiet_danh_sach_yeu_thich` DISABLE KEYS */;
INSERT INTO `chi_tiet_danh_sach_yeu_thich` VALUES (1,1,1),(2,1,4),(3,1,6),(4,2,2),(5,2,6),(6,2,7),(7,3,2),(8,3,14),(9,4,1),(10,4,12),(11,4,16),(12,5,12),(13,5,15),(14,5,26),(15,6,19),(16,6,25),(17,7,7),(18,8,4),(19,8,5),(20,8,7);
/*!40000 ALTER TABLE `chi_tiet_danh_sach_yeu_thich` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `chi_tiet_don_dat_hang`
--

DROP TABLE IF EXISTS `chi_tiet_don_dat_hang`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `chi_tiet_don_dat_hang` (
  `ID_Chi_Tiet_Don_Dat_Hang` int(11) NOT NULL AUTO_INCREMENT,
  `ID_Don_Dat_Hang` int(11) NOT NULL,
  `ID_San_Pham` int(11) NOT NULL,
  `So_Luong` int(11) NOT NULL,
  `Thanh_Tien` int(11) NOT NULL,
  PRIMARY KEY (`ID_Chi_Tiet_Don_Dat_Hang`),
  KEY `fk_chi_tiet_don_dat_hang_don_dat_hang_idx` (`ID_Don_Dat_Hang`),
  KEY `fk_chi_tiet_don_dat_hang_san_pham_idx` (`ID_San_Pham`),
  CONSTRAINT `fk_chi_tiet_don_dat_hang_don_dat_hang` FOREIGN KEY (`ID_Don_Dat_Hang`) REFERENCES `don_dat_hang` (`ID_Don_Dat_Hang`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_chi_tiet_don_dat_hang_san_pham` FOREIGN KEY (`ID_San_Pham`) REFERENCES `san_pham` (`ID_San_Pham`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `chi_tiet_don_dat_hang`
--

LOCK TABLES `chi_tiet_don_dat_hang` WRITE;
/*!40000 ALTER TABLE `chi_tiet_don_dat_hang` DISABLE KEYS */;
INSERT INTO `chi_tiet_don_dat_hang` VALUES (1,1,2,1,3290000),(2,1,3,2,55980000),(3,2,5,1,6290000),(4,2,1,1,9990000),(5,3,6,2,8980000),(6,4,13,1,20490000),(7,5,15,1,7490000),(8,6,18,1,3990000),(9,6,12,2,14980000),(10,7,11,1,6690000),(11,8,4,2,39980000),(12,9,22,3,6570000),(13,10,25,4,400000),(14,11,7,9,62910000),(15,12,5,1,6290000),(16,13,20,8,79920000),(17,14,26,5,625000),(18,15,9,1,3990000),(19,16,11,3,20070000),(20,16,10,4,21960000);
/*!40000 ALTER TABLE `chi_tiet_don_dat_hang` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,STRICT_ALL_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ALLOW_INVALID_DATES,ERROR_FOR_DIVISION_BY_ZERO,TRADITIONAL,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `petgroup`.`chi_tiet_don_dat_hang_BEFORE_INSERT`
BEFORE INSERT ON `petgroup`.`chi_tiet_don_dat_hang`
FOR EACH ROW
BEGIN
declare a int;
declare b int;
set a = ( select gia_san_pham from san_pham where id_san_pham = new.id_san_pham);
set b = ( select gia_tien_khuyen_mai from san_pham where id_san_pham = new.id_san_pham);
if (b!= NULL) then
set new.thanh_tien = b * new.so_luong;
else 
set new.thanh_tien = a * new.so_luong;
end if;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,STRICT_ALL_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ALLOW_INVALID_DATES,ERROR_FOR_DIVISION_BY_ZERO,TRADITIONAL,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `petgroup`.`chi_tiet_don_dat_hang_AFTER_INSERT`
AFTER INSERT ON `petgroup`.`chi_tiet_don_dat_hang`
FOR EACH ROW
BEGIN
declare c char(20);
declare d int;
declare e int;
set c = (select phuong_thuc_thanh_toan from don_dat_hang where id_don_dat_hang = new.id_don_dat_hang);
set d = (select dia_diem_giao_hang.phi_ship from dia_diem_giao_hang inner join don_dat_hang 
where dia_diem_giao_hang.id_dia_diem_giao_hang= don_dat_hang.id_dia_diem_giao_hang 
and don_dat_hang.id_don_dat_hang = new.id_don_dat_hang);
set e = (select sum(thanh_tien) from chi_tiet_don_dat_hang 
group by id_don_dat_hang having id_don_dat_hang = new.id_don_Dat_hang);
if c = 'Trả trước' then
update don_dat_hang
set thanh_tien = e + d
where id_don_dat_hang = new.id_don_Dat_hang;
elseif c = 'Trả sau' then
update don_dat_hang
set thanh_tien = e
where id_don_dat_hang = new.id_don_Dat_hang;
end if;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `danh_gia_san_pham`
--

DROP TABLE IF EXISTS `danh_gia_san_pham`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `danh_gia_san_pham` (
  `ID_Danh_Gia_San_Pham` int(11) NOT NULL AUTO_INCREMENT,
  `ID_San_Pham` int(11) NOT NULL,
  `ID_Nguoi_Dung` int(11) NOT NULL,
  `Noi_Dung` text NOT NULL,
  `Ngay_Binh_Luan` date NOT NULL,
  `So_Sao_Danh_Gia` int(11) DEFAULT NULL,
  PRIMARY KEY (`ID_Danh_Gia_San_Pham`),
  KEY `fk_Binh_Luan_San_Pham1_idx` (`ID_San_Pham`),
  KEY `fk_Binh_Luan_Nguoi_Dung1_idx` (`ID_Nguoi_Dung`),
  CONSTRAINT `fk_Binh_Luan_Nguoi_Dung1` FOREIGN KEY (`ID_Nguoi_Dung`) REFERENCES `nguoi_dung` (`ID_Nguoi_Dung`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_Binh_Luan_San_Pham1` FOREIGN KEY (`ID_San_Pham`) REFERENCES `san_pham` (`ID_San_Pham`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `danh_gia_san_pham`
--

LOCK TABLES `danh_gia_san_pham` WRITE;
/*!40000 ALTER TABLE `danh_gia_san_pham` DISABLE KEYS */;
INSERT INTO `danh_gia_san_pham` VALUES (1,1,4,'Sản phẩm tốt,máy mượt và thích nhất khoá vân tay,máy xài không hao pin,không nóng và mình còn đc tặng bộ gậy selfie rất độc.Cam kết Oppo xài tốt giá lại êm,good job','2016-12-08',4),(2,4,5,'Điện thoại này dùng rất tuyệt, game chạy mượt, camera trước và sau đều chụp hình rất đẹp, kể cả chụp buổi tối.','2016-12-08',5),(3,4,7,'Dùng rất tốt chỉ có 1 điều là máy bị sùi vỏ nhôm thôi máy pin rất ổn lướt wed rất mượt','2016-12-08',4),(4,4,8,'mình hay chơi game nên máy cũng đáp ứng rất tốt chỉ có 2 điểm mình góp ý mong hãng cải thiện: 1 là về pin còn rất hạn chế nhưng mình xài cầm theo sạc dự phòng quen rồi nên ai mà xài với triết lý pin trâu thì nên xem lại. thứ 2 là về mặt khởi động game thì còn chậm xử dc 2 cái này là perfect','2016-12-08',3),(5,5,4,'Hôm nay là ngày thứ 10 mình mua em samsung j7 prime về nhà. Cảm nhận của mình thì bề ngoài j7 màu đen đẹp. Nhưng em này hơi nóng máy, camerra sau thì ổn. Còn camerra trước chụp ảnh nhợt nhạt quá. Mình đang định mang máy đi trả đây.','2016-12-08',2),(6,5,9,'Mới mua máy cách đây 2 ngày :) một người không rành nhiều về hệ điều hành máy nên em sẽ nhận xét ngắn gọn nhất ! Máy chạy mượt , camera trước tốt camera sau ổn <3 chơi game , lướt web rất nhanh , mượt không hề bị đứng hay nóng máy ! Điện thoại cầm rất chắc tay , màn hình to coi phim rất đã , kết cấu đẹp :) và em không có gì để chê bé J7 Frime này :)) và em xin hết <3','2016-12-08',5),(7,3,6,'mình vừa rước em về nhà, cầm trên tay cực kỳ đẹp, bóng bẩy không tì vết. chụp hình chẳng thua gì máy cơ chuyên nghiệp. up lên face là đẹp phê con tê tê','2016-12-08',5),(8,3,10,'mua jet black về cầm tay rất đẹp và đầm, không cấn tay nhưng máy bị 1 vấn đề là dễ bị bám vân tay nên ai xài máy này nên mua miếng dán chống vân tay dán vào sẽ đảm bảo hơn.','2016-12-08',4),(9,3,15,'27 củ ra đi tiếc quá nếu biết như v thì mua Samsung S7 cho rồi , mạnh nhưng mà kh đáng tiền mua S7 là đủ lắm rồi kh cần phải đua đòi','2016-12-08',1),(10,7,4,'Máy thiết kế đẹp, dùng pin khá ổn. Máy hỗ trợ chơi game chưa tốt nhưng các ứng dụng thông thường khá ổn.','2016-12-08',4),(11,9,3,'mình mới mua máy này được 3 hôm thấy dùng cũng được thiết kế rất đẹp .nói chug tầm tiền này mua máy này vẫn hơn mua mấy em máy tính bảng','2016-12-08',3),(12,9,2,'mua về lướt face, xem youtube là chính, lâu lâu đọc file excel chứ với cấu hình như vậy chẳng làm được gì hết.','2016-12-08',2),(13,14,4,'thật sự xài ios rất mượt và xài ổn định nhưng còn nhiều mặt hạn chế lắm ví dụ như tạo apple id, icloud khá khó và nguy hiểm nếu người dùng mới xài cần phải tìm hiểu khá là rõ trước khi dùng. Các thao tác 1 vài thứ còn lằn nhằn như bật 3G phải vào 2 3 bước mới bật được thay vì Android chỉ cần kéo và lick là xong rồi.','2016-12-08',3),(14,15,8,'cái spen của máy khá đỉnh, vẽ nét đậm nhẹ rõ ràng,mình hay vẽ gửi cho người yêu qua zalo với viết tay khá thích chứ ngồi gõ thì nhợt nhạt quá','2016-12-08',5),(15,15,10,'Minh yêu thích samsung nên nhà toàn xài samsung :)) cả dòng họ mình mình cũng giới thiệu cho xài Samsung và sản phẩm này cũng kp là ngoại lệ, máy dùng tốt, màn hình to, tiện lợi khi mình dùng để thiết kế, rất phù hợp với công việc của mình','2016-12-08',3),(16,24,12,'Sản phẩm này có hỗ trợ 1 cồng USB ra 2.1A  giúp bạn sạc các thiết bị điện thoại hay máy tính bảng nhanh hơn so với 1A','2016-12-08',4),(17,12,6,'máy hay bị nóng và phà khí ra làm cảm giác xài không an tâm với máy, dùng 1 tí thì quá tải ổ đĩa phải khởi động lại mới ổn định hơn.','2016-12-08',3),(18,12,9,'dùng rất ổn trong tầm giá, loa to và rõ, cấu hình vừa đủ cho công việc nhẹ.thỉnh thoảng hay cập nhật này kia nhưng có thể chặn cập nhật lại để tránh tình trạng khó chịu này.','2016-12-08',5),(19,18,13,'huawei được cái bền nhưng còn học hỏi các hãng khác nhiều lắm như chất lượng âm thanh còn kém, loa phát nhỏ và rè.','2016-12-08',3),(20,18,15,'giá tốt, màn hình rộng, chơi game ổn, camera chụp hình được thôi chứ chưa đẹp lắm.','2016-12-08',4),(21,4,3,'cũng tạm','2016-12-08',4),(22,4,4,'hay lỗi','2016-12-08',3);
/*!40000 ALTER TABLE `danh_gia_san_pham` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,STRICT_ALL_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ALLOW_INVALID_DATES,ERROR_FOR_DIVISION_BY_ZERO,TRADITIONAL,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `petgroup`.`danh_gia_san_pham_BEFORE_INSERT`
BEFORE INSERT ON `petgroup`.`danh_gia_san_pham`
FOR EACH ROW
BEGIN
declare a date;
set a = curdate();
set new.ngay_binh_luan = a;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `petgroup`.`danh_gia_san_pham_AFTER_INSERT`
AFTER INSERT ON `petgroup`.`danh_gia_san_pham`
FOR EACH ROW
BEGIN
declare a int;
set a = (new.so_sao_danh_gia);
if (a <= 5 ) and (a >= 0) then
update san_pham
set so_sao_trung_binh = (SELECT AVG(so_sao_danh_gia) from danh_gia_san_pham where id_san_pham = new.id_san_pham)
where id_san_pham = new.id_san_pham;
else 
call error(4);
end if;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,STRICT_ALL_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ALLOW_INVALID_DATES,ERROR_FOR_DIVISION_BY_ZERO,TRADITIONAL,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `petgroup`.`danh_gia_san_pham_AFTER_DELETE`
AFTER DELETE ON `petgroup`.`danh_gia_san_pham`
FOR EACH ROW
BEGIN
update san_pham
set so_sao_trung_binh = (SELECT AVG(so_sao_danh_gia) from danh_gia_san_pham where id_san_pham = old.id_san_pham)
where id_san_pham = old.id_san_pham;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `danh_sach_yeu_thich`
--

DROP TABLE IF EXISTS `danh_sach_yeu_thich`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `danh_sach_yeu_thich` (
  `ID_Danh_Sach_Yeu_Thich` int(11) NOT NULL AUTO_INCREMENT,
  `ID_Nguoi_Dung` int(11) NOT NULL,
  PRIMARY KEY (`ID_Danh_Sach_Yeu_Thich`),
  UNIQUE KEY `ID_Nguoi_Dung_UNIQUE` (`ID_Nguoi_Dung`),
  KEY `fk_Danh_Sach_Yeu_Thich_Nguoi_Dung1_idx` (`ID_Nguoi_Dung`),
  CONSTRAINT `fk_Danh_Sach_Yeu_Thich_Nguoi_Dung1` FOREIGN KEY (`ID_Nguoi_Dung`) REFERENCES `nguoi_dung` (`ID_Nguoi_Dung`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `danh_sach_yeu_thich`
--

LOCK TABLES `danh_sach_yeu_thich` WRITE;
/*!40000 ALTER TABLE `danh_sach_yeu_thich` DISABLE KEYS */;
INSERT INTO `danh_sach_yeu_thich` VALUES (1,3),(3,4),(2,5),(4,6),(5,7),(6,10),(7,12),(8,15);
/*!40000 ALTER TABLE `danh_sach_yeu_thich` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dia_diem_giao_hang`
--

DROP TABLE IF EXISTS `dia_diem_giao_hang`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dia_diem_giao_hang` (
  `ID_Dia_Diem_Giao_Hang` int(11) NOT NULL AUTO_INCREMENT,
  `Thanh_pho/Tinh` char(20) NOT NULL,
  `Quan/Huyen` char(20) NOT NULL,
  `Phi_Ship` int(11) NOT NULL,
  PRIMARY KEY (`ID_Dia_Diem_Giao_Hang`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dia_diem_giao_hang`
--

LOCK TABLES `dia_diem_giao_hang` WRITE;
/*!40000 ALTER TABLE `dia_diem_giao_hang` DISABLE KEYS */;
INSERT INTO `dia_diem_giao_hang` VALUES (1,'Hà Nội','Ba Đình',10000),(2,'Hà Nội','Hoàn Kiếm',10000),(3,'Hà Nội','Long Biên',20000),(4,'Hà Nội','Thanh Xuân',10000),(5,'Hải Dương','Tứ Kỳ',40000),(6,'Nam Định','Nam Trực',30000),(7,'Nam ĐỊnh','My Lộc',30000),(8,'Thái Bình','Đông Hưng',30000),(9,'Thái Bình','Hưng Hà',30000),(10,'Hưng Yên','Tiên Lữ',20000),(11,'Hưng Yên','Khoái Châu',20000),(12,'Nghệ An','Tp Vinh',50000),(13,'Nghệ An','Nghi Lộc',50000),(14,'Thái Nguyên','Phú Bình',30000),(15,'Thái Nguyên','Phú Lương',30000);
/*!40000 ALTER TABLE `dia_diem_giao_hang` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `don_dat_hang`
--

DROP TABLE IF EXISTS `don_dat_hang`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `don_dat_hang` (
  `ID_Don_Dat_Hang` int(11) NOT NULL AUTO_INCREMENT,
  `ID_Thong_Tin_Dat_Hang` int(11) NOT NULL,
  `ID_Dia_Diem_Giao_Hang` int(11) NOT NULL,
  `ID_Trang_Thai_Giao_Hang` int(11) NOT NULL,
  `Ngay_Dat_Hang` date NOT NULL,
  `Ngay_Giao_Hang` date NOT NULL,
  `Thanh_Tien` int(11) NOT NULL,
  `Mo_Ta` text,
  `Phuong_Thuc_Thanh_Toan` char(50) NOT NULL,
  PRIMARY KEY (`ID_Don_Dat_Hang`),
  KEY `fk_Don_Dat_Hang_Trang_Thai_Giao_Hang1_idx` (`ID_Trang_Thai_Giao_Hang`),
  KEY `fk_Don_Dat_Hang_Dat_Hang1_idx` (`ID_Thong_Tin_Dat_Hang`),
  KEY `fk_Don_Dat_Hang_Dia_Diem_Giao_Hang_idx` (`ID_Dia_Diem_Giao_Hang`),
  CONSTRAINT `fk_Don_Dat_Hang_Dat_Hang1` FOREIGN KEY (`ID_Thong_Tin_Dat_Hang`) REFERENCES `thong_tin_dat_hang` (`ID_Thong_Tin_Dat_Hang`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_Don_Dat_Hang_Dia_Diem_Giao_Hang` FOREIGN KEY (`ID_Dia_Diem_Giao_Hang`) REFERENCES `dia_diem_giao_hang` (`ID_Dia_Diem_Giao_Hang`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_Don_Dat_Hang_Trang_Thai_Giao_Hang1` FOREIGN KEY (`ID_Trang_Thai_Giao_Hang`) REFERENCES `trang_thai_giao_hang` (`ID_Trang_Thai_Giao_Hang`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `don_dat_hang`
--

LOCK TABLES `don_dat_hang` WRITE;
/*!40000 ALTER TABLE `don_dat_hang` DISABLE KEYS */;
INSERT INTO `don_dat_hang` VALUES (1,1,1,1,'2016-11-01','2016-11-08',59280000,'Giao hàng vào buổi sáng','Trả trước'),(2,2,10,1,'2016-11-03','2016-11-10',16280000,'Giao hàng bất cứ lúc nào','Trả sau'),(3,5,4,1,'2016-11-04','2016-11-11',8990000,'Gọi điện báo trước 1h','Trả trước'),(4,3,5,1,'2016-11-04','2016-11-12',20490000,'Giao hàng vào buổi sáng','Trả sau'),(5,6,7,2,'2016-11-10','2016-11-17',7520000,'Giao hàng vào buổi chiều','Trả trước'),(6,9,8,2,'2016-11-15','2016-11-22',19000000,'NULL','Trả trước'),(7,4,9,2,'2016-11-18','2016-11-25',6690000,'NULL','Trả sau'),(8,7,14,2,'2016-11-20','2016-11-27',40010000,'NULL','Trả trước'),(9,10,15,2,'2016-11-23','2016-11-30',6570000,'NULL','Trả sau'),(10,8,3,3,'2016-11-24','2016-11-30',420000,'Giao hàng bất cứ lúc nào','Trả trước'),(11,12,5,3,'2016-11-26','2016-12-01',62910000,'Gọi điện báo trước','Trả sau'),(12,14,7,3,'2016-11-28','2016-12-04',6320000,'Giao hàng vào buổi chiều','Trả trước'),(13,11,2,3,'2016-11-29','2016-12-04',79930000,'NULL','Trả trước'),(14,15,9,3,'2016-11-30','2016-12-05',625000,'Giao hàng bất cứ lúc nào','Trả sau'),(15,13,15,3,'2016-12-01','2016-12-06',4020000,'Giao hàng bất cứ lúc nào','Trả trước'),(16,15,8,3,'2016-12-02','2016-12-06',42030000,'Gọi điện báo trước','Trả sau');
/*!40000 ALTER TABLE `don_dat_hang` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `petgroup`.`don_dat_hang_AFTER_INSERT`
AFTER INSERT ON `petgroup`.`don_dat_hang`
FOR EACH ROW
BEGIN
declare c char(20);
set c = new.phuong_thuc_thanh_toan;
if c != 'Trả trước' and c != 'Trả sau' then
call error(5);
end if;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `loai_khuyen_mai`
--

DROP TABLE IF EXISTS `loai_khuyen_mai`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `loai_khuyen_mai` (
  `ID_Loai_Khuyen_Mai` int(11) NOT NULL AUTO_INCREMENT,
  `Ten_Loai_Khuyen_Mai` char(100) CHARACTER SET utf8 NOT NULL,
  `Ngay_Bat_Dau` date NOT NULL,
  `Ngay_Ket_Thuc` date NOT NULL,
  `Mo_Ta` char(150) CHARACTER SET utf8 NOT NULL,
  PRIMARY KEY (`ID_Loai_Khuyen_Mai`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `loai_khuyen_mai`
--

LOCK TABLES `loai_khuyen_mai` WRITE;
/*!40000 ALTER TABLE `loai_khuyen_mai` DISABLE KEYS */;
INSERT INTO `loai_khuyen_mai` VALUES (1,'Khuyến mãi 30% điện thoại và laptop nhân ngày tựu trường','2016-11-02','2016-11-30','Còn chờ đợi gì nữa, quẩy đi'),(2,'Xả hàng giảm giá một số mặt hàng laptop','2016-12-15','2016-12-30','Mời quý khách đến mua'),(3,'Giảm giá 10% các loại phụ kiện','2016-08-25','2016-12-15','Giảm giá đặc biệt');
/*!40000 ALTER TABLE `loai_khuyen_mai` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `loai_nguoi_dung`
--

DROP TABLE IF EXISTS `loai_nguoi_dung`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `loai_nguoi_dung` (
  `ID_Loai_Nguoi_Dung` int(11) NOT NULL AUTO_INCREMENT,
  `Ten_Loai_Nguoi_Dung` char(10) NOT NULL,
  PRIMARY KEY (`ID_Loai_Nguoi_Dung`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `loai_nguoi_dung`
--

LOCK TABLES `loai_nguoi_dung` WRITE;
/*!40000 ALTER TABLE `loai_nguoi_dung` DISABLE KEYS */;
INSERT INTO `loai_nguoi_dung` VALUES (1,'Quản lý'),(2,'Khách hàng');
/*!40000 ALTER TABLE `loai_nguoi_dung` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `nguoi_dung`
--

DROP TABLE IF EXISTS `nguoi_dung`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `nguoi_dung` (
  `ID_Nguoi_Dung` int(11) NOT NULL AUTO_INCREMENT,
  `ID_Loai_Nguoi_Dung` int(11) NOT NULL,
  `Ten_Nguoi_Dung` char(30) NOT NULL,
  `Ten_Dang_Nhap` char(16) NOT NULL,
  `Email` char(30) NOT NULL,
  `Mat_Khau` char(45) NOT NULL,
  `Ngay_Sinh` date NOT NULL,
  `So_Dien_Thoai` char(15) NOT NULL,
  `Gioi_Tinh` char(10) NOT NULL,
  PRIMARY KEY (`ID_Nguoi_Dung`),
  UNIQUE KEY `Ten_Dang_Nhap_UNIQUE` (`Ten_Dang_Nhap`),
  UNIQUE KEY `Email_UNIQUE` (`Email`),
  KEY `fk_Nguoi_Dung_Loai_Nguoi_Dung1_idx` (`ID_Loai_Nguoi_Dung`),
  CONSTRAINT `fk_Nguoi_Dung_Loai_Nguoi_Dung1` FOREIGN KEY (`ID_Loai_Nguoi_Dung`) REFERENCES `loai_nguoi_dung` (`ID_Loai_Nguoi_Dung`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `nguoi_dung`
--

LOCK TABLES `nguoi_dung` WRITE;
/*!40000 ALTER TABLE `nguoi_dung` DISABLE KEYS */;
INSERT INTO `nguoi_dung` VALUES (1,1,'Phạm Hoàng Hưng','Hung_kute','hungpham@gmail.com','1111','1996-06-12','0987456234','Nam'),(2,1,'Trần Quốc Bảo','bao','baotranquoc@gmail.com','2222','2000-07-12','0977567427','Nam'),(3,2,'Đồng Đức Thưởng','thuong','thuongdong@gmail.com','3333','1996-08-25','01235671789','Nam'),(4,2,'Trần Thị Hà','ha','ha@gmail.com','4444','1996-09-07','01626785467','Nữ'),(5,2,'Nguyễn Đình Đức','duc','duc@gmail.com','5555','2000-11-13','0976453876','Nam'),(6,2,'Trần Tuấn Anh','tuananh','tuananh@gmail.com','6666','2005-12-17','0943567124','Nam'),(7,2,'Nguyễn Công Tình','tinh','tinh@gmail.com','7777','2004-08-21','01674568765','Nam'),(8,2,'Nguyễn Tuấn Linh','linh','linh@gmail.com','8888','2001-05-18','01234921996','Nam'),(9,2,'Trần Nhật Thành','thanh','thanh@gmail.com','9999','1993-04-28','1657862567','Nam'),(10,2,'Nguyễn Văn Hoàn','hoan','hoan@gmail.com','2345','1995-11-23','1658762675','Nam'),(11,2,'Lưu Minh Hiếu','hieu','hieu@gmail.com','3456','1994-12-21','1632347654','Nữ'),(12,2,'Lê Việt Anh','viet_anh','v.anh@gmail.com','45787','1997-04-25','1626942778','Nam'),(13,2,'Hoàng Mạnh Duy','duy','duy@gmail.com','15678','1998-07-13','976234963','Nam'),(14,2,'Trương Quang Thắng','thang','thang@gmail.com','1367','1995-03-12','987375179','Nam'),(15,2,'Lê Đình Mạnh','manh','manh@gmail.com','13578','1991-10-25','1637891368','Nam');
/*!40000 ALTER TABLE `nguoi_dung` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,STRICT_ALL_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ALLOW_INVALID_DATES,ERROR_FOR_DIVISION_BY_ZERO,TRADITIONAL,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `petgroup`.`nguoi_dung_AFTER_INSERT`
AFTER INSERT ON `petgroup`.`nguoi_dung`
FOR EACH ROW
BEGIN
declare a int;
declare b int;
set a = (select length(new.mat_khau));
set b = (select length(new.ten_dang_nhap));
if (b > 15) then 
call Error(3);
DELETE FROM nguoi_dung 
WHERE
    id_nguoi_dung = new.id_nguoi_dung;
elseif ( b < 15 ) and ( a > 15) then
call error(2);
end if;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `san_pham`
--

DROP TABLE IF EXISTS `san_pham`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `san_pham` (
  `ID_San_Pham` int(11) NOT NULL AUTO_INCREMENT,
  `ID_Thuong_Hieu` int(11) NOT NULL,
  `Ten_San_Pham` char(50) NOT NULL,
  `Gia_San_Pham` int(11) NOT NULL,
  `Anh_Lon` char(100) NOT NULL,
  `Anh_Nho` char(100) NOT NULL,
  `Thong_Tin` text NOT NULL,
  `So_Luong` int(11) NOT NULL,
  `Gia_Tien_Khuyen_Mai` int(11) DEFAULT NULL,
  `So_Sao_Trung_Binh` float NOT NULL,
  PRIMARY KEY (`ID_San_Pham`),
  UNIQUE KEY `Ten_San_Pham_UNIQUE` (`Ten_San_Pham`),
  KEY `fk_San_Pham_Thuong_Hieu1_idx` (`ID_Thuong_Hieu`),
  CONSTRAINT `fk_San_Pham_Thuong_Hieu1` FOREIGN KEY (`ID_Thuong_Hieu`) REFERENCES `thuong_hieu` (`ID_Thuong_Hieu`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `san_pham`
--

LOCK TABLES `san_pham` WRITE;
/*!40000 ALTER TABLE `san_pham` DISABLE KEYS */;
INSERT INTO `san_pham` VALUES (1,1,'OPPO F1 Plus',9990000,'https://www.thegioididong.com/dtdd/oppo-f1-plus','https://www.thegioididong.com/dtdd/oppo-f1-plus','Oppo F1 Plus có một thiết kế mặt trước rất đẹp, trang bị cảm biến vân tay và camera selfie có độ phân giải lên đến 16 MP. Oppo F1 Plus được thiết kế lấy cảm hứng từ nhà táo cắn dở. Không thể phủ nhận Oppo F1 Plus lấy cảm hứng thiết kế rất nhiều từ dòng iPhone 6, mặt lưng hoàn toàn giống cho tới phần camera lồi.',50,0,4),(2,1,'OPPO Neo 7s',3290000,'https://www.thegioididong.com/dtdd/oppo-neo-7s','https://www.thegioididong.com/dtdd/oppo-neo-7s','Chiếc điện thoại của OPPO Neo 7s hứa hẹn sẽ lại tiếp tục làm mưa làm gió với những điểm nổi bật của mình từ vẻ ngoài cho đến cấu hình khá. Thiết kế trang nhã. Kích thước màn hình là 5 inch, độ phân giải 540 x 960 pixels, cho hiển thị tốt, với tấm nền IPS LCD hỗ trợ hiển thị màu sắc tươi mới, góc nhìn được mở rộng.',28,0,0),(3,2,'iPhone 7 Plus',27990000,'https://www.thegioididong.com/dtdd/iphone-7-plus-256gb','https://www.thegioididong.com/dtdd/iphone-7-plus-256gb','iPhone 7 Plus 256 GB với bộ đôi camera kép ấn tượng cùng tiêu chuẩn chống nước lần đầu tiên xuất hiện trên các thế hệ iPhone sẽ là smartphone đáng mua nhất dịp cuối năm.',100,19593000,3.33333),(4,2,'iPhone 6s Plus 64GB',19990000,'https://www.thegioididong.com/dtdd/iphone-6s-plus-64gb','https://www.thegioididong.com/dtdd/iphone-6s-plus-64gb','iPhone 6s Plus là phiên bản nâng cấp hoàn hảo từ iPhone 6 Plus với nhiều tính năng mới hấp dẫn.',120,0,3.8),(5,3,'Samsung Galaxy J7 Prime',6290000,'https://www.thegioididong.com/dtdd/samsung-galaxy-j7-prime','https://www.thegioididong.com/dtdd/samsung-galaxy-j7-prime','Galaxy J7 Prime sở hữu thiết kế nguyên khối cùng cảm biến vân tay sẽ là tân binh mới của Samsung trong phân khúc smartphone tầm trung.',79,4403000,3.5),(6,3,'Điện thoại Samsung Galaxy J5',4490000,'https://www.thegioididong.com/dtdd/samsung-galaxy-j5-2016','https://www.thegioididong.com/dtdd/samsung-galaxy-j5-2016','Samsung Galaxy J5 (2016) mới ra mắt đã có bước tiến mới với một vài thay đổi đáng chú ý với cấu hình cải thiện tốt.',67,0,0),(7,4,'Acer R3 131T',6990000,'https://www.thegioididong.com/laptop/acer-r3-131t','https://www.thegioididong.com/laptop/acer-r3-131t','Acer R3 131T N3060 là chiếc laptop giá rẻ nhưng có cơ chế xoay gập 360 độ cùng màn hình cảm ứng.',100,0,4),(8,4,'Acer ES1 531',9990000,'https://www.thegioididong.com/laptop/acer-es1-531-n3710-4gb-500gb-win10','https://www.thegioididong.com/laptop/acer-es1-531-n3710-4gb-500gb-win10','Nếu bạn tìm kiếm một sản phẩm có tính di động cao, mức giá hợp lý trong phân khúc phổ thông, thì laptop Acer ES1 531 sẽ là một sự lựa chọn bạn không nên bỏ qua.',149,0,0),(9,5,'Lenovo IdeaPad 100S',3990000,'https://www.thegioididong.com/laptop/lenovo-ideapad-100s','https://www.thegioididong.com/laptop/lenovo-ideapad-100s','Lenovo IdeaPad 100S 11IBY có mức giá rẻ bất ngờ, thiết kế màu sắc dễ thương phù hợp mang theo bên mình để giải trí.',200,0,2.5),(10,5,'Lenovo IdeaPad 110',5490000,'https://www.thegioididong.com/laptop/lenovo-ideapad-110-14ibr-80t6006yvn','https://www.thegioididong.com/laptop/lenovo-ideapad-110-14ibr-80t6006yvn','Cấu hình phù hợp với nhu cầu giải trí nhẹ nhàng',150,3843000,0),(11,6,'Dell Inspiron 3552',6690000,'https://www.thegioididong.com/laptop/dell-inspiron-3552-v5c008w','https://www.thegioididong.com/laptop/dell-inspiron-3552-v5c008w','Dell Inspiron 3552 N3060 là phiên bản nâng cấp với RAM 4 GB cùng một ổ đĩa quang tiện dụng.',300,0,0),(12,6,'Dell Inspiron 3452',7490000,'https://www.thegioididong.com/laptop/dell-inspiron-3452-n3700-4gb-500gb-win10','https://www.thegioididong.com/laptop/dell-inspiron-3452-n3700-4gb-500gb-win10','Đặc điểm nổi bật của Dell Inspiron 3452 N3700/4GB/500GB/Win10',290,0,4),(13,2,'iPad Pro 9.7 inch Wifi Cellular 128GB',20490000,'https://www.thegioididong.com/may-tinh-bang/ipad-pro-97-inch-wifi-cellular-128gb','https://www.thegioididong.com/may-tinh-bang/ipad-pro-97-inch-wifi-cellular-128gb','Chiếc iPad Pro 9.7 inch có cấu hình cực kì mạnh mẽ, sang trọng và trên hết là kích thước được làm gọn hơn.',50,0,0),(14,2,'iPad Air 2 Cellular 64GB',14490000,'https://www.thegioididong.com/may-tinh-bang/ipad-air-2-cellular-64g','https://www.thegioididong.com/may-tinh-bang/ipad-air-2-cellular-64g','iPad Air 2 Cellular 64GB có bộ nhớ trong nhiều hơn, dành cho bạn có nhu cầu lưu trữ dữ liệu, hình ảnh.',167,8694000,3),(15,3,'Samsung Galaxy Tab A6 10.1',7490000,'https://www.thegioididong.com/may-tinh-bang/samsung-galaxy-tab-a-101-2016','https://www.thegioididong.com/may-tinh-bang/samsung-galaxy-tab-a-70','Samsung Galaxy Tab A 10.1 (2016) – Tablet tầm trung thiết kế đẹp',200,0,4),(16,3,'Samsung Galaxy Tab A6 7.0\"',3590000,'https://www.thegioididong.com/may-tinh-bang/samsung-galaxy-tab-a-70','https://www.thegioididong.com/may-tinh-bang/samsung-galaxy-tab-a-70','Samsung Galaxy Tab A 7.0 với thiết kế vẫn mang vẻ truyền thống và cấu hình tốt, khả năng hiển thị cải thiện, cùng kết nối 4G.',190,0,0),(17,7,'Huawei MediaPad T2 7 Pro',4590000,'https://www.thegioididong.com/may-tinh-bang/huawei-mediapad-t2-7-pro','https://www.thegioididong.com/may-tinh-bang/huawei-mediapad-t2-7-pro','Đặc điểm nổi bật của Huawei MediaPad T2 7 Pro',170,3672000,0),(18,7,'Huawei MediaPad T1-A21L',3990000,'https://www.thegioididong.com/may-tinh-bang/huawei-mediapad-t1-a21l','https://www.thegioididong.com/may-tinh-bang/huawei-mediapad-t1-a21l','Huawei MediaPad T1 10.0 (T1-A21L) – Đơn giản nhưng rất cần thiết',179,0,3.5),(19,2,'Apple Watch S2 42mm mặt nhôm, dây sợi nilon',10490000,'http://www.thegioididong.vn/wearable/apple-watch-series-2-42mm-gold-aluminium-mnpp2','http://www.thegioididong.vn/wearable/apple-watch-series-2-42mm-gold-aluminium-mnpp2','Apple Watch S2 42mm với mặt đồng hồ từ nhôm tổng hợp cao cấp, dây đeo nilon thể thao tông vàng sang trọng cùng màn hình 1.65 inch lớn hơn.',100,0,0),(20,2,'Apple Watch S2 38mm mặt nhôm, dây cao su màu đen',9990000,'http://www.thegioididong.vn/wearable/apple-watch-s2-38mm-space-grey-aluminium-mp0d2','http://www.thegioididong.vn/wearable/apple-watch-s2-38mm-space-grey-aluminium-mp0d2','Apple Watch S2 38mm có thiết kế đẹp với mặt đồng hồ từ nhôm sơn màu đen hiện đại, bóng bẩy, dây đeo đồng màu cùng với nhiều tính năng thông minh.',80,8991000,0),(21,3,'Samsung Gear Fit 2',2790000,'http://www.thegioididong.vn/wearable/samsung-gear-fit-2','http://www.thegioididong.vn/wearable/samsung-gear-fit-2','Samsung Gear Fit 2 là chiếc vòng tay sức khoẻ có thiết kế đẹp, giúp bạn luyện tập thể thao.',50,0,0),(22,3,'Kính thực tế ảo Samsung Gear VR2',2190000,'http://www.thegioididong.vn/wearable/kinh-thuc-te-ao-samsung-gear-vr2','http://www.thegioididong.vn/wearable/kinh-thuc-te-ao-samsung-gear-vr2','Samsung Gear VR2 – Tập trung vào trải nghiệm',70,0,0),(23,8,'Pin sạc dự phòng Polymer 5000mAh eSaver JP85',250000,'http://www.thegioididong.vn/sac-dtdd/pin-sac-du-phong-polymer-5000mah-esaver-jp85-xanh','http://www.thegioididong.vn/sac-dtdd/pin-sac-du-phong-polymer-5000mah-esaver-jp85-xanh','iệu suất sạc:65%. Đèn LED báo hiệu: Có. Thời gian sạc: 2-3 giờ dùng Adapter 2A. 5-6 giờ dùng Adapter 1A. Nguồn vào:5V-1A/2.1A. Cổng ra USB 1:5V-1A. Cổng ra USB 2:5V-2.1A. Kích thước (NxDxC): Dài 13.7 x ngang 7 x dày 0.8 cm. Tự ngắt khi sạc đầy điện thoại: Không. Trọng lượng:~145gr. Bộ bán hàng chuẩn: Pin sạc dự phòng',50,0,0),(24,9,'Pin sạc dự phòng 10000mAh Adata PV150',400000,'http://www.thegioididong.vn/sac-dtdd/pin-sac-du-phong-10000mah-adata-pv150','http://www.thegioididong.vn/sac-dtdd/pin-sac-du-phong-10000mah-adata-pv150','Hiệu suất sạc:65%. Đèn LED báo hiệu:Có. Thời gian sạc:4 tiếng. Nguồn vào:5V - 2A. Cổng ra USB 1:Có. Cổng ra USB 2:Không. Kích thước (NxDxC):8 x 2 x 9.5 cm. Tự ngắt khi sạc đầy điện thoại: Không. Trọng lượng:30gr. Bộ bán hàng chuẩn:1 pin sạc dự phòng, 1 cáp sạc',50,0,4),(25,11,'Chuột có dây Genius NS-100X',100000,'http://www.thegioididong.vn/chuot-may-tinh/chuot-co-day-genius-ns-100x','http://www.thegioididong.vn/chuot-may-tinh/chuot-co-day-genius-ns-100x','Nhà sản xuất:GeniusModel:NS-100XĐộ phân giải quang học:1200 dpiCổng kết nối:USBLoại chuột:Chuột có dâyĐộ dài dây/Khoảng cách kết nối:100 cmKích thước (DxNxC):10 x 5.5 x 3.0 cmTrọng lượng:76 gr',50,0,0),(26,10,'Chuột Gaming Cliptec Therius RGS563 Đen',125000,'http://www.thegioididong.vn/sac-dtdd/pin-sac-du-phong-10000mah-adata-pv150','http://www.thegioididong.vn/sac-dtdd/pin-sac-du-phong-10000mah-adata-pv150','Nhà sản xuất:CliptecModel:RGS563Độ phân giải quang học:2400 dpiCổng kết nối:USBLoại chuột:Chuột có dâyĐộ dài dây/Khoảng cách kết nối:150cm ± 1cmKích thước (DxNxC):125 x 84 x 40mmTrọng lượng:142 gr',50,0,0);
/*!40000 ALTER TABLE `san_pham` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `san_pham_dien_thoai`
--

DROP TABLE IF EXISTS `san_pham_dien_thoai`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `san_pham_dien_thoai` (
  `ID_San_Pham_Dien_Thoai` int(11) NOT NULL AUTO_INCREMENT,
  `ID_San_Pham` int(11) NOT NULL,
  `He_Dieu_Hanh` char(30) DEFAULT NULL,
  `Chat_Lieu_Vo` char(30) NOT NULL,
  `Camera_Truoc` int(11) DEFAULT NULL,
  `Camera_Sau` int(11) DEFAULT NULL,
  `Tinh_Nang_Dac_Biet` char(100) DEFAULT NULL,
  `Man_Hinh` float DEFAULT NULL,
  `Chuc_Nang_Khac` text,
  PRIMARY KEY (`ID_San_Pham_Dien_Thoai`),
  KEY `fk_San_Pham_Dien_Thoai_San_Pham1_idx` (`ID_San_Pham`),
  CONSTRAINT `fk_San_Pham_Dien_Thoai_San_Pham1` FOREIGN KEY (`ID_San_Pham`) REFERENCES `san_pham` (`ID_San_Pham`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `san_pham_dien_thoai`
--

LOCK TABLES `san_pham_dien_thoai` WRITE;
/*!40000 ALTER TABLE `san_pham_dien_thoai` DISABLE KEYS */;
INSERT INTO `san_pham_dien_thoai` VALUES (1,5,'Android','Kim Loại',8,13,'Bảo mật vân tay, Hỗ trợ 4G, Pin khủng, 2 SIM',5.5,'Chế độ an toàn khi lái xe'),(2,6,'Android','Giả Kim Loại',5,13,'Hỗ trợ 4G, Pin khủng, 2 SIM',5,'Chế độ an toàn khi lái xe'),(3,3,'iOS 10','Kim Loại',7,24,'Bảo mật vân tay, Hỗ trợ 4G',5.5,'3D Touch, Chống nước, chống bụi, Mặt kính 2.5D '),(4,4,'iOS 9','Kim Loại',5,12,'Bảo mật vân tay, Hỗ trợ 4G',5.5,'3D Touch, Chống nước, chống bụi'),(5,1,'Android 5.1 (Lollipop)','Hợp Kim Nhôm',16,13,'Bảo mật vân tay, 2 SIM, Hỗ trợ 4G, Selfie đẹp',5.5,'3D Touch'),(6,2,'Android 5.1 (Lollipop)','Nhựa',5,8,'2 SIM,  Selfie đẹp',5,'Không');
/*!40000 ALTER TABLE `san_pham_dien_thoai` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `san_pham_khuyen_mai`
--

DROP TABLE IF EXISTS `san_pham_khuyen_mai`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `san_pham_khuyen_mai` (
  `ID_San_Pham_Khuyen_Mai` int(11) NOT NULL AUTO_INCREMENT,
  `ID_San_Pham` int(11) NOT NULL,
  `ID_Loai_Khuyen_Mai` int(11) NOT NULL,
  `Phan_Tram_Giam_Gia` int(11) NOT NULL,
  PRIMARY KEY (`ID_San_Pham_Khuyen_Mai`),
  KEY `fk_San_Pham_Khuyen_Mai_San_Pham1_idx` (`ID_San_Pham`),
  KEY `fk_San_Pham_Khuyen_Mai_Loai_Khuyen_Mai1_idx` (`ID_Loai_Khuyen_Mai`),
  CONSTRAINT `fk_San_Pham_Khuyen_Mai_Loai_Khuyen_Mai1` FOREIGN KEY (`ID_Loai_Khuyen_Mai`) REFERENCES `loai_khuyen_mai` (`ID_Loai_Khuyen_Mai`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_San_Pham_Khuyen_Mai_San_Pham1` FOREIGN KEY (`ID_San_Pham`) REFERENCES `san_pham` (`ID_San_Pham`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `san_pham_khuyen_mai`
--

LOCK TABLES `san_pham_khuyen_mai` WRITE;
/*!40000 ALTER TABLE `san_pham_khuyen_mai` DISABLE KEYS */;
INSERT INTO `san_pham_khuyen_mai` VALUES (1,3,1,30),(2,5,1,30),(3,10,1,30),(4,14,2,40),(5,17,2,20),(6,20,3,10);
/*!40000 ALTER TABLE `san_pham_khuyen_mai` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,STRICT_ALL_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ALLOW_INVALID_DATES,ERROR_FOR_DIVISION_BY_ZERO,TRADITIONAL,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `petgroup`.`san_pham_khuyen_mai_AFTER_INSERT`
AFTER INSERT ON `petgroup`.`san_pham_khuyen_mai`
FOR EACH ROW
BEGIN
UPDATE san_pham 
SET 
    gia_tien_khuyen_mai = gia_san_pham * (100 - new.phan_tram_giam_gia) / 100
where
    id_san_pham = new.id_san_pham;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,STRICT_ALL_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ALLOW_INVALID_DATES,ERROR_FOR_DIVISION_BY_ZERO,TRADITIONAL,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `petgroup`.`san_pham_khuyen_mai_AFTER_UPDATE`
AFTER UPDATE ON `petgroup`.`san_pham_khuyen_mai`
FOR EACH ROW
BEGIN
	UPDATE san_pham 
SET 
    gia_tien_khuyen_mai = gia_san_pham * (100-new.phan_tram_giam_gia) / 100
where
    id_san_pham = new.id_san_pham;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,STRICT_ALL_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ALLOW_INVALID_DATES,ERROR_FOR_DIVISION_BY_ZERO,TRADITIONAL,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `petgroup`.`san_pham_khuyen_mai_AFTER_DELETE`
AFTER DELETE ON `petgroup`.`san_pham_khuyen_mai`
FOR EACH ROW
BEGIN
UPDATE san_pham 
SET 
    gia_tien_khuyen_mai = NULL
where
    id_san_pham = OLD.id_san_pham;

END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `san_pham_laptop`
--

DROP TABLE IF EXISTS `san_pham_laptop`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `san_pham_laptop` (
  `ID_San_Pham_Laptop` int(11) NOT NULL AUTO_INCREMENT,
  `ID_San_Pham` int(11) NOT NULL,
  `CPU` char(50) NOT NULL,
  `Man_Hinh` float NOT NULL,
  `RAM` char(50) NOT NULL,
  `O_Cung` char(50) NOT NULL,
  `Tinh_Nang_Dac_Biet` char(100) DEFAULT NULL,
  PRIMARY KEY (`ID_San_Pham_Laptop`),
  KEY `fk_San_Pham_Laptop_San_Pham1_idx` (`ID_San_Pham`),
  CONSTRAINT `fk_San_Pham_Laptop_San_Pham1` FOREIGN KEY (`ID_San_Pham`) REFERENCES `san_pham` (`ID_San_Pham`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `san_pham_laptop`
--

LOCK TABLES `san_pham_laptop` WRITE;
/*!40000 ALTER TABLE `san_pham_laptop` DISABLE KEYS */;
INSERT INTO `san_pham_laptop` VALUES (1,7,'	Intel, Celeron, N3060, 1.60 GHz',11.6,'DDR3L (1 khe RAM), 2 GB, 1600 MHz','	HDD, 500 GB','Multi TouchPad'),(2,8,'	Intel, Pentium, N3710, 1.60 GHz',15.6,'DDR3L (1 khe RAM), 4 GB, 1600 MHz','HDD, 500 GB','Card đồ họa rời, Multi TouchPad'),(3,9,'	Intel, Atom, Z3735F Quad-Core, 1.33 GHz',11.6,'DDR3L(On board), 2 GB, 1600 MHz','eMMC, 32 GB','	One Key Recovery, Micro kép, Xoay 360 độ'),(4,10,'Intel, Celeron, N3060, 1.60 GHz',14,'	DDR3L(On board), 4 GB, 1600 MHz','HDD, 500 GB','Multi TouchPad, AccuType Keyboard, Card đồ họa rời'),(5,11,'Intel, Celeron, N3060, 1.60 GHz',15.6,'	DDR3L (1 khe RAM), 4 GB, 1600 MHz','HDD, 500 GB','Multi TouchPad, Màn hình cảm ứng'),(6,12,'Intel, Celeron, N3060, 1.60 GHz',15.6,'DDR3L (1 khe RAM), 4 GB, 1600 MHz','HDD, 500 GB','Multi TouchPad');
/*!40000 ALTER TABLE `san_pham_laptop` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `san_pham_phu_kien`
--

DROP TABLE IF EXISTS `san_pham_phu_kien`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `san_pham_phu_kien` (
  `ID_San_Pham_Phu_Kien` int(11) NOT NULL AUTO_INCREMENT,
  `ID_San_Pham` int(11) NOT NULL,
  `Loai_Phu_Kien` char(20) DEFAULT NULL,
  PRIMARY KEY (`ID_San_Pham_Phu_Kien`),
  KEY `fk_San_Pham_Phu_Kien_San_Pham1_idx` (`ID_San_Pham`),
  CONSTRAINT `fk_San_Pham_Phu_Kien_San_Pham1` FOREIGN KEY (`ID_San_Pham`) REFERENCES `san_pham` (`ID_San_Pham`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `san_pham_phu_kien`
--

LOCK TABLES `san_pham_phu_kien` WRITE;
/*!40000 ALTER TABLE `san_pham_phu_kien` DISABLE KEYS */;
INSERT INTO `san_pham_phu_kien` VALUES (1,19,'Wearable'),(2,20,'Wearable'),(3,21,'Wearable'),(4,22,'Wearable'),(5,23,'Wearable'),(6,24,'Pin, sạc'),(7,25,'Chuột máy tính'),(8,26,'Chuột máy tính');
/*!40000 ALTER TABLE `san_pham_phu_kien` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `san_pham_tablet`
--

DROP TABLE IF EXISTS `san_pham_tablet`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `san_pham_tablet` (
  `ID_San_Pham_Tablet` int(11) NOT NULL AUTO_INCREMENT,
  `ID_San_Pham` int(11) NOT NULL,
  `Man_Hinh` float NOT NULL,
  `Camera_Sau` int(11) NOT NULL,
  `RAM` char(50) NOT NULL,
  `Tinh_Nang_Dac_Biet` char(30) DEFAULT NULL,
  PRIMARY KEY (`ID_San_Pham_Tablet`),
  KEY `fk_San_Pham_Tablet_San_Pham1_idx` (`ID_San_Pham`),
  CONSTRAINT `fk_San_Pham_Tablet_San_Pham1` FOREIGN KEY (`ID_San_Pham`) REFERENCES `san_pham` (`ID_San_Pham`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `san_pham_tablet`
--

LOCK TABLES `san_pham_tablet` WRITE;
/*!40000 ALTER TABLE `san_pham_tablet` DISABLE KEYS */;
INSERT INTO `san_pham_tablet` VALUES (1,13,9.7,12,'2 GB','Pin sử dụng trên 8h'),(2,14,9.7,8,'2 GB','Pin sử dụng trên 8h'),(3,15,10.7,8,'2 GB','2 SIM, Hỗ trợ OTG'),(4,16,7,5,'1.5 GB',' Hỗ trợ OTG'),(5,17,7,13,'2 GB','Thực hiện cuộc gọi'),(6,18,9.6,5,'1 GB','Thực hiện cuộc gọi, 2 SIM');
/*!40000 ALTER TABLE `san_pham_tablet` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `thong_tin_dat_hang`
--

DROP TABLE IF EXISTS `thong_tin_dat_hang`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `thong_tin_dat_hang` (
  `ID_Thong_Tin_Dat_Hang` int(11) NOT NULL AUTO_INCREMENT,
  `Ho_Va_Ten` char(30) NOT NULL,
  `Gioi_Tinh` char(10) NOT NULL,
  `Email` char(30) NOT NULL,
  `So_Dien_Thoai` char(15) NOT NULL,
  `Dia_Chi` char(150) DEFAULT NULL,
  PRIMARY KEY (`ID_Thong_Tin_Dat_Hang`),
  UNIQUE KEY `So_Dien_Thoai_UNIQUE` (`So_Dien_Thoai`),
  UNIQUE KEY `Email_UNIQUE` (`Email`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `thong_tin_dat_hang`
--

LOCK TABLES `thong_tin_dat_hang` WRITE;
/*!40000 ALTER TABLE `thong_tin_dat_hang` DISABLE KEYS */;
INSERT INTO `thong_tin_dat_hang` VALUES (1,'Phạm Hoàng Hưng','','hungpham@gmail.com','987456234','NULL'),(2,'Trần Quốc Bảo','','baotranquoc@gmail.com','977567427','NULL'),(3,'Đồng Đức Thưởng','','thuongdong@gmail.com','1235671789','NULL'),(4,'Trần Thị Hà','','ha@gmail.com','1626785467','NULL'),(5,'Nguyễn Đình Đức','','duc@gmail.com','976453876','NULL'),(6,'Trần Tuấn Anh','','tuananh@gmail.com','943567124','NULL'),(7,'Nguyễn Công Tình','','tinh@gmail.com','1674568765','NULL'),(8,'Nguyễn Tuấn Linh','','linh@gmail.com','1234921996','NULL'),(9,'Trần Nhật Thành','','thanh@gmail.com','1657862567','NULL'),(10,'Nguyễn Văn Hoàn','','hoan@gmail.com','1658762675','NULL'),(11,'Lưu Minh Hiếu','','hieu@gmail.com','1632347654','NULL'),(12,'Lê Việt Anh','','v.anh@gmail.com','1626942778','NULL'),(13,'Hoàng Mạnh Duy','','duy@gmail.com','976234963','NULL'),(14,'Trương Quang Thắng','','thang@gmail.com','987375179','NULL'),(15,'Lê Đình Mạnh','','manh@gmail.com','1637891368','NULL');
/*!40000 ALTER TABLE `thong_tin_dat_hang` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `thuong_hieu`
--

DROP TABLE IF EXISTS `thuong_hieu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `thuong_hieu` (
  `ID_Thuong_Hieu` int(11) NOT NULL AUTO_INCREMENT,
  `Ten_Thuong_Hieu` char(20) NOT NULL,
  `Hinh_Anh_Thuong_Hieu` char(30) NOT NULL,
  PRIMARY KEY (`ID_Thuong_Hieu`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `thuong_hieu`
--

LOCK TABLES `thuong_hieu` WRITE;
/*!40000 ALTER TABLE `thuong_hieu` DISABLE KEYS */;
INSERT INTO `thuong_hieu` VALUES (1,'Oppo','http://oppo'),(2,'Apple','http://apple'),(3,'Samsung','http://samsung'),(4,'Acer','http://acer'),(5,'Lenovo','http://lenovo'),(6,'Dell','http://dell'),(7,'Huawei','http://huawei'),(8,'eSaver','http://esaver'),(9,'AData','http://adata'),(10,'Cliptec','http://cliptec'),(11,'Genius','http://genius');
/*!40000 ALTER TABLE `thuong_hieu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `trang_thai_giao_hang`
--

DROP TABLE IF EXISTS `trang_thai_giao_hang`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `trang_thai_giao_hang` (
  `ID_Trang_Thai_Giao_Hang` int(11) NOT NULL AUTO_INCREMENT,
  `Ten_Trang_Thai_Giao_Hang` char(20) DEFAULT NULL,
  PRIMARY KEY (`ID_Trang_Thai_Giao_Hang`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `trang_thai_giao_hang`
--

LOCK TABLES `trang_thai_giao_hang` WRITE;
/*!40000 ALTER TABLE `trang_thai_giao_hang` DISABLE KEYS */;
INSERT INTO `trang_thai_giao_hang` VALUES (1,'Đặt hàng'),(2,'Đã thanh toán'),(3,'Đã nhận hàng');
/*!40000 ALTER TABLE `trang_thai_giao_hang` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'petgroup'
--

--
-- Dumping routines for database 'petgroup'
--
/*!50003 DROP PROCEDURE IF EXISTS `Error` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `Error`(pval INT)
BEGIN
  IF pval = 0 THEN
    SIGNAL SQLSTATE '01000';
  ELSEIF pval = 1 THEN
    SIGNAL SQLSTATE '45000'
      SET MESSAGE_TEXT = 'Bạn nhập sai rồi ^^ Nhập lại đi';
  ELSEIF pval = 2 THEN
      SIGNAL SQLSTATE '45000'
      SET MESSAGE_TEXT = 'Mật khẩu vượt quá độ dài quy định, vui lòng nhập lại !!!';
  ELSEIF pval = 3 THEN
      SIGNAL SQLSTATE '45000'
      SET MESSAGE_TEXT = 'Tên đăng nhập vượt quá độ dài quy định, vui lòng nhập lại !!!';
  ELSEIF pval = 4 THEN
      SIGNAL SQLSTATE '45000'
      SET MESSAGE_TEXT = 'Nhập lại số sao đánh giá';   
  ELSEIF pval = 5 THEN
      SIGNAL SQLSTATE '45000'
      SET MESSAGE_TEXT = 'Nhập lại phương thức thanh toán';       
  ELSE
    SIGNAL SQLSTATE '01000'
      SET MESSAGE_TEXT = 'A warning occurred', MYSQL_ERRNO = 1000;
    SIGNAL SQLSTATE '45000'
      SET MESSAGE_TEXT = 'An error occurred', MYSQL_ERRNO = 1001;
  END IF;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `Xem_Danh_Sach_San_Pham` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,STRICT_ALL_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ALLOW_INVALID_DATES,ERROR_FOR_DIVISION_BY_ZERO,TRADITIONAL,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `Xem_Danh_Sach_San_Pham`(a char(20))
BEGIN
if a = ('Dien_Thoai') then
select Ten_San_Pham, Gia_San_Pham, Anh_Lon, Anh_Nho, He_Dieu_Hanh, Chat_Lieu_Vo, Camera_Truoc, 
Camera_Sau, Tinh_Nang_Dac_Biet, Man_Hinh, Chuc_Nang_Khac, Thong_Tin, So_Luong
from san_pham inner join san_pham_dien_thoai on san_pham.ID_San_Pham = san_pham_dien_thoai.ID_San_Pham;
elseif a = ('Laptop') then
select Ten_San_Pham, Gia_San_Pham, Anh_Lon, Anh_Nho, CPU, Man_Hinh,  RAM, O_Cung, Tinh_Nang_Dac_Biet, Thong_Tin, So_Luong
from san_pham inner join san_pham_laptop on san_pham.ID_San_Pham = san_pham_laptop.ID_San_Pham;
elseif a = ('Phu_Kien') then
select  Ten_San_Pham, Loai_Phu_Kien, Gia_San_Pham, Anh_Lon, Anh_Nho, Thong_Tin, So_Luong
from san_pham inner join san_pham_phu_kien on san_pham.ID_San_Pham = san_pham_phu_kien.ID_San_Pham;
elseif a = ('Tablet') then
select Ten_San_Pham, Gia_San_Pham, Anh_Lon, Anh_Nho, Man_Hinh, Camera_Sau, RAM, Tinh_Nang_Dac_Biet, Thong_Tin, So_Luong
from san_pham_tablet inner join san_pham on san_pham_tablet.ID_San_Pham = san_pham.ID_San_Pham;
else call error(1);
end if;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `Xoa_Khuyen_Mai` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,STRICT_ALL_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ALLOW_INVALID_DATES,ERROR_FOR_DIVISION_BY_ZERO,TRADITIONAL,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `Xoa_Khuyen_Mai`()
BEGIN
declare a date;
set a = (select curdate());
DELETE FROM san_pham_khuyen_mai 
WHERE
    id_loai_khuyen_mai = (SELECT 
        id_loai_khuyen_mai
    FROM
        loai_khuyen_mai
    
    WHERE
        Ngay_Ket_Thuc = date_sub(a, INTERVAL 1 DAY));
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2016-12-08 13:45:11
