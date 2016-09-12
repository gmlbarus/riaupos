-- MySQL dump 10.15  Distrib 10.0.25-MariaDB, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: koran
-- ------------------------------------------------------
-- Server version	10.0.25-MariaDB-0ubuntu0.16.04.1

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `agen`
--

DROP TABLE IF EXISTS `agen`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `agen` (
  `id_agen` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `nama` varchar(100) DEFAULT NULL,
  `alamat` varchar(250) DEFAULT NULL,
  `hp` varchar(25) DEFAULT NULL,
  `aktif` enum('Y','N') DEFAULT 'Y',
  `tgl_input` datetime DEFAULT NULL,
  PRIMARY KEY (`id_agen`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `agen`
--

LOCK TABLES `agen` WRITE;
/*!40000 ALTER TABLE `agen` DISABLE KEYS */;
INSERT INTO `agen` VALUES (1,'PT. Karmeta Tour & Travel','JL. Dempo Luar Palembang','(0711) 351786','Y',NULL);
INSERT INTO `agen` VALUES (2,'PT. Handoyo','JL. Kol. H. Burlian KM.9 Palembang','(0711) 413767','Y',NULL);
INSERT INTO `agen` VALUES (3,'PT. IMI','JL. Kol. H. Burlian KM. 10 Palembang','(0711) 411599','Y',NULL);
INSERT INTO `agen` VALUES (4,'PT. Solid Brother','JL. Slamet Riyadi Pasar Kuto Palembang','(0711) 362451','Y',NULL);
INSERT INTO `agen` VALUES (5,'PT. Holiday','JL.  Kampar Raya Perumnas Palembang ','(0711) 842361','Y','2014-11-17 09:37:32');
INSERT INTO `agen` VALUES (6,'PT. Rahmat Terang','JL. Jend. A. Yani Plaju Palembang ','(0711) 513733','Y','2014-11-17 09:39:28');
INSERT INTO `agen` VALUES (7,'PT. Mega Wisata Tour & Travel','JL. Jenderal Sudirman Palembang ','(0711) 371544','Y','2014-11-17 09:43:20');
INSERT INTO `agen` VALUES (8,'PT. Mitra  Tour & Travel','JL. Basuki Rahmat Mall (PTC) Palembang ','(0711) 822382','Y','2014-11-17 09:44:04');
INSERT INTO `agen` VALUES (9,'PT. Ferga Delaga Dunia','JL. Mayor Salim Sekip Ujung Palembang','(0711) 371831','Y','2014-11-17 09:44:54');
INSERT INTO `agen` VALUES (10,'PT. Batas Nusa','JL. Basuki Rahmat','(0711) 372696','Y','2014-11-17 09:45:51');
INSERT INTO `agen` VALUES (11,'PT. Paris','JL. Letkol  Iskandar (PIM) Palembang ','(0711) 316591','Y','2014-11-17 09:46:43');
INSERT INTO `agen` VALUES (12,'PT. Rapi','JL. Tanjung Siapi-Api ','(0711) 389766','Y','2014-11-17 09:47:37');
INSERT INTO `agen` VALUES (13,'PT. AS Holiday','JL. Mayor Salim Batubara (Sekip) Palembang ','(0711) 367844','Y','2014-11-17 09:48:21');
INSERT INTO `agen` VALUES (14,'PT. IKPP','JL.Perang No.89','(0761) 91885','Y','2016-09-08 23:11:29');
/*!40000 ALTER TABLE `agen` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bank`
--

DROP TABLE IF EXISTS `bank`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bank` (
  `id_bank` int(5) NOT NULL AUTO_INCREMENT,
  `nama_bank` varchar(100) DEFAULT NULL,
  `norek` varchar(100) DEFAULT NULL,
  `nama_pemilik` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id_bank`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bank`
--

LOCK TABLES `bank` WRITE;
/*!40000 ALTER TABLE `bank` DISABLE KEYS */;
INSERT INTO `bank` VALUES (5,'Mandiri','900000','Eben Hezer Josapat Hasugian');
INSERT INTO `bank` VALUES (6,'BCA','12345678','Eben Hezer Josapat Hasugian');
/*!40000 ALTER TABLE `bank` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `faq`
--

DROP TABLE IF EXISTS `faq`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `faq` (
  `id_faq` int(11) NOT NULL AUTO_INCREMENT,
  `pertanyaan` text,
  `jawaban` text,
  `aktif` enum('Y','N') DEFAULT 'Y',
  `tgl_input` datetime DEFAULT NULL,
  PRIMARY KEY (`id_faq`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `faq`
--

LOCK TABLES `faq` WRITE;
/*!40000 ALTER TABLE `faq` DISABLE KEYS */;
INSERT INTO `faq` VALUES (4,'Bagaimanakah caranya untuk melakukan registrasi berlangganan koran?','Panduan untuk melakukan pemesanan, dapat anda lihat pada menu simulasi yang berada di bawah website. ','Y','2014-10-20 10:54:09');
INSERT INTO `faq` VALUES (5,'Bagaimana cara untuk memberikan saran atau kritik?','Untuk memberikan Saran dan kritik anda dapat membuka menu Saran dan Kritik yang berada dibawah website, dan isikan data dengan lengkap dan benar.','Y','2014-11-17 09:56:23');
INSERT INTO `faq` VALUES (6,'Bagaimana kami bisa megetahui lebih jauh tentang perusahaan ini?','Untuk mengenal lebih jauh PT. Pelayaran Sakti Inti Makmur anda dapat membuka menu Tentang Kami, yang berisi informasi mengenai perusahaan. ','Y','2014-11-17 09:58:22');
/*!40000 ALTER TABLE `faq` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hasil_polling`
--

DROP TABLE IF EXISTS `hasil_polling`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hasil_polling` (
  `id_polling` int(11) NOT NULL,
  `jawaban` int(2) DEFAULT NULL,
  `ip_1` varchar(45) DEFAULT NULL,
  `ip_2` varchar(45) DEFAULT NULL,
  `tahun` int(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hasil_polling`
--

LOCK TABLES `hasil_polling` WRITE;
/*!40000 ALTER TABLE `hasil_polling` DISABLE KEYS */;
INSERT INTO `hasil_polling` VALUES (1,4,'10.0.2.2','10',2015);
INSERT INTO `hasil_polling` VALUES (1,0,'','',2016);
INSERT INTO `hasil_polling` VALUES (1,2,'','',2016);
INSERT INTO `hasil_polling` VALUES (1,3,'','',2016);
INSERT INTO `hasil_polling` VALUES (1,6,'','',2016);
INSERT INTO `hasil_polling` VALUES (1,7,'','',2016);
INSERT INTO `hasil_polling` VALUES (1,7,'','',2016);
INSERT INTO `hasil_polling` VALUES (1,7,'','',2016);
INSERT INTO `hasil_polling` VALUES (1,7,'','',2016);
INSERT INTO `hasil_polling` VALUES (1,7,'','',2016);
INSERT INTO `hasil_polling` VALUES (1,8,'','',2016);
INSERT INTO `hasil_polling` VALUES (1,20,'','',2016);
INSERT INTO `hasil_polling` VALUES (1,10,'','',2016);
INSERT INTO `hasil_polling` VALUES (1,10,'','',2016);
INSERT INTO `hasil_polling` VALUES (1,9,'','',2016);
INSERT INTO `hasil_polling` VALUES (1,1,'10.0.2.2','',2015);
INSERT INTO `hasil_polling` VALUES (1,3,'10.0.2.2','',2016);
INSERT INTO `hasil_polling` VALUES (1,9,'','',2016);
/*!40000 ALTER TABLE `hasil_polling` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hubungi`
--

DROP TABLE IF EXISTS `hubungi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hubungi` (
  `id_hubungi` int(11) NOT NULL AUTO_INCREMENT,
  `nama` varchar(100) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `tipe` enum('Saran','Kritik') DEFAULT NULL,
  `pesan` text,
  `tgl_input` datetime DEFAULT NULL,
  PRIMARY KEY (`id_hubungi`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hubungi`
--

LOCK TABLES `hubungi` WRITE;
/*!40000 ALTER TABLE `hubungi` DISABLE KEYS */;
INSERT INTO `hubungi` VALUES (2,'Yunita','yunita_rainbow@yahoo.com','Saran','harus lebih ditingkatkan!\r\n','2014-11-14 10:49:36');
INSERT INTO `hubungi` VALUES (3,'eben hezer','ebenjosh@gmail.com','Saran','perbaiki lagi pelayanannya.','2016-08-22 21:54:46');
INSERT INTO `hubungi` VALUES (4,'eben hezer','ebenjosh@gmail.com','Kritik','kurang sopan.','2016-08-22 21:55:10');
INSERT INTO `hubungi` VALUES (5,'eben hezer','ebenjosh@gmail.com','Kritik','kurang sopan.','2016-08-22 23:12:25');
INSERT INTO `hubungi` VALUES (6,'guguk','ebenhezerhasugian@gmail.com','Saran','oke','2016-09-07 17:35:38');
/*!40000 ALTER TABLE `hubungi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `konten`
--

DROP TABLE IF EXISTS `konten`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `konten` (
  `id_konten` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `deskripsi` text,
  `grup` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id_konten`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `konten`
--

LOCK TABLES `konten` WRITE;
/*!40000 ALTER TABLE `konten` DISABLE KEYS */;
INSERT INTO `konten` VALUES (1,'Setiap hari pada pukul 07 : 00 WIB Pada Agen Distributor terdekat</br>\r\n<b>Kab.Siak :  <font color=\"f32308\"> 06:00 </font> WIB</b> | <b>Kab.Inhul :  <font color=\"f32308\"> 05:30 </font> WIB</b> | <b>Kab.Inhil :  <font color=\"f32308\">05:00</font> WIB</b> | <b>Kab.Meranti : <font color=\"f32308\">06:00</font> WIB</b></br>\r\n<b>Kab.Bengkalis : <font color=\"f32308\">06:00</font> WIB</b> | <b>Kab.Pelalawan : <font color=\"f32308\">06:00</font> WIB</b></br>\r\n','jadwal');
INSERT INTO `konten` VALUES (4,'Dewasa','penumpang');
INSERT INTO `konten` VALUES (5,'Anak','penumpang');
INSERT INTO `konten` VALUES (6,'Bayi','penumpang');
INSERT INTO `konten` VALUES (7,'VIP','kelas');
INSERT INTO `konten` VALUES (8,'Eksekutif','kelas');
INSERT INTO `konten` VALUES (9,'Ekonomi','kelas');
INSERT INTO `konten` VALUES (10,'<b>PT. RIAU POS MEDIA GROUP</b></br>\r\nGedung Graha Pena Riau Lt. 3, Jl. HR Subrantas KM. 10,5, Panam, Riau 28000, Indonesia</br>\r\nTelp. (0761) 566806, (0761) 64633,(0761) 64637,0761 6 Fax. (0711) 359200.</br></br>\r\n\r\n<b>Visi</b></br>\r\nMemberikan pelayanan prima kepada setiap pelanggan.</br> </br>\r\n\r\n<b>Misi</b></br>\r\n1.	Mengutamakan pelayanan.</br>\r\n2.	Memberikan pelayanan terbaik.</br>\r\n3.	Selalu mengutamakan kepuasan pelanggan.</br>\r\n','profil');
INSERT INTO `konten` VALUES (11,'Saran','tipe');
INSERT INTO `konten` VALUES (12,'Kritik','tipe');
INSERT INTO `konten` VALUES (13,'Koran Harian Riau Pos (terbit setiap harinya)','media');
INSERT INTO `konten` VALUES (14,'Majalah Mingguan Riau Pos (terbit hanya setiap minggu)','media');
INSERT INTO `konten` VALUES (15,'Pijat','extra');
INSERT INTO `konten` VALUES (16,'14','port');
INSERT INTO `konten` VALUES (17,'Laki-laki','jk');
INSERT INTO `konten` VALUES (18,'Perempuan','jk');
/*!40000 ALTER TABLE `konten` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `kota`
--

DROP TABLE IF EXISTS `kota`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `kota` (
  `id_kota` varchar(4) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `id_provinsi` varchar(2) NOT NULL DEFAULT '',
  PRIMARY KEY (`id_kota`),
  KEY `id_provinsi` (`id_provinsi`),
  CONSTRAINT `kota_ibfk_1` FOREIGN KEY (`id_provinsi`) REFERENCES `provinsi` (`id_provinsi`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `kota`
--

LOCK TABLES `kota` WRITE;
/*!40000 ALTER TABLE `kota` DISABLE KEYS */;
INSERT INTO `kota` VALUES ('1','SIMEULUE','11');
INSERT INTO `kota` VALUES ('10','BIREUEN','11');
INSERT INTO `kota` VALUES ('100','OGAN KOMERING ILIR','16');
INSERT INTO `kota` VALUES ('101','MUARA ENIM','16');
INSERT INTO `kota` VALUES ('102','LAHAT','16');
INSERT INTO `kota` VALUES ('103','MUSI RAWAS','16');
INSERT INTO `kota` VALUES ('104','MUSI BANYUASIN','16');
INSERT INTO `kota` VALUES ('105','BANYU ASIN','16');
INSERT INTO `kota` VALUES ('106','OGAN KOMERING ULU SELATAN','16');
INSERT INTO `kota` VALUES ('107','OGAN KOMERING ULU TIMUR','16');
INSERT INTO `kota` VALUES ('108','OGAN ILIR','16');
INSERT INTO `kota` VALUES ('109','EMPAT LAWANG','16');
INSERT INTO `kota` VALUES ('11','ACEH UTARA','11');
INSERT INTO `kota` VALUES ('110','PALEMBANG','16');
INSERT INTO `kota` VALUES ('111','PRABUMULIH','16');
INSERT INTO `kota` VALUES ('112','PAGAR ALAM','16');
INSERT INTO `kota` VALUES ('113','LUBUKLINGGAU','16');
INSERT INTO `kota` VALUES ('114','BENGKULU SELATAN','17');
INSERT INTO `kota` VALUES ('115','REJANG LEBONG','17');
INSERT INTO `kota` VALUES ('116','BENGKULU UTARA','17');
INSERT INTO `kota` VALUES ('117','KAUR','17');
INSERT INTO `kota` VALUES ('118','SELUMA','17');
INSERT INTO `kota` VALUES ('119','MUKOMUKO','17');
INSERT INTO `kota` VALUES ('12','ACEH BARAT DAYA','11');
INSERT INTO `kota` VALUES ('120','LEBONG','17');
INSERT INTO `kota` VALUES ('121','KEPAHIANG','17');
INSERT INTO `kota` VALUES ('122','BENGKULU TENGAH','17');
INSERT INTO `kota` VALUES ('123','BENGKULU','17');
INSERT INTO `kota` VALUES ('124','LAMPUNG BARAT','18');
INSERT INTO `kota` VALUES ('125','TANGGAMUS','18');
INSERT INTO `kota` VALUES ('126','LAMPUNG SELATAN','18');
INSERT INTO `kota` VALUES ('127','LAMPUNG TIMUR','18');
INSERT INTO `kota` VALUES ('128','LAMPUNG TENGAH','18');
INSERT INTO `kota` VALUES ('129','LAMPUNG UTARA','18');
INSERT INTO `kota` VALUES ('13','GAYO LUES','11');
INSERT INTO `kota` VALUES ('130','WAY KANAN','18');
INSERT INTO `kota` VALUES ('131','TULANGBAWANG','18');
INSERT INTO `kota` VALUES ('132','PESAWARAN','18');
INSERT INTO `kota` VALUES ('133','PRINGSEWU','18');
INSERT INTO `kota` VALUES ('134','MESUJI','18');
INSERT INTO `kota` VALUES ('135','TULANG BAWANG BARAT','18');
INSERT INTO `kota` VALUES ('136','BANDAR LAMPUNG','18');
INSERT INTO `kota` VALUES ('137','METRO','18');
INSERT INTO `kota` VALUES ('138','BANGKA','19');
INSERT INTO `kota` VALUES ('139','BELITUNG','19');
INSERT INTO `kota` VALUES ('14','ACEH TAMIANG','11');
INSERT INTO `kota` VALUES ('140','BANGKA BARAT','19');
INSERT INTO `kota` VALUES ('141','BANGKA TENGAH','19');
INSERT INTO `kota` VALUES ('142','BANGKA SELATAN','19');
INSERT INTO `kota` VALUES ('143','BELITUNG TIMUR','19');
INSERT INTO `kota` VALUES ('144','PANGKAL PINANG','19');
INSERT INTO `kota` VALUES ('145','KARIMUN','21');
INSERT INTO `kota` VALUES ('146','BINTAN','21');
INSERT INTO `kota` VALUES ('147','NATUNA','21');
INSERT INTO `kota` VALUES ('148','LINGGA','21');
INSERT INTO `kota` VALUES ('149','KEPULAUAN ANAMBAS','21');
INSERT INTO `kota` VALUES ('15','NAGAN RAYA','11');
INSERT INTO `kota` VALUES ('150','B A T A M','21');
INSERT INTO `kota` VALUES ('151','TANJUNG PINANG','21');
INSERT INTO `kota` VALUES ('152','KEPULAUAN SERIBU','31');
INSERT INTO `kota` VALUES ('153','JAKARTA SELATAN','31');
INSERT INTO `kota` VALUES ('154','JAKARTA TIMUR','31');
INSERT INTO `kota` VALUES ('155','JAKARTA PUSAT','31');
INSERT INTO `kota` VALUES ('156','JAKARTA BARAT','31');
INSERT INTO `kota` VALUES ('157','JAKARTA UTARA','31');
INSERT INTO `kota` VALUES ('158','BOGOR','32');
INSERT INTO `kota` VALUES ('159','SUKABUMI','32');
INSERT INTO `kota` VALUES ('16','ACEH JAYA','11');
INSERT INTO `kota` VALUES ('160','CIANJUR','32');
INSERT INTO `kota` VALUES ('161','BANDUNG','32');
INSERT INTO `kota` VALUES ('162','GARUT','32');
INSERT INTO `kota` VALUES ('163','TASIKMALAYA','32');
INSERT INTO `kota` VALUES ('164','CIAMIS','32');
INSERT INTO `kota` VALUES ('165','KUNINGAN','32');
INSERT INTO `kota` VALUES ('166','CIREBON','32');
INSERT INTO `kota` VALUES ('167','MAJALENGKA','32');
INSERT INTO `kota` VALUES ('168','SUMEDANG','32');
INSERT INTO `kota` VALUES ('169','INDRAMAYU','32');
INSERT INTO `kota` VALUES ('17','BENER MERIAH','11');
INSERT INTO `kota` VALUES ('170','SUBANG','32');
INSERT INTO `kota` VALUES ('171','PURWAKARTA','32');
INSERT INTO `kota` VALUES ('172','KARAWANG','32');
INSERT INTO `kota` VALUES ('173','BEKASI','32');
INSERT INTO `kota` VALUES ('174','BANDUNG BARAT','32');
INSERT INTO `kota` VALUES ('175','BOGOR','32');
INSERT INTO `kota` VALUES ('176','SUKABUMI','32');
INSERT INTO `kota` VALUES ('177','BANDUNG','32');
INSERT INTO `kota` VALUES ('178','CIREBON','32');
INSERT INTO `kota` VALUES ('179','BEKASI','32');
INSERT INTO `kota` VALUES ('18','PIDIE JAYA','11');
INSERT INTO `kota` VALUES ('180','DEPOK','32');
INSERT INTO `kota` VALUES ('181','CIMAHI','32');
INSERT INTO `kota` VALUES ('182','TASIKMALAYA','32');
INSERT INTO `kota` VALUES ('183','BANJAR','32');
INSERT INTO `kota` VALUES ('184','CILACAP','33');
INSERT INTO `kota` VALUES ('185','BANYUMAS','33');
INSERT INTO `kota` VALUES ('186','PURBALINGGA','33');
INSERT INTO `kota` VALUES ('187','BANJARNEGARA','33');
INSERT INTO `kota` VALUES ('188','KEBUMEN','33');
INSERT INTO `kota` VALUES ('189','PURWOREJO','33');
INSERT INTO `kota` VALUES ('19','BANDA ACEH','11');
INSERT INTO `kota` VALUES ('190','WONOSOBO','33');
INSERT INTO `kota` VALUES ('191','MAGELANG','33');
INSERT INTO `kota` VALUES ('192','BOYOLALI','33');
INSERT INTO `kota` VALUES ('193','KLATEN','33');
INSERT INTO `kota` VALUES ('194','SUKOHARJO','33');
INSERT INTO `kota` VALUES ('195','WONOGIRI','33');
INSERT INTO `kota` VALUES ('196','KARANGANYAR','33');
INSERT INTO `kota` VALUES ('197','SRAGEN','33');
INSERT INTO `kota` VALUES ('198','GROBOGAN','33');
INSERT INTO `kota` VALUES ('199','BLORA','33');
INSERT INTO `kota` VALUES ('2','ACEH SINGKIL','11');
INSERT INTO `kota` VALUES ('20','SABANG','11');
INSERT INTO `kota` VALUES ('200','REMBANG','33');
INSERT INTO `kota` VALUES ('201','PATI','33');
INSERT INTO `kota` VALUES ('202','KUDUS','33');
INSERT INTO `kota` VALUES ('203','JEPARA','33');
INSERT INTO `kota` VALUES ('204','DEMAK','33');
INSERT INTO `kota` VALUES ('205','SEMARANG','33');
INSERT INTO `kota` VALUES ('206','TEMANGGUNG','33');
INSERT INTO `kota` VALUES ('207','KENDAL','33');
INSERT INTO `kota` VALUES ('208','BATANG','33');
INSERT INTO `kota` VALUES ('209','PEKALONGAN','33');
INSERT INTO `kota` VALUES ('21','LANGSA','11');
INSERT INTO `kota` VALUES ('210','PEMALANG','33');
INSERT INTO `kota` VALUES ('211','TEGAL','33');
INSERT INTO `kota` VALUES ('212','BREBES','33');
INSERT INTO `kota` VALUES ('213','MAGELANG','33');
INSERT INTO `kota` VALUES ('214','SURAKARTA','33');
INSERT INTO `kota` VALUES ('215','SALATIGA','33');
INSERT INTO `kota` VALUES ('216','SEMARANG','33');
INSERT INTO `kota` VALUES ('217','PEKALONGAN','33');
INSERT INTO `kota` VALUES ('218','TEGAL','33');
INSERT INTO `kota` VALUES ('219','KULON PROGO','34');
INSERT INTO `kota` VALUES ('22','LHOKSEUMAWE','11');
INSERT INTO `kota` VALUES ('220','BANTUL','34');
INSERT INTO `kota` VALUES ('221','GUNUNG KIDUL','34');
INSERT INTO `kota` VALUES ('222','SLEMAN','34');
INSERT INTO `kota` VALUES ('223','YOGYAKARTA','34');
INSERT INTO `kota` VALUES ('224','PACITAN','35');
INSERT INTO `kota` VALUES ('225','PONOROGO','35');
INSERT INTO `kota` VALUES ('226','TRENGGALEK','35');
INSERT INTO `kota` VALUES ('227','TULUNGAGUNG','35');
INSERT INTO `kota` VALUES ('228','BLITAR','35');
INSERT INTO `kota` VALUES ('229','KEDIRI','35');
INSERT INTO `kota` VALUES ('23','SUBULUSSALAM','11');
INSERT INTO `kota` VALUES ('230','MALANG','35');
INSERT INTO `kota` VALUES ('231','LUMAJANG','35');
INSERT INTO `kota` VALUES ('232','JEMBER','35');
INSERT INTO `kota` VALUES ('233','BANYUWANGI','35');
INSERT INTO `kota` VALUES ('234','BONDOWOSO','35');
INSERT INTO `kota` VALUES ('235','SITUBONDO','35');
INSERT INTO `kota` VALUES ('236','PROBOLINGGO','35');
INSERT INTO `kota` VALUES ('237','PASURUAN','35');
INSERT INTO `kota` VALUES ('238','SIDOARJO','35');
INSERT INTO `kota` VALUES ('239','MOJOKERTO','35');
INSERT INTO `kota` VALUES ('24','NIAS','12');
INSERT INTO `kota` VALUES ('240','JOMBANG','35');
INSERT INTO `kota` VALUES ('241','NGANJUK','35');
INSERT INTO `kota` VALUES ('242','MADIUN','35');
INSERT INTO `kota` VALUES ('243','MAGETAN','35');
INSERT INTO `kota` VALUES ('244','NGAWI','35');
INSERT INTO `kota` VALUES ('245','BOJONEGORO','35');
INSERT INTO `kota` VALUES ('246','TUBAN','35');
INSERT INTO `kota` VALUES ('247','LAMONGAN','35');
INSERT INTO `kota` VALUES ('248','GRESIK','35');
INSERT INTO `kota` VALUES ('249','BANGKALAN','35');
INSERT INTO `kota` VALUES ('25','MANDAILING NATAL','12');
INSERT INTO `kota` VALUES ('250','SAMPANG','35');
INSERT INTO `kota` VALUES ('251','PAMEKASAN','35');
INSERT INTO `kota` VALUES ('252','SUMENEP','35');
INSERT INTO `kota` VALUES ('253','KEDIRI','35');
INSERT INTO `kota` VALUES ('254','BLITAR','35');
INSERT INTO `kota` VALUES ('255','MALANG','35');
INSERT INTO `kota` VALUES ('256','PROBOLINGGO','35');
INSERT INTO `kota` VALUES ('257','PASURUAN','35');
INSERT INTO `kota` VALUES ('258','MOJOKERTO','35');
INSERT INTO `kota` VALUES ('259','MADIUN','35');
INSERT INTO `kota` VALUES ('26','TAPANULI SELATAN','12');
INSERT INTO `kota` VALUES ('260','SURABAYA','35');
INSERT INTO `kota` VALUES ('261','BATU','35');
INSERT INTO `kota` VALUES ('262','PANDEGLANG','36');
INSERT INTO `kota` VALUES ('263','LEBAK','36');
INSERT INTO `kota` VALUES ('264','TANGERANG','36');
INSERT INTO `kota` VALUES ('265','SERANG','36');
INSERT INTO `kota` VALUES ('266','TANGERANG','36');
INSERT INTO `kota` VALUES ('267','CILEGON','36');
INSERT INTO `kota` VALUES ('268','SERANG','36');
INSERT INTO `kota` VALUES ('269','TANGERANG SELATAN','36');
INSERT INTO `kota` VALUES ('27','TAPANULI TENGAH','12');
INSERT INTO `kota` VALUES ('270','JEMBRANA','51');
INSERT INTO `kota` VALUES ('271','TABANAN','51');
INSERT INTO `kota` VALUES ('272','BADUNG','51');
INSERT INTO `kota` VALUES ('273','GIANYAR','51');
INSERT INTO `kota` VALUES ('274','KLUNGKUNG','51');
INSERT INTO `kota` VALUES ('275','BANGLI','51');
INSERT INTO `kota` VALUES ('276','KARANG ASEM','51');
INSERT INTO `kota` VALUES ('277','BULELENG','51');
INSERT INTO `kota` VALUES ('278','DENPASAR','51');
INSERT INTO `kota` VALUES ('279','LOMBOK BARAT','52');
INSERT INTO `kota` VALUES ('28','TAPANULI UTARA','12');
INSERT INTO `kota` VALUES ('280','LOMBOK TENGAH','52');
INSERT INTO `kota` VALUES ('281','LOMBOK TIMUR','52');
INSERT INTO `kota` VALUES ('282','SUMBAWA','52');
INSERT INTO `kota` VALUES ('283','DOMPU','52');
INSERT INTO `kota` VALUES ('284','BIMA','52');
INSERT INTO `kota` VALUES ('285','SUMBAWA BARAT','52');
INSERT INTO `kota` VALUES ('286','LOMBOK UTARA','52');
INSERT INTO `kota` VALUES ('287','MATARAM','52');
INSERT INTO `kota` VALUES ('288','BIMA','52');
INSERT INTO `kota` VALUES ('289','SUMBA BARAT','53');
INSERT INTO `kota` VALUES ('29','TOBA SAMOSIR','12');
INSERT INTO `kota` VALUES ('290','SUMBA TIMUR','53');
INSERT INTO `kota` VALUES ('291','KUPANG','53');
INSERT INTO `kota` VALUES ('292','TIMOR TENGAH SELATAN','53');
INSERT INTO `kota` VALUES ('293','TIMOR TENGAH UTARA','53');
INSERT INTO `kota` VALUES ('294','BELU','53');
INSERT INTO `kota` VALUES ('295','ALOR','53');
INSERT INTO `kota` VALUES ('296','LEMBATA','53');
INSERT INTO `kota` VALUES ('297','FLORES TIMUR','53');
INSERT INTO `kota` VALUES ('298','SIKKA','53');
INSERT INTO `kota` VALUES ('299','ENDE','53');
INSERT INTO `kota` VALUES ('3','ACEH SELATAN','11');
INSERT INTO `kota` VALUES ('30','LABUHAN BATU','12');
INSERT INTO `kota` VALUES ('300','NGADA','53');
INSERT INTO `kota` VALUES ('301','MANGGARAI','53');
INSERT INTO `kota` VALUES ('302','ROTE NDAO','53');
INSERT INTO `kota` VALUES ('303','MANGGARAI BARAT','53');
INSERT INTO `kota` VALUES ('304','SUMBA TENGAH','53');
INSERT INTO `kota` VALUES ('305','SUMBA BARAT DAYA','53');
INSERT INTO `kota` VALUES ('306','NAGEKEO','53');
INSERT INTO `kota` VALUES ('307','MANGGARAI TIMUR','53');
INSERT INTO `kota` VALUES ('308','SABU RAIJUA','53');
INSERT INTO `kota` VALUES ('309','KUPANG','53');
INSERT INTO `kota` VALUES ('31','ASAHAN','12');
INSERT INTO `kota` VALUES ('310','SAMBAS','61');
INSERT INTO `kota` VALUES ('311','BENGKAYANG','61');
INSERT INTO `kota` VALUES ('312','LANDAK','61');
INSERT INTO `kota` VALUES ('313','PONTIANAK','61');
INSERT INTO `kota` VALUES ('314','SANGGAU','61');
INSERT INTO `kota` VALUES ('315','KETAPANG','61');
INSERT INTO `kota` VALUES ('316','SINTANG','61');
INSERT INTO `kota` VALUES ('317','KAPUAS HULU','61');
INSERT INTO `kota` VALUES ('318','SEKADAU','61');
INSERT INTO `kota` VALUES ('319','MELAWI','61');
INSERT INTO `kota` VALUES ('32','SIMALUNGUN','12');
INSERT INTO `kota` VALUES ('320','KAYONG UTARA','61');
INSERT INTO `kota` VALUES ('321','KUBU RAYA','61');
INSERT INTO `kota` VALUES ('322','PONTIANAK','61');
INSERT INTO `kota` VALUES ('323','SINGKAWANG','61');
INSERT INTO `kota` VALUES ('324','KOTAWARINGIN BARAT','62');
INSERT INTO `kota` VALUES ('325','KOTAWARINGIN TIMUR','62');
INSERT INTO `kota` VALUES ('326','KAPUAS','62');
INSERT INTO `kota` VALUES ('327','BARITO SELATAN','62');
INSERT INTO `kota` VALUES ('328','BARITO UTARA','62');
INSERT INTO `kota` VALUES ('329','SUKAMARA','62');
INSERT INTO `kota` VALUES ('33','DAIRI','12');
INSERT INTO `kota` VALUES ('330','LAMANDAU','62');
INSERT INTO `kota` VALUES ('331','SERUYAN','62');
INSERT INTO `kota` VALUES ('332','KATINGAN','62');
INSERT INTO `kota` VALUES ('333','PULANG PISAU','62');
INSERT INTO `kota` VALUES ('334','GUNUNG MAS','62');
INSERT INTO `kota` VALUES ('335','BARITO TIMUR','62');
INSERT INTO `kota` VALUES ('336','MURUNG RAYA','62');
INSERT INTO `kota` VALUES ('337','PALANGKA RAYA','62');
INSERT INTO `kota` VALUES ('338','TANAH LAUT','63');
INSERT INTO `kota` VALUES ('339','KOTA BARU','63');
INSERT INTO `kota` VALUES ('34','KARO','12');
INSERT INTO `kota` VALUES ('340','BANJAR','63');
INSERT INTO `kota` VALUES ('341','BARITO KUALA','63');
INSERT INTO `kota` VALUES ('342','TAPIN','63');
INSERT INTO `kota` VALUES ('343','HULU SUNGAI SELATAN','63');
INSERT INTO `kota` VALUES ('344','HULU SUNGAI TENGAH','63');
INSERT INTO `kota` VALUES ('345','HULU SUNGAI UTARA','63');
INSERT INTO `kota` VALUES ('346','TABALONG','63');
INSERT INTO `kota` VALUES ('347','TANAH BUMBU','63');
INSERT INTO `kota` VALUES ('348','BALANGAN','63');
INSERT INTO `kota` VALUES ('349','BANJARMASIN','63');
INSERT INTO `kota` VALUES ('35','DELI SERDANG','12');
INSERT INTO `kota` VALUES ('350','BANJAR BARU','63');
INSERT INTO `kota` VALUES ('351','PASER','64');
INSERT INTO `kota` VALUES ('352','KUTAI BARAT','64');
INSERT INTO `kota` VALUES ('353','KUTAI KARTANEGARA','64');
INSERT INTO `kota` VALUES ('354','KUTAI TIMUR','64');
INSERT INTO `kota` VALUES ('355','BERAU','64');
INSERT INTO `kota` VALUES ('356','MALINAU','64');
INSERT INTO `kota` VALUES ('357','BULUNGAN','64');
INSERT INTO `kota` VALUES ('358','NUNUKAN','64');
INSERT INTO `kota` VALUES ('359','PENAJAM PASER UTARA','64');
INSERT INTO `kota` VALUES ('36','LANGKAT','12');
INSERT INTO `kota` VALUES ('360','TANA TIDUNG','64');
INSERT INTO `kota` VALUES ('361','BALIKPAPAN','64');
INSERT INTO `kota` VALUES ('362','SAMARINDA','64');
INSERT INTO `kota` VALUES ('363','TARAKAN','64');
INSERT INTO `kota` VALUES ('364','BONTANG','64');
INSERT INTO `kota` VALUES ('365','BOLAANG MONGONDOW','71');
INSERT INTO `kota` VALUES ('366','MINAHASA','71');
INSERT INTO `kota` VALUES ('367','KEPULAUAN SANGIHE','71');
INSERT INTO `kota` VALUES ('368','KEPULAUAN TALAUD','71');
INSERT INTO `kota` VALUES ('369','MINAHASA SELATAN','71');
INSERT INTO `kota` VALUES ('37','NIAS SELATAN','12');
INSERT INTO `kota` VALUES ('370','MINAHASA UTARA','71');
INSERT INTO `kota` VALUES ('371','BOLAANG MONGONDOW UTARA','71');
INSERT INTO `kota` VALUES ('372','SIAU TAGULANDANG BIARO','71');
INSERT INTO `kota` VALUES ('373','MINAHASA TENGGARA','71');
INSERT INTO `kota` VALUES ('374','BOLAANG MONGONDOW SELATAN','71');
INSERT INTO `kota` VALUES ('375','BOLAANG MONGONDOW TIMUR','71');
INSERT INTO `kota` VALUES ('376','MANADO','71');
INSERT INTO `kota` VALUES ('377','BITUNG','71');
INSERT INTO `kota` VALUES ('378','TOMOHON','71');
INSERT INTO `kota` VALUES ('379','KOTAMOBAGU','71');
INSERT INTO `kota` VALUES ('38','HUMBANG HASUNDUTAN','12');
INSERT INTO `kota` VALUES ('380','BANGGAI KEPULAUAN','72');
INSERT INTO `kota` VALUES ('381','BANGGAI','72');
INSERT INTO `kota` VALUES ('382','MOROWALI','72');
INSERT INTO `kota` VALUES ('383','POSO','72');
INSERT INTO `kota` VALUES ('384','DONGGALA','72');
INSERT INTO `kota` VALUES ('385','TOLI-TOLI','72');
INSERT INTO `kota` VALUES ('386','BUOL','72');
INSERT INTO `kota` VALUES ('387','PARIGI MOUTONG','72');
INSERT INTO `kota` VALUES ('388','TOJO UNA-UNA','72');
INSERT INTO `kota` VALUES ('389','SIGI','72');
INSERT INTO `kota` VALUES ('39','PAKPAK BHARAT','12');
INSERT INTO `kota` VALUES ('390','PALU','72');
INSERT INTO `kota` VALUES ('391','KEPULAUAN SELAYAR','73');
INSERT INTO `kota` VALUES ('392','BULUKUMBA','73');
INSERT INTO `kota` VALUES ('393','BANTAENG','73');
INSERT INTO `kota` VALUES ('394','JENEPONTO','73');
INSERT INTO `kota` VALUES ('395','TAKALAR','73');
INSERT INTO `kota` VALUES ('396','GOWA','73');
INSERT INTO `kota` VALUES ('397','SINJAI','73');
INSERT INTO `kota` VALUES ('398','MAROS','73');
INSERT INTO `kota` VALUES ('399','PANGKAJENE DAN KEPULAUAN','73');
INSERT INTO `kota` VALUES ('4','ACEH TENGGARA','11');
INSERT INTO `kota` VALUES ('40','SAMOSIR','12');
INSERT INTO `kota` VALUES ('400','BARRU','73');
INSERT INTO `kota` VALUES ('401','BONE','73');
INSERT INTO `kota` VALUES ('402','SOPPENG','73');
INSERT INTO `kota` VALUES ('403','WAJO','73');
INSERT INTO `kota` VALUES ('404','SIDENRENG RAPPANG','73');
INSERT INTO `kota` VALUES ('405','PINRANG','73');
INSERT INTO `kota` VALUES ('406','ENREKANG','73');
INSERT INTO `kota` VALUES ('407','LUWU','73');
INSERT INTO `kota` VALUES ('408','TANA TORAJA','73');
INSERT INTO `kota` VALUES ('409','LUWU UTARA','73');
INSERT INTO `kota` VALUES ('41','SERDANG BEDAGAI','12');
INSERT INTO `kota` VALUES ('410','LUWU TIMUR','73');
INSERT INTO `kota` VALUES ('411','TORAJA UTARA','73');
INSERT INTO `kota` VALUES ('412','MAKASSAR','73');
INSERT INTO `kota` VALUES ('413','PARE-PARE','73');
INSERT INTO `kota` VALUES ('414','PALOPO','73');
INSERT INTO `kota` VALUES ('415','BUTON','74');
INSERT INTO `kota` VALUES ('416','MUNA','74');
INSERT INTO `kota` VALUES ('417','KONAWE','74');
INSERT INTO `kota` VALUES ('418','KOLAKA','74');
INSERT INTO `kota` VALUES ('419','KONAWE SELATAN','74');
INSERT INTO `kota` VALUES ('42','BATU BARA','12');
INSERT INTO `kota` VALUES ('420','BOMBANA','74');
INSERT INTO `kota` VALUES ('421','WAKATOBI','74');
INSERT INTO `kota` VALUES ('422','KOLAKA UTARA','74');
INSERT INTO `kota` VALUES ('423','BUTON UTARA','74');
INSERT INTO `kota` VALUES ('424','KONAWE UTARA','74');
INSERT INTO `kota` VALUES ('425','KENDARI','74');
INSERT INTO `kota` VALUES ('426','BAUBAU','74');
INSERT INTO `kota` VALUES ('427','BOALEMO','75');
INSERT INTO `kota` VALUES ('428','GORONTALO','75');
INSERT INTO `kota` VALUES ('429','POHUWATO','75');
INSERT INTO `kota` VALUES ('43','PADANG LAWAS UTARA','12');
INSERT INTO `kota` VALUES ('430','BONE BOLANGO','75');
INSERT INTO `kota` VALUES ('431','GORONTALO UTARA','75');
INSERT INTO `kota` VALUES ('432','GORONTALO','75');
INSERT INTO `kota` VALUES ('433','MAJENE','76');
INSERT INTO `kota` VALUES ('434','POLEWALI MANDAR','76');
INSERT INTO `kota` VALUES ('435','MAMASA','76');
INSERT INTO `kota` VALUES ('436','MAMUJU','76');
INSERT INTO `kota` VALUES ('437','MAMUJU UTARA','76');
INSERT INTO `kota` VALUES ('438','MALUKU TENGGARA BARAT','81');
INSERT INTO `kota` VALUES ('439','MALUKU TENGGARA','81');
INSERT INTO `kota` VALUES ('44','PADANG LAWAS','12');
INSERT INTO `kota` VALUES ('440','MALUKU TENGAH','81');
INSERT INTO `kota` VALUES ('441','BURU','81');
INSERT INTO `kota` VALUES ('442','KEPULAUAN ARU','81');
INSERT INTO `kota` VALUES ('443','SERAM BAGIAN BARAT','81');
INSERT INTO `kota` VALUES ('444','SERAM BAGIAN TIMUR','81');
INSERT INTO `kota` VALUES ('445','MALUKU BARAT DAYA','81');
INSERT INTO `kota` VALUES ('446','BURU SELATAN','81');
INSERT INTO `kota` VALUES ('447','AMBON','81');
INSERT INTO `kota` VALUES ('448','TUAL','81');
INSERT INTO `kota` VALUES ('449','HALMAHERA BARAT','82');
INSERT INTO `kota` VALUES ('45','LABUHAN BATU SELATAN','12');
INSERT INTO `kota` VALUES ('450','HALMAHERA TENGAH','82');
INSERT INTO `kota` VALUES ('451','KEPULAUAN SULA','82');
INSERT INTO `kota` VALUES ('452','HALMAHERA SELATAN','82');
INSERT INTO `kota` VALUES ('453','HALMAHERA UTARA','82');
INSERT INTO `kota` VALUES ('454','HALMAHERA TIMUR','82');
INSERT INTO `kota` VALUES ('455','PULAU MOROTAI','82');
INSERT INTO `kota` VALUES ('456','TERNATE','82');
INSERT INTO `kota` VALUES ('457','TIDORE KEPULAUAN','82');
INSERT INTO `kota` VALUES ('458','FAKFAK','91');
INSERT INTO `kota` VALUES ('459','KAIMANA','91');
INSERT INTO `kota` VALUES ('46','LABUHAN BATU UTARA','12');
INSERT INTO `kota` VALUES ('460','TELUK WONDAMA','91');
INSERT INTO `kota` VALUES ('461','TELUK BINTUNI','91');
INSERT INTO `kota` VALUES ('462','MANOKWARI','91');
INSERT INTO `kota` VALUES ('463','SORONG SELATAN','91');
INSERT INTO `kota` VALUES ('464','SORONG','91');
INSERT INTO `kota` VALUES ('465','RAJA AMPAT','91');
INSERT INTO `kota` VALUES ('466','TAMBRAUW','91');
INSERT INTO `kota` VALUES ('467','MAYBRAT','91');
INSERT INTO `kota` VALUES ('468','SORONG','91');
INSERT INTO `kota` VALUES ('469','MERAUKE','94');
INSERT INTO `kota` VALUES ('47','NIAS UTARA','12');
INSERT INTO `kota` VALUES ('470','JAYAWIJAYA','94');
INSERT INTO `kota` VALUES ('471','JAYAPURA','94');
INSERT INTO `kota` VALUES ('472','NABIRE','94');
INSERT INTO `kota` VALUES ('473','KEPULAUAN YAPEN','94');
INSERT INTO `kota` VALUES ('474','BIAK NUMFOR','94');
INSERT INTO `kota` VALUES ('475','PANIAI','94');
INSERT INTO `kota` VALUES ('476','PUNCAK JAYA','94');
INSERT INTO `kota` VALUES ('477','MIMIKA','94');
INSERT INTO `kota` VALUES ('478','BOVEN DIGOEL','94');
INSERT INTO `kota` VALUES ('479','MAPPI','94');
INSERT INTO `kota` VALUES ('48','NIAS BARAT','12');
INSERT INTO `kota` VALUES ('480','ASMAT','94');
INSERT INTO `kota` VALUES ('481','YAHUKIMO','94');
INSERT INTO `kota` VALUES ('482','PEGUNUNGAN BINTANG','94');
INSERT INTO `kota` VALUES ('483','TOLIKARA','94');
INSERT INTO `kota` VALUES ('484','SARMI','94');
INSERT INTO `kota` VALUES ('485','KEEROM','94');
INSERT INTO `kota` VALUES ('486','WAROPEN','94');
INSERT INTO `kota` VALUES ('487','SUPIORI','94');
INSERT INTO `kota` VALUES ('488','MAMBERAMO RAYA','94');
INSERT INTO `kota` VALUES ('489','NDUGA','94');
INSERT INTO `kota` VALUES ('49','SIBOLGA','12');
INSERT INTO `kota` VALUES ('490','LANNY JAYA','94');
INSERT INTO `kota` VALUES ('491','MAMBERAMO TENGAH','94');
INSERT INTO `kota` VALUES ('492','YALIMO','94');
INSERT INTO `kota` VALUES ('493','PUNCAK','94');
INSERT INTO `kota` VALUES ('494','DOGIYAI','94');
INSERT INTO `kota` VALUES ('495','INTAN JAYA','94');
INSERT INTO `kota` VALUES ('496','DEIYAI','94');
INSERT INTO `kota` VALUES ('497','JAYAPURA','94');
INSERT INTO `kota` VALUES ('5','ACEH TIMUR','11');
INSERT INTO `kota` VALUES ('50','TANJUNG BALAI','12');
INSERT INTO `kota` VALUES ('51','PEMATANG SIANTAR','12');
INSERT INTO `kota` VALUES ('52','TEBING TINGGI','12');
INSERT INTO `kota` VALUES ('53','MEDAN','12');
INSERT INTO `kota` VALUES ('54','BINJAI','12');
INSERT INTO `kota` VALUES ('55','PADANGSIDIMPUAN','12');
INSERT INTO `kota` VALUES ('56','GUNUNGSITOLI','12');
INSERT INTO `kota` VALUES ('57','KEPULAUAN MENTAWAI','13');
INSERT INTO `kota` VALUES ('58','PESISIR SELATAN','13');
INSERT INTO `kota` VALUES ('59','SOLOK','13');
INSERT INTO `kota` VALUES ('6','ACEH TENGAH','11');
INSERT INTO `kota` VALUES ('60','SIJUNJUNG','13');
INSERT INTO `kota` VALUES ('61','TANAH DATAR','13');
INSERT INTO `kota` VALUES ('62','PADANG PARIAMAN','13');
INSERT INTO `kota` VALUES ('63','AGAM','13');
INSERT INTO `kota` VALUES ('64','LIMA PULUH KOTA','13');
INSERT INTO `kota` VALUES ('65','PASAMAN','13');
INSERT INTO `kota` VALUES ('66','SOLOK SELATAN','13');
INSERT INTO `kota` VALUES ('67','DHARMASRAYA','13');
INSERT INTO `kota` VALUES ('68','PASAMAN BARAT','13');
INSERT INTO `kota` VALUES ('69','PADANG','13');
INSERT INTO `kota` VALUES ('7','ACEH BARAT','11');
INSERT INTO `kota` VALUES ('70','SOLOK','13');
INSERT INTO `kota` VALUES ('71','SAWAH LUNTO','13');
INSERT INTO `kota` VALUES ('72','PADANG PANJANG','13');
INSERT INTO `kota` VALUES ('73','BUKITTINGGI','13');
INSERT INTO `kota` VALUES ('74','PAYAKUMBUH','13');
INSERT INTO `kota` VALUES ('75','PARIAMAN','13');
INSERT INTO `kota` VALUES ('76','KUANTAN SINGINGI','14');
INSERT INTO `kota` VALUES ('77','INDRAGIRI HULU','14');
INSERT INTO `kota` VALUES ('78','INDRAGIRI HILIR','14');
INSERT INTO `kota` VALUES ('79','PELALAWAN','14');
INSERT INTO `kota` VALUES ('8','ACEH BESAR','11');
INSERT INTO `kota` VALUES ('80','S I A K','14');
INSERT INTO `kota` VALUES ('81','KAMPAR','14');
INSERT INTO `kota` VALUES ('82','ROKAN HULU','14');
INSERT INTO `kota` VALUES ('83','BENGKALIS','14');
INSERT INTO `kota` VALUES ('84','ROKAN HILIR','14');
INSERT INTO `kota` VALUES ('85','KEPULAUAN MERANTI','14');
INSERT INTO `kota` VALUES ('86','PEKANBARU','14');
INSERT INTO `kota` VALUES ('87','D U M A I','14');
INSERT INTO `kota` VALUES ('88','KERINCI','15');
INSERT INTO `kota` VALUES ('89','MERANGIN','15');
INSERT INTO `kota` VALUES ('9','PIDIE','11');
INSERT INTO `kota` VALUES ('90','SAROLANGUN','15');
INSERT INTO `kota` VALUES ('91','BATANG HARI','15');
INSERT INTO `kota` VALUES ('92','MUARO JAMBI','15');
INSERT INTO `kota` VALUES ('93','TANJUNG JABUNG TIMUR','15');
INSERT INTO `kota` VALUES ('94','TANJUNG JABUNG BARAT','15');
INSERT INTO `kota` VALUES ('95','TEBO','15');
INSERT INTO `kota` VALUES ('96','BUNGO','15');
INSERT INTO `kota` VALUES ('97','JAMBI','15');
INSERT INTO `kota` VALUES ('98','SUNGAI PENUH','15');
INSERT INTO `kota` VALUES ('99','OGAN KOMERING ULU','16');
/*!40000 ALTER TABLE `kota` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `login`
--

DROP TABLE IF EXISTS `login`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `login` (
  `username` varchar(100) NOT NULL,
  `pass` varchar(100) DEFAULT NULL,
  `grup` enum('0','1','2') DEFAULT NULL COMMENT '0.Operator - 1.Pimpinan - 2.Client',
  `status` varchar(5) NOT NULL,
  PRIMARY KEY (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `login`
--

LOCK TABLES `login` WRITE;
/*!40000 ALTER TABLE `login` DISABLE KEYS */;
INSERT INTO `login` VALUES ('admin','21232f297a57a5a743894a0e4a801fc3','0','Y');
INSERT INTO `login` VALUES ('coba@gmail.com','c3ec0f7b054e729c5a716c8125839829','2','Y');
INSERT INTO `login` VALUES ('ebenhezerhasugian@gmail.com','e807f1fcf82d132f9bb018ca6738a19f','2','Y');
INSERT INTO `login` VALUES ('ebenjosh@gmail.com','8b7ea8942e41d15fe77fdf150bf0caf9','2','Y');
INSERT INTO `login` VALUES ('manager','21232f297a57a5a743894a0e4a801fc3','1','Y');
INSERT INTO `login` VALUES ('sakit@gmail.com','e5e434b8053cf09733f1cc20cb962d6c','2','Y');
INSERT INTO `login` VALUES ('yunita_rainbow@yahoo.com','827ccb0eea8a706c4c34a16891f84e7b','2','Y');
/*!40000 ALTER TABLE `login` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `menu`
--

DROP TABLE IF EXISTS `menu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `menu` (
  `id_menu` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `menu` varchar(100) DEFAULT NULL,
  `url` varchar(100) DEFAULT NULL,
  `grup` int(10) unsigned DEFAULT NULL,
  `aktif` enum('Y','N') DEFAULT NULL,
  PRIMARY KEY (`id_menu`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `menu`
--

LOCK TABLES `menu` WRITE;
/*!40000 ALTER TABLE `menu` DISABLE KEYS */;
INSERT INTO `menu` VALUES (1,'Profil','?module=profil',0,'Y');
INSERT INTO `menu` VALUES (2,'FAQ','?module=faq',0,'Y');
INSERT INTO `menu` VALUES (3,'Promo','?module=promo',0,'Y');
INSERT INTO `menu` VALUES (4,'Tindak Lanjut','?module=tindak-lanjut',0,'Y');
INSERT INTO `menu` VALUES (5,'Jadwal Pengiriman Koran','?module=jadwal',0,'Y');
INSERT INTO `menu` VALUES (6,'Saran dan Kritik','?module=saran-kritik',0,'Y');
INSERT INTO `menu` VALUES (7,'Data Agen','?module=agen',0,'Y');
INSERT INTO `menu` VALUES (8,'Data Pelanggan','?module=pelanggan',0,'Y');
INSERT INTO `menu` VALUES (9,'Data Rute','?module=rute',0,'N');
INSERT INTO `menu` VALUES (10,'Data Simulasi','?module=simulasi',0,'N');
INSERT INTO `menu` VALUES (11,'Data Berlangganan','?module=pemesanan',0,'Y');
INSERT INTO `menu` VALUES (12,'Data Bank','?module=bank',0,'Y');
INSERT INTO `menu` VALUES (13,'Laporan Pelanggan','?module=laporan-pelanggan',1,'Y');
INSERT INTO `menu` VALUES (14,'Laporan Berlangganan','?module=laporan-pemesanan',1,'Y');
INSERT INTO `menu` VALUES (16,'Ongkos Tarif','?module=ongkos',0,'Y');
INSERT INTO `menu` VALUES (17,'SMS History','?module=smshistory',0,'Y');
INSERT INTO `menu` VALUES (18,'SMS Outbox','?module=smsoutbox',0,'Y');
INSERT INTO `menu` VALUES (19,'SMS Broadcast','?module=smsbroadcast',0,'Y');
INSERT INTO `menu` VALUES (20,'Survey NPS','?module=polling',1,'Y');
INSERT INTO `menu` VALUES (21,'Laporan Agen','?module=laporan-agen',1,'Y');
INSERT INTO `menu` VALUES (22,'Laporan Stop Berlangganan','?module=stop',1,'Y');
INSERT INTO `menu` VALUES (24,'SMS Send','?module=smsSend',0,'Y');
/*!40000 ALTER TABLE `menu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `order`
--

DROP TABLE IF EXISTS `order`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `order` (
  `id_order` int(10) NOT NULL AUTO_INCREMENT,
  `nama` varchar(100) DEFAULT NULL,
  `tgl_lahir` date DEFAULT NULL,
  `alamat` varchar(250) DEFAULT NULL,
  `id_provinsi` varchar(2) DEFAULT NULL,
  `id_kota` varchar(4) DEFAULT NULL,
  `kode_pos` varchar(5) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `hp` varchar(15) DEFAULT NULL,
  `pijat` enum('Y','N') DEFAULT NULL,
  `status` enum('Belum Lunas','Lunas') NOT NULL DEFAULT 'Belum Lunas',
  `invoice` varchar(100) DEFAULT NULL,
  `trip` enum('pp','one_way') DEFAULT NULL,
  `tgl_input` datetime DEFAULT NULL,
  PRIMARY KEY (`id_order`),
  KEY `id_provinsi` (`id_provinsi`),
  KEY `id_kota` (`id_kota`),
  CONSTRAINT `order_ibfk_1` FOREIGN KEY (`id_provinsi`) REFERENCES `provinsi` (`id_provinsi`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `order_ibfk_2` FOREIGN KEY (`id_kota`) REFERENCES `kota` (`id_kota`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `order`
--

LOCK TABLES `order` WRITE;
/*!40000 ALTER TABLE `order` DISABLE KEYS */;
INSERT INTO `order` VALUES (3,'Yunita','1992-06-22','JL. Bungaran II','16','110','30252','yunita_rainbow@yahoo.com','085267730918','Y','Lunas','I88B1K358C69','one_way','2014-11-26 07:05:17');
INSERT INTO `order` VALUES (4,'Yunita','1992-06-22','JL. Bungaran II','16','110','30252','yunita_rainbow@yahoo.com','085267730918','N','Lunas','PQ9MK8KH6FFL','one_way','2014-11-28 19:05:42');
INSERT INTO `order` VALUES (5,'Yunita','1992-06-22','JL. Bungaran II','16','110','30252','yunita_rainbow@yahoo.com','085267730918','Y','Lunas','PQ9MK800D6B0','one_way','2014-11-28 19:13:07');
INSERT INTO `order` VALUES (6,'Yunita','1992-06-22','JL. Bungaran II','16','110','30252','yunita_rainbow@yahoo.com','085267730918','N','Lunas','NA90S4HF5LL0','one_way','2014-11-30 21:40:47');
INSERT INTO `order` VALUES (7,'Yunita','1992-06-22','JL. Bungaran II','16','110','30252','yunita_rainbow@yahoo.com','085267730918','N','Lunas','NA90S42J33CL','one_way','2014-11-30 21:44:13');
INSERT INTO `order` VALUES (8,'Yunita','1992-06-22','JL. Bungaran II','16','110','30252','yunita_rainbow@yahoo.com','085267730918','Y','Lunas','NA90S461E6JK','one_way','2014-11-30 22:19:00');
/*!40000 ALTER TABLE `order` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `order_detail`
--

DROP TABLE IF EXISTS `order_detail`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `order_detail` (
  `id_order` int(10) NOT NULL DEFAULT '0',
  `rute` varchar(100) NOT NULL DEFAULT '0',
  `tgl_berangkat` date NOT NULL,
  `kategori` enum('Dewasa','Anak','Bayi') NOT NULL,
  `qty` int(10) unsigned DEFAULT NULL,
  `tarif` int(20) NOT NULL,
  `diskon` double NOT NULL,
  KEY `id_order` (`id_order`),
  KEY `tarif` (`tarif`),
  CONSTRAINT `order_detail_ibfk_1` FOREIGN KEY (`id_order`) REFERENCES `order` (`id_order`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `order_detail`
--

LOCK TABLES `order_detail` WRITE;
/*!40000 ALTER TABLE `order_detail` DISABLE KEYS */;
INSERT INTO `order_detail` VALUES (3,'Palembang (Boombaru) - Muntok (Tanjung Kalian)','2014-11-28','Dewasa',1,265000,0.1);
INSERT INTO `order_detail` VALUES (4,'Palembang (Boombaru) - Muntok (Tanjung Kalian)','2014-11-29','Dewasa',1,190000,0);
INSERT INTO `order_detail` VALUES (5,'Palembang (Boombaru) - Muntok (Tanjung Kalian)','2014-11-29','Dewasa',1,265000,0);
INSERT INTO `order_detail` VALUES (6,'Palembang (Boombaru) - Muntok (Tanjung Kalian)','2014-12-01','Dewasa',1,190000,0);
INSERT INTO `order_detail` VALUES (7,'Palembang (Boombaru) - Muntok (Tanjung Kalian)','2014-11-30','Dewasa',1,190000,0);
INSERT INTO `order_detail` VALUES (8,'Palembang (Boombaru) - Muntok (Tanjung Kalian)','2014-12-01','Dewasa',2,265000,0);
/*!40000 ALTER TABLE `order_detail` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `order_kelas`
--

DROP TABLE IF EXISTS `order_kelas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `order_kelas` (
  `id_order` int(10) NOT NULL,
  `kelas` enum('EKONOMI','EKSEKUTIF','VIP') NOT NULL,
  `aktif` enum('Y','N') NOT NULL DEFAULT 'Y',
  KEY `id_order` (`id_order`),
  CONSTRAINT `order_kelas_ibfk_1` FOREIGN KEY (`id_order`) REFERENCES `order` (`id_order`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `order_kelas`
--

LOCK TABLES `order_kelas` WRITE;
/*!40000 ALTER TABLE `order_kelas` DISABLE KEYS */;
INSERT INTO `order_kelas` VALUES (3,'EKONOMI','N');
INSERT INTO `order_kelas` VALUES (3,'VIP','Y');
INSERT INTO `order_kelas` VALUES (4,'EKONOMI','Y');
INSERT INTO `order_kelas` VALUES (5,'EKONOMI','N');
INSERT INTO `order_kelas` VALUES (5,'VIP','Y');
INSERT INTO `order_kelas` VALUES (6,'EKONOMI','Y');
INSERT INTO `order_kelas` VALUES (7,'EKONOMI','Y');
INSERT INTO `order_kelas` VALUES (8,'EKONOMI','N');
INSERT INTO `order_kelas` VALUES (8,'VIP','Y');
/*!40000 ALTER TABLE `order_kelas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `order_meal`
--

DROP TABLE IF EXISTS `order_meal`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `order_meal` (
  `id_order` int(10) NOT NULL DEFAULT '0',
  `id_makanan` int(11) DEFAULT NULL,
  `tarif` double DEFAULT NULL,
  KEY `id_order` (`id_order`),
  KEY `id_makanan` (`id_makanan`),
  CONSTRAINT `order_meal_ibfk_1` FOREIGN KEY (`id_order`) REFERENCES `order` (`id_order`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `order_meal_ibfk_2` FOREIGN KEY (`id_makanan`) REFERENCES `tindaklanjut` (`id_tindak`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `order_meal`
--

LOCK TABLES `order_meal` WRITE;
/*!40000 ALTER TABLE `order_meal` DISABLE KEYS */;
/*!40000 ALTER TABLE `order_meal` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `order_pijat`
--

DROP TABLE IF EXISTS `order_pijat`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `order_pijat` (
  `id_order` int(11) DEFAULT NULL,
  `tarif` double DEFAULT NULL,
  KEY `id_order` (`id_order`),
  CONSTRAINT `order_pijat_ibfk_1` FOREIGN KEY (`id_order`) REFERENCES `order` (`id_order`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `order_pijat`
--

LOCK TABLES `order_pijat` WRITE;
/*!40000 ALTER TABLE `order_pijat` DISABLE KEYS */;
/*!40000 ALTER TABLE `order_pijat` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `order_seat`
--

DROP TABLE IF EXISTS `order_seat`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `order_seat` (
  `id_order` int(10) DEFAULT NULL,
  `seat` varchar(10) DEFAULT NULL,
  `kategori` enum('Dewasa','Anak','Bayi') DEFAULT NULL,
  `nama` varchar(100) DEFAULT NULL,
  `jk` varchar(50) DEFAULT NULL,
  `tgl_berangkat` date DEFAULT NULL,
  KEY `id_order` (`id_order`),
  CONSTRAINT `order_seat_ibfk_1` FOREIGN KEY (`id_order`) REFERENCES `order` (`id_order`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `order_seat`
--

LOCK TABLES `order_seat` WRITE;
/*!40000 ALTER TABLE `order_seat` DISABLE KEYS */;
INSERT INTO `order_seat` VALUES (3,'A1','Dewasa','yunita','Perempuan','2014-11-28');
INSERT INTO `order_seat` VALUES (4,'A1','Dewasa','yunita','Laki-laki','2014-11-29');
INSERT INTO `order_seat` VALUES (5,'A1','Dewasa','nita','Perempuan','2014-11-29');
INSERT INTO `order_seat` VALUES (6,'A1','Dewasa','yunita','Perempuan','2014-12-01');
INSERT INTO `order_seat` VALUES (7,'A1','Dewasa','yunita','Laki-laki','2014-11-30');
INSERT INTO `order_seat` VALUES (8,'A1','Dewasa','yunita','Perempuan','2014-12-01');
INSERT INTO `order_seat` VALUES (8,'A2','Dewasa','nita','Perempuan','2014-12-01');
/*!40000 ALTER TABLE `order_seat` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `polling`
--

DROP TABLE IF EXISTS `polling`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `polling` (
  `id_polling` int(11) NOT NULL AUTO_INCREMENT,
  `pertanyaan` text NOT NULL,
  `jawaban` varchar(100) NOT NULL,
  `jawaban1` varchar(100) NOT NULL,
  `jawaban2` varchar(100) NOT NULL,
  `jawaban3` varchar(100) NOT NULL,
  `jawaban4` varchar(100) NOT NULL,
  `jawaban5` varchar(100) NOT NULL,
  `jawaban6` varchar(100) NOT NULL,
  `jawaban7` varchar(100) NOT NULL,
  `jawaban8` varchar(100) NOT NULL,
  `jawaban9` varchar(100) NOT NULL,
  `jawaban10` varchar(100) NOT NULL,
  PRIMARY KEY (`id_polling`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `polling`
--

LOCK TABLES `polling` WRITE;
/*!40000 ALTER TABLE `polling` DISABLE KEYS */;
INSERT INTO `polling` VALUES (1,'Pada skala 0 -10, seberapa mungkin anda merekomendasikan (merek,layanan,produk) kami kepada orang lain?','0','1','2','3','4','5','6','7','8','9','10');
/*!40000 ALTER TABLE `polling` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `profil`
--

DROP TABLE IF EXISTS `profil`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `profil` (
  `id_profil` int(11) NOT NULL AUTO_INCREMENT,
  `nama` varchar(100) DEFAULT NULL,
  `tgl_lahir` date DEFAULT NULL,
  `alamat` varchar(255) DEFAULT NULL,
  `id_provinsi` varchar(2) CHARACTER SET latin1 DEFAULT NULL,
  `id_kota` varchar(4) CHARACTER SET latin1 DEFAULT NULL,
  `kode_pos` varchar(5) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `hp` varchar(15) DEFAULT NULL,
  `tgl_input` datetime DEFAULT NULL,
  PRIMARY KEY (`id_profil`),
  KEY `id_provinsi` (`id_provinsi`),
  KEY `id_kota` (`id_kota`),
  CONSTRAINT `profil_ibfk_1` FOREIGN KEY (`id_kota`) REFERENCES `kota` (`id_kota`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `profil_ibfk_2` FOREIGN KEY (`id_provinsi`) REFERENCES `provinsi` (`id_provinsi`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `profil`
--

LOCK TABLES `profil` WRITE;
/*!40000 ALTER TABLE `profil` DISABLE KEYS */;
INSERT INTO `profil` VALUES (1,'Yunita','1992-06-22','JL. Bungaran II','16','110','30252','yunita_rainbow@yahoo.com','085267730918','2014-11-26 06:54:50');
INSERT INTO `profil` VALUES (3,'eben hezer','1994-05-11','efqefqef','14','80','28772','ebenhezerhasugian@gmail.com','08526259469','2016-04-12 15:02:22');
INSERT INTO `profil` VALUES (4,'eben hezer','1995-04-18','fwefwefwef','51','275','98695','ebenjosh@gmail.com','08560987654','2016-08-11 10:45:43');
INSERT INTO `profil` VALUES (5,'coba','1994-09-06','Indralaya','16','108','30662','coba@gmail.com','0711580110','2016-09-06 11:14:52');
INSERT INTO `profil` VALUES (6,'tes','2000-09-06','tes','12','24','322','tes@gmail.com','42342','2016-09-06 11:44:58');
INSERT INTO `profil` VALUES (7,'tes','2000-09-06','tes','11','1','21','tes@gmail.com','2','2016-09-06 11:49:01');
INSERT INTO `profil` VALUES (8,'tes','2000-09-06','tes','11','1','21','tes@gmail.com','2','2016-09-06 11:50:15');
INSERT INTO `profil` VALUES (9,'tes','2000-09-06','tes','11','1','21','tes@gmail.com','2','2016-09-06 11:51:42');
INSERT INTO `profil` VALUES (10,'taasda','2000-09-06','af','11','12','534','halo@gmail.com','543','2016-09-06 11:52:57');
INSERT INTO `profil` VALUES (11,'cek','2000-09-06','cek','14','78','36512','cek@gmail.com','56321','2016-09-06 11:54:26');
INSERT INTO `profil` VALUES (12,'oke','2000-09-06','oke','52','286','12345','oke@gmail.com','98765','2016-09-06 11:56:50');
INSERT INTO `profil` VALUES (13,'sakit','2000-09-06','sakit','51','274','8765','sakit@gmail.com','7654','2016-09-06 12:03:58');
INSERT INTO `profil` VALUES (14,'admin',NULL,NULL,NULL,NULL,NULL,'admin',NULL,NULL);
INSERT INTO `profil` VALUES (15,NULL,NULL,NULL,NULL,NULL,NULL,'manager',NULL,NULL);
/*!40000 ALTER TABLE `profil` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `promo`
--

DROP TABLE IF EXISTS `promo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `promo` (
  `id_promo` int(11) NOT NULL AUTO_INCREMENT,
  `titel` varchar(255) DEFAULT NULL,
  `deskripsi` text,
  `img` varchar(100) DEFAULT NULL,
  `aktif` enum('Y','N') DEFAULT 'Y',
  PRIMARY KEY (`id_promo`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `promo`
--

LOCK TABLES `promo` WRITE;
/*!40000 ALTER TABLE `promo` DISABLE KEYS */;
INSERT INTO `promo` VALUES (1,'Junio JRBL','Tabungan BRI','akapal.jpg','Y');
INSERT INTO `promo` VALUES (2,'Jobs ','Lowongan kerja.','2promo.jpg','Y');
INSERT INTO `promo` VALUES (3,'Go Riau','Gerakan Riau Berteknologi','promo_3.jpg','Y');
INSERT INTO `promo` VALUES (4,'get fast...','Gerak Jalan dalam Rangkat HUT Riau Post','promo_4.jpg','Y');
INSERT INTO `promo` VALUES (5,'Gerak Jalan Regu','Daftarkan segera team anda pada even ini','promo_5.jpg','Y');
INSERT INTO `promo` VALUES (6,'HSBL-Riau-Pos','Pertandingan Bola Basket ','promo_8.jpg','Y');
INSERT INTO `promo` VALUES (7,'Pariwisata Riau','Dinas Pariwisata dan Ekonomi Kreatif Provinsi Riau terus menggeliatkan promosi pariwisata lokal.','promo_4.jpg','Y');
INSERT INTO `promo` VALUES (8,'Labersa-Riau Pos','Karena tanpa media sebuah bisnis tentunya akan cukup sulit dikenal oleh masyarakat luas terutama konsumen yang akan menjadi pasar bisnis itu sendiri. ','promo_8.jpg','Y');
/*!40000 ALTER TABLE `promo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `provinsi`
--

DROP TABLE IF EXISTS `provinsi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `provinsi` (
  `id_provinsi` varchar(2) NOT NULL DEFAULT '',
  `nama` varchar(40) NOT NULL,
  PRIMARY KEY (`id_provinsi`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `provinsi`
--

LOCK TABLES `provinsi` WRITE;
/*!40000 ALTER TABLE `provinsi` DISABLE KEYS */;
INSERT INTO `provinsi` VALUES ('11','ACEH');
INSERT INTO `provinsi` VALUES ('12','SUMATERA UTARA');
INSERT INTO `provinsi` VALUES ('13','SUMATERA BARAT');
INSERT INTO `provinsi` VALUES ('14','RIAU');
INSERT INTO `provinsi` VALUES ('15','JAMBI');
INSERT INTO `provinsi` VALUES ('16','SUMATERA SELATAN');
INSERT INTO `provinsi` VALUES ('17','BENGKULU');
INSERT INTO `provinsi` VALUES ('18','LAMPUNG');
INSERT INTO `provinsi` VALUES ('19','KEPULAUAN BANGKA BELITUNG');
INSERT INTO `provinsi` VALUES ('21','KEPULAUAN RIAU');
INSERT INTO `provinsi` VALUES ('31','DKI JAKARTA');
INSERT INTO `provinsi` VALUES ('32','JAWA BARAT');
INSERT INTO `provinsi` VALUES ('33','JAWA TENGAH');
INSERT INTO `provinsi` VALUES ('34','DI YOGYAKARTA');
INSERT INTO `provinsi` VALUES ('35','JAWA TIMUR');
INSERT INTO `provinsi` VALUES ('36','BANTEN');
INSERT INTO `provinsi` VALUES ('51','BALI');
INSERT INTO `provinsi` VALUES ('52','NUSA TENGGARA BARAT');
INSERT INTO `provinsi` VALUES ('53','NUSA TENGGARA TIMUR');
INSERT INTO `provinsi` VALUES ('61','KALIMANTAN BARAT');
INSERT INTO `provinsi` VALUES ('62','KALIMANTAN TENGAH');
INSERT INTO `provinsi` VALUES ('63','KALIMANTAN SELATAN');
INSERT INTO `provinsi` VALUES ('64','KALIMANTAN TIMUR');
INSERT INTO `provinsi` VALUES ('71','SULAWESI UTARA');
INSERT INTO `provinsi` VALUES ('72','SULAWESI TENGAH');
INSERT INTO `provinsi` VALUES ('73','SULAWESI SELATAN');
INSERT INTO `provinsi` VALUES ('74','SULAWESI TENGGARA');
INSERT INTO `provinsi` VALUES ('75','GORONTALO');
INSERT INTO `provinsi` VALUES ('76','SULAWESI BARAT');
INSERT INTO `provinsi` VALUES ('81','MALUKU');
INSERT INTO `provinsi` VALUES ('82','MALUKU UTARA');
INSERT INTO `provinsi` VALUES ('91','PAPUA BARAT');
INSERT INTO `provinsi` VALUES ('94','PAPUA');
/*!40000 ALTER TABLE `provinsi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `seat`
--

DROP TABLE IF EXISTS `seat`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `seat` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `kelas` enum('VIP','EKSEKUTIF A','EKSEKUTIF B','EKSEKUTIF C','EKONOMI') DEFAULT NULL,
  `seat` varchar(5) DEFAULT NULL,
  `tipe` enum('Y','N') DEFAULT 'Y',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=856 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `seat`
--

LOCK TABLES `seat` WRITE;
/*!40000 ALTER TABLE `seat` DISABLE KEYS */;
INSERT INTO `seat` VALUES (1,'VIP','A1','Y');
INSERT INTO `seat` VALUES (2,'VIP','A2','Y');
INSERT INTO `seat` VALUES (3,'VIP','A3','Y');
INSERT INTO `seat` VALUES (4,'VIP','N','N');
INSERT INTO `seat` VALUES (5,'VIP','A4','Y');
INSERT INTO `seat` VALUES (6,'VIP','A5','Y');
INSERT INTO `seat` VALUES (7,'VIP','A6','Y');
INSERT INTO `seat` VALUES (8,'VIP','B1','Y');
INSERT INTO `seat` VALUES (9,'VIP','B2','Y');
INSERT INTO `seat` VALUES (10,'VIP','B3','Y');
INSERT INTO `seat` VALUES (11,'VIP','N','N');
INSERT INTO `seat` VALUES (12,'VIP','B4','Y');
INSERT INTO `seat` VALUES (13,'VIP','B5','Y');
INSERT INTO `seat` VALUES (14,'VIP','B6','Y');
INSERT INTO `seat` VALUES (15,'VIP','C1','Y');
INSERT INTO `seat` VALUES (16,'VIP','C2','Y');
INSERT INTO `seat` VALUES (17,'VIP','C3','Y');
INSERT INTO `seat` VALUES (18,'VIP','N','N');
INSERT INTO `seat` VALUES (19,'VIP','C4','Y');
INSERT INTO `seat` VALUES (20,'VIP','C5','Y');
INSERT INTO `seat` VALUES (21,'VIP','C6','Y');
INSERT INTO `seat` VALUES (22,'VIP','D1','Y');
INSERT INTO `seat` VALUES (23,'VIP','D2','Y');
INSERT INTO `seat` VALUES (24,'VIP','D3','Y');
INSERT INTO `seat` VALUES (25,'VIP','N','N');
INSERT INTO `seat` VALUES (26,'VIP','D4','Y');
INSERT INTO `seat` VALUES (27,'VIP','D5','Y');
INSERT INTO `seat` VALUES (28,'VIP','D6','Y');
INSERT INTO `seat` VALUES (29,'VIP','E1','Y');
INSERT INTO `seat` VALUES (30,'VIP','E2','Y');
INSERT INTO `seat` VALUES (31,'VIP','E3','Y');
INSERT INTO `seat` VALUES (32,'VIP','N','N');
INSERT INTO `seat` VALUES (33,'VIP','E4','Y');
INSERT INTO `seat` VALUES (34,'VIP','E5','Y');
INSERT INTO `seat` VALUES (35,'VIP','E6','Y');
INSERT INTO `seat` VALUES (36,'VIP','F1','Y');
INSERT INTO `seat` VALUES (37,'VIP','F2','Y');
INSERT INTO `seat` VALUES (38,'VIP','F3','Y');
INSERT INTO `seat` VALUES (39,'VIP','N','N');
INSERT INTO `seat` VALUES (40,'VIP','F4','Y');
INSERT INTO `seat` VALUES (41,'VIP','F5','Y');
INSERT INTO `seat` VALUES (42,'VIP','F6','Y');
INSERT INTO `seat` VALUES (43,'VIP','G1','Y');
INSERT INTO `seat` VALUES (44,'VIP','G2','Y');
INSERT INTO `seat` VALUES (45,'VIP','G3','Y');
INSERT INTO `seat` VALUES (46,'VIP','N','N');
INSERT INTO `seat` VALUES (47,'VIP','G4','Y');
INSERT INTO `seat` VALUES (48,'VIP','G5','Y');
INSERT INTO `seat` VALUES (49,'VIP','G6','Y');
INSERT INTO `seat` VALUES (528,'EKONOMI','N','N');
INSERT INTO `seat` VALUES (527,'EKONOMI','B3','Y');
INSERT INTO `seat` VALUES (526,'EKONOMI','B2','Y');
INSERT INTO `seat` VALUES (525,'EKONOMI','B1','Y');
INSERT INTO `seat` VALUES (524,'EKONOMI','A6','Y');
INSERT INTO `seat` VALUES (523,'EKONOMI','A5','Y');
INSERT INTO `seat` VALUES (522,'EKONOMI','A4','Y');
INSERT INTO `seat` VALUES (521,'EKONOMI','N','N');
INSERT INTO `seat` VALUES (520,'EKONOMI','A3','Y');
INSERT INTO `seat` VALUES (519,'EKONOMI','A2','Y');
INSERT INTO `seat` VALUES (518,'EKONOMI','A1','Y');
INSERT INTO `seat` VALUES (529,'EKONOMI','B4','Y');
INSERT INTO `seat` VALUES (530,'EKONOMI','B5','Y');
INSERT INTO `seat` VALUES (531,'EKONOMI','B6','Y');
INSERT INTO `seat` VALUES (532,'EKONOMI','C1','Y');
INSERT INTO `seat` VALUES (533,'EKONOMI','C2','Y');
INSERT INTO `seat` VALUES (534,'EKONOMI','C3','Y');
INSERT INTO `seat` VALUES (535,'EKONOMI','N','N');
INSERT INTO `seat` VALUES (536,'EKONOMI','C4','Y');
INSERT INTO `seat` VALUES (537,'EKONOMI','C5','Y');
INSERT INTO `seat` VALUES (538,'EKONOMI','C6','Y');
INSERT INTO `seat` VALUES (539,'EKONOMI','D1','Y');
INSERT INTO `seat` VALUES (540,'EKONOMI','D2','Y');
INSERT INTO `seat` VALUES (541,'EKONOMI','D3','Y');
INSERT INTO `seat` VALUES (542,'EKONOMI','N','N');
INSERT INTO `seat` VALUES (543,'EKONOMI','D4','Y');
INSERT INTO `seat` VALUES (544,'EKONOMI','D5','Y');
INSERT INTO `seat` VALUES (545,'EKONOMI','D6','Y');
INSERT INTO `seat` VALUES (546,'EKONOMI','E1','Y');
INSERT INTO `seat` VALUES (547,'EKONOMI','E2','Y');
INSERT INTO `seat` VALUES (548,'EKONOMI','E3','Y');
INSERT INTO `seat` VALUES (549,'EKONOMI','N','N');
INSERT INTO `seat` VALUES (550,'EKONOMI','E4','Y');
INSERT INTO `seat` VALUES (551,'EKONOMI','E5','Y');
INSERT INTO `seat` VALUES (552,'EKONOMI','E6','Y');
INSERT INTO `seat` VALUES (553,'EKONOMI','F1','Y');
INSERT INTO `seat` VALUES (554,'EKONOMI','F2','Y');
INSERT INTO `seat` VALUES (555,'EKONOMI','F3','Y');
INSERT INTO `seat` VALUES (556,'EKONOMI','N','N');
INSERT INTO `seat` VALUES (557,'EKONOMI','F4','Y');
INSERT INTO `seat` VALUES (558,'EKONOMI','F5','Y');
INSERT INTO `seat` VALUES (559,'EKONOMI','F6','Y');
INSERT INTO `seat` VALUES (560,'EKONOMI','G1','Y');
INSERT INTO `seat` VALUES (561,'EKONOMI','G2','Y');
INSERT INTO `seat` VALUES (562,'EKONOMI','G3','Y');
INSERT INTO `seat` VALUES (563,'EKONOMI','N','N');
INSERT INTO `seat` VALUES (564,'EKONOMI','G4','Y');
INSERT INTO `seat` VALUES (565,'EKONOMI','G5','Y');
INSERT INTO `seat` VALUES (566,'EKONOMI','G6','Y');
INSERT INTO `seat` VALUES (567,'EKONOMI','H1','Y');
INSERT INTO `seat` VALUES (568,'EKONOMI','H2','Y');
INSERT INTO `seat` VALUES (569,'EKONOMI','H3','Y');
INSERT INTO `seat` VALUES (570,'EKONOMI','N','N');
INSERT INTO `seat` VALUES (571,'EKONOMI','H4','Y');
INSERT INTO `seat` VALUES (572,'EKONOMI','H5','Y');
INSERT INTO `seat` VALUES (573,'EKONOMI','H6','Y');
INSERT INTO `seat` VALUES (574,'EKONOMI','I1','Y');
INSERT INTO `seat` VALUES (575,'EKONOMI','I2','Y');
INSERT INTO `seat` VALUES (576,'EKONOMI','I3','Y');
INSERT INTO `seat` VALUES (577,'EKONOMI','N','N');
INSERT INTO `seat` VALUES (578,'EKONOMI','I4','Y');
INSERT INTO `seat` VALUES (579,'EKONOMI','I5','Y');
INSERT INTO `seat` VALUES (580,'EKONOMI','I6','Y');
INSERT INTO `seat` VALUES (581,'EKONOMI','N','N');
INSERT INTO `seat` VALUES (582,'EKONOMI','N','N');
INSERT INTO `seat` VALUES (583,'EKONOMI','N','N');
INSERT INTO `seat` VALUES (584,'EKONOMI','N','N');
INSERT INTO `seat` VALUES (585,'EKONOMI','J1','Y');
INSERT INTO `seat` VALUES (586,'EKONOMI','N','N');
INSERT INTO `seat` VALUES (587,'EKONOMI','N','N');
INSERT INTO `seat` VALUES (588,'EKSEKUTIF A','N','N');
INSERT INTO `seat` VALUES (589,'EKSEKUTIF A','N','N');
INSERT INTO `seat` VALUES (590,'EKSEKUTIF A','A1 A','Y');
INSERT INTO `seat` VALUES (591,'EKSEKUTIF A','A2 A','Y');
INSERT INTO `seat` VALUES (592,'EKSEKUTIF A','N','N');
INSERT INTO `seat` VALUES (593,'EKSEKUTIF A','A3 A','Y');
INSERT INTO `seat` VALUES (594,'EKSEKUTIF A','A4 A','Y');
INSERT INTO `seat` VALUES (595,'EKSEKUTIF A','N','N');
INSERT INTO `seat` VALUES (596,'EKSEKUTIF A','N','N');
INSERT INTO `seat` VALUES (597,'EKSEKUTIF A','N','N');
INSERT INTO `seat` VALUES (598,'EKSEKUTIF A','B1 A','Y');
INSERT INTO `seat` VALUES (599,'EKSEKUTIF A','B2 A','Y');
INSERT INTO `seat` VALUES (600,'EKSEKUTIF A','B3 A','Y');
INSERT INTO `seat` VALUES (601,'EKSEKUTIF A','N','N');
INSERT INTO `seat` VALUES (602,'EKSEKUTIF A','B4 A','Y');
INSERT INTO `seat` VALUES (603,'EKSEKUTIF A','B5 A','Y');
INSERT INTO `seat` VALUES (604,'EKSEKUTIF A','B6 A','Y');
INSERT INTO `seat` VALUES (605,'EKSEKUTIF A','N','N');
INSERT INTO `seat` VALUES (606,'EKSEKUTIF A','C1 A','Y');
INSERT INTO `seat` VALUES (607,'EKSEKUTIF A','C2 A','Y');
INSERT INTO `seat` VALUES (608,'EKSEKUTIF A','C3 A','Y');
INSERT INTO `seat` VALUES (609,'EKSEKUTIF A','C4 A','Y');
INSERT INTO `seat` VALUES (610,'EKSEKUTIF A','N','N');
INSERT INTO `seat` VALUES (611,'EKSEKUTIF A','C5 A','Y');
INSERT INTO `seat` VALUES (612,'EKSEKUTIF A','C6 A','Y');
INSERT INTO `seat` VALUES (613,'EKSEKUTIF A','C7 A','Y');
INSERT INTO `seat` VALUES (614,'EKSEKUTIF A','C8 A','Y');
INSERT INTO `seat` VALUES (615,'EKSEKUTIF A','D1 A','Y');
INSERT INTO `seat` VALUES (616,'EKSEKUTIF A','D2 A','Y');
INSERT INTO `seat` VALUES (617,'EKSEKUTIF A','D3 A','Y');
INSERT INTO `seat` VALUES (618,'EKSEKUTIF A','D4 A','Y');
INSERT INTO `seat` VALUES (619,'EKSEKUTIF A','N','N');
INSERT INTO `seat` VALUES (620,'EKSEKUTIF A','D5 A','Y');
INSERT INTO `seat` VALUES (621,'EKSEKUTIF A','D6 A','Y');
INSERT INTO `seat` VALUES (622,'EKSEKUTIF A','D7 A','Y');
INSERT INTO `seat` VALUES (623,'EKSEKUTIF A','D8 A','Y');
INSERT INTO `seat` VALUES (624,'EKSEKUTIF A','E1 A','Y');
INSERT INTO `seat` VALUES (625,'EKSEKUTIF A','E2 A','Y');
INSERT INTO `seat` VALUES (626,'EKSEKUTIF A','E3 A','Y');
INSERT INTO `seat` VALUES (627,'EKSEKUTIF A','E4 A','Y');
INSERT INTO `seat` VALUES (628,'EKSEKUTIF A','N','N');
INSERT INTO `seat` VALUES (629,'EKSEKUTIF A','E5 A','Y');
INSERT INTO `seat` VALUES (630,'EKSEKUTIF A','E6 A','Y');
INSERT INTO `seat` VALUES (631,'EKSEKUTIF A','E7 A','Y');
INSERT INTO `seat` VALUES (632,'EKSEKUTIF A','E8 A','Y');
INSERT INTO `seat` VALUES (633,'EKSEKUTIF A','F1 A','Y');
INSERT INTO `seat` VALUES (634,'EKSEKUTIF A','F2 A','Y');
INSERT INTO `seat` VALUES (635,'EKSEKUTIF A','F3 A','Y');
INSERT INTO `seat` VALUES (636,'EKSEKUTIF A','F4 A','Y');
INSERT INTO `seat` VALUES (637,'EKSEKUTIF A','N','N');
INSERT INTO `seat` VALUES (638,'EKSEKUTIF A','F5 A','Y');
INSERT INTO `seat` VALUES (639,'EKSEKUTIF A','F6 A','Y');
INSERT INTO `seat` VALUES (640,'EKSEKUTIF A','F7 A','Y');
INSERT INTO `seat` VALUES (641,'EKSEKUTIF A','F8 A','Y');
INSERT INTO `seat` VALUES (642,'EKSEKUTIF A','G1 A','Y');
INSERT INTO `seat` VALUES (643,'EKSEKUTIF A','G2 A','Y');
INSERT INTO `seat` VALUES (644,'EKSEKUTIF A','G3 A','Y');
INSERT INTO `seat` VALUES (645,'EKSEKUTIF A','G4 A','Y');
INSERT INTO `seat` VALUES (646,'EKSEKUTIF A','N','N');
INSERT INTO `seat` VALUES (647,'EKSEKUTIF A','G5 A','Y');
INSERT INTO `seat` VALUES (648,'EKSEKUTIF A','G6 A','Y');
INSERT INTO `seat` VALUES (649,'EKSEKUTIF A','G7 A','Y');
INSERT INTO `seat` VALUES (650,'EKSEKUTIF A','G8 A','Y');
INSERT INTO `seat` VALUES (651,'EKSEKUTIF A','H1 A','Y');
INSERT INTO `seat` VALUES (652,'EKSEKUTIF A','H2 A','Y');
INSERT INTO `seat` VALUES (653,'EKSEKUTIF A','H3 A','Y');
INSERT INTO `seat` VALUES (654,'EKSEKUTIF A','H4 A','Y');
INSERT INTO `seat` VALUES (655,'EKSEKUTIF A','N','N');
INSERT INTO `seat` VALUES (656,'EKSEKUTIF A','H5 A','Y');
INSERT INTO `seat` VALUES (657,'EKSEKUTIF A','H6 A','Y');
INSERT INTO `seat` VALUES (658,'EKSEKUTIF A','H7 A','Y');
INSERT INTO `seat` VALUES (659,'EKSEKUTIF A','H8 A','Y');
INSERT INTO `seat` VALUES (660,'EKSEKUTIF A','I1 A','Y');
INSERT INTO `seat` VALUES (661,'EKSEKUTIF A','I2 A','Y');
INSERT INTO `seat` VALUES (662,'EKSEKUTIF A','I3 A','Y');
INSERT INTO `seat` VALUES (663,'EKSEKUTIF A','I4 A','Y');
INSERT INTO `seat` VALUES (664,'EKSEKUTIF A','N','N');
INSERT INTO `seat` VALUES (665,'EKSEKUTIF A','I5 A','Y');
INSERT INTO `seat` VALUES (666,'EKSEKUTIF A','I6 A','Y');
INSERT INTO `seat` VALUES (667,'EKSEKUTIF A','I7 A','Y');
INSERT INTO `seat` VALUES (668,'EKSEKUTIF A','I8 A','Y');
INSERT INTO `seat` VALUES (669,'EKSEKUTIF B','A1 B','Y');
INSERT INTO `seat` VALUES (670,'EKSEKUTIF B','A2 B','Y');
INSERT INTO `seat` VALUES (671,'EKSEKUTIF B','A3 B','Y');
INSERT INTO `seat` VALUES (672,'EKSEKUTIF B','A4 B','Y');
INSERT INTO `seat` VALUES (673,'EKSEKUTIF B','A5 B','Y');
INSERT INTO `seat` VALUES (674,'EKSEKUTIF B','N','N');
INSERT INTO `seat` VALUES (675,'EKSEKUTIF B','A6 B','Y');
INSERT INTO `seat` VALUES (676,'EKSEKUTIF B','A7 B','Y');
INSERT INTO `seat` VALUES (677,'EKSEKUTIF B','A8 B','Y');
INSERT INTO `seat` VALUES (678,'EKSEKUTIF B','A9 B','Y');
INSERT INTO `seat` VALUES (679,'EKSEKUTIF B','A10 B','Y');
INSERT INTO `seat` VALUES (680,'EKSEKUTIF B','B1 B','Y');
INSERT INTO `seat` VALUES (681,'EKSEKUTIF B','B2 B','Y');
INSERT INTO `seat` VALUES (682,'EKSEKUTIF B','B3 B','Y');
INSERT INTO `seat` VALUES (683,'EKSEKUTIF B','B4 B','Y');
INSERT INTO `seat` VALUES (684,'EKSEKUTIF B','B5 B','Y');
INSERT INTO `seat` VALUES (685,'EKSEKUTIF B','N','N');
INSERT INTO `seat` VALUES (686,'EKSEKUTIF B','B6 B','Y');
INSERT INTO `seat` VALUES (687,'EKSEKUTIF B','B7 B','Y');
INSERT INTO `seat` VALUES (688,'EKSEKUTIF B','B8 B','Y');
INSERT INTO `seat` VALUES (689,'EKSEKUTIF B','B9 B','Y');
INSERT INTO `seat` VALUES (690,'EKSEKUTIF B','B10 B','Y');
INSERT INTO `seat` VALUES (691,'EKSEKUTIF B','C1 B','Y');
INSERT INTO `seat` VALUES (692,'EKSEKUTIF B','C2 B','Y');
INSERT INTO `seat` VALUES (693,'EKSEKUTIF B','C3 B','Y');
INSERT INTO `seat` VALUES (694,'EKSEKUTIF B','C4 B','Y');
INSERT INTO `seat` VALUES (695,'EKSEKUTIF B','C5 B','Y');
INSERT INTO `seat` VALUES (696,'EKSEKUTIF B','N','N');
INSERT INTO `seat` VALUES (697,'EKSEKUTIF B','C6 B','Y');
INSERT INTO `seat` VALUES (698,'EKSEKUTIF B','C7 B','Y');
INSERT INTO `seat` VALUES (699,'EKSEKUTIF B','C8 B','Y');
INSERT INTO `seat` VALUES (700,'EKSEKUTIF B','C9 B','Y');
INSERT INTO `seat` VALUES (701,'EKSEKUTIF B','C10 B','Y');
INSERT INTO `seat` VALUES (702,'EKSEKUTIF B','D1 B','Y');
INSERT INTO `seat` VALUES (703,'EKSEKUTIF B','D2 B','Y');
INSERT INTO `seat` VALUES (704,'EKSEKUTIF B','D3 B','Y');
INSERT INTO `seat` VALUES (705,'EKSEKUTIF B','D4 B','Y');
INSERT INTO `seat` VALUES (706,'EKSEKUTIF B','D5 B','Y');
INSERT INTO `seat` VALUES (707,'EKSEKUTIF B','N','N');
INSERT INTO `seat` VALUES (708,'EKSEKUTIF B','D6 B','Y');
INSERT INTO `seat` VALUES (709,'EKSEKUTIF B','D7 B','Y');
INSERT INTO `seat` VALUES (710,'EKSEKUTIF B','D8 B','Y');
INSERT INTO `seat` VALUES (711,'EKSEKUTIF B','D9 B','Y');
INSERT INTO `seat` VALUES (712,'EKSEKUTIF B','D10 B','Y');
INSERT INTO `seat` VALUES (713,'EKSEKUTIF B','E1 B','Y');
INSERT INTO `seat` VALUES (714,'EKSEKUTIF B','E2 B','Y');
INSERT INTO `seat` VALUES (715,'EKSEKUTIF B','E3 B','Y');
INSERT INTO `seat` VALUES (716,'EKSEKUTIF B','E4 B','Y');
INSERT INTO `seat` VALUES (717,'EKSEKUTIF B','E5 B','Y');
INSERT INTO `seat` VALUES (718,'EKSEKUTIF B','N','N');
INSERT INTO `seat` VALUES (719,'EKSEKUTIF B','E6 B','Y');
INSERT INTO `seat` VALUES (720,'EKSEKUTIF B','E7 B','Y');
INSERT INTO `seat` VALUES (721,'EKSEKUTIF B','E8 B','Y');
INSERT INTO `seat` VALUES (722,'EKSEKUTIF B','E9 B','Y');
INSERT INTO `seat` VALUES (723,'EKSEKUTIF B','E10 B','Y');
INSERT INTO `seat` VALUES (724,'EKSEKUTIF B','F1 B','Y');
INSERT INTO `seat` VALUES (725,'EKSEKUTIF B','F2 B','Y');
INSERT INTO `seat` VALUES (726,'EKSEKUTIF B','F3 B','Y');
INSERT INTO `seat` VALUES (727,'EKSEKUTIF B','F4 B','Y');
INSERT INTO `seat` VALUES (728,'EKSEKUTIF B','F5 B','Y');
INSERT INTO `seat` VALUES (729,'EKSEKUTIF B','N','N');
INSERT INTO `seat` VALUES (730,'EKSEKUTIF B','F6 B','Y');
INSERT INTO `seat` VALUES (731,'EKSEKUTIF B','F7 B','Y');
INSERT INTO `seat` VALUES (732,'EKSEKUTIF B','F8 B','Y');
INSERT INTO `seat` VALUES (733,'EKSEKUTIF B','F9 B','Y');
INSERT INTO `seat` VALUES (734,'EKSEKUTIF B','F10 B','Y');
INSERT INTO `seat` VALUES (735,'EKSEKUTIF B','G1 B','Y');
INSERT INTO `seat` VALUES (736,'EKSEKUTIF B','G2 B','Y');
INSERT INTO `seat` VALUES (737,'EKSEKUTIF B','G3 B','Y');
INSERT INTO `seat` VALUES (738,'EKSEKUTIF B','G4 B','Y');
INSERT INTO `seat` VALUES (739,'EKSEKUTIF B','G5 B','Y');
INSERT INTO `seat` VALUES (740,'EKSEKUTIF B','N','N');
INSERT INTO `seat` VALUES (741,'EKSEKUTIF B','G6 B','Y');
INSERT INTO `seat` VALUES (742,'EKSEKUTIF B','G7 B','Y');
INSERT INTO `seat` VALUES (743,'EKSEKUTIF B','G8 B','Y');
INSERT INTO `seat` VALUES (744,'EKSEKUTIF B','G9 B','Y');
INSERT INTO `seat` VALUES (745,'EKSEKUTIF B','G10 B','Y');
INSERT INTO `seat` VALUES (746,'EKSEKUTIF B','H1 B','Y');
INSERT INTO `seat` VALUES (747,'EKSEKUTIF B','H2 B','Y');
INSERT INTO `seat` VALUES (748,'EKSEKUTIF B','H3 B','Y');
INSERT INTO `seat` VALUES (749,'EKSEKUTIF B','H4 B','Y');
INSERT INTO `seat` VALUES (750,'EKSEKUTIF B','H5 B','Y');
INSERT INTO `seat` VALUES (751,'EKSEKUTIF B','N','N');
INSERT INTO `seat` VALUES (752,'EKSEKUTIF B','H6 B','Y');
INSERT INTO `seat` VALUES (753,'EKSEKUTIF B','H7 B','Y');
INSERT INTO `seat` VALUES (754,'EKSEKUTIF B','H8 B','Y');
INSERT INTO `seat` VALUES (755,'EKSEKUTIF B','H9 B','Y');
INSERT INTO `seat` VALUES (756,'EKSEKUTIF B','H10 B','Y');
INSERT INTO `seat` VALUES (757,'EKSEKUTIF C','A1 C','Y');
INSERT INTO `seat` VALUES (758,'EKSEKUTIF C','A2 C','Y');
INSERT INTO `seat` VALUES (759,'EKSEKUTIF C','N','N');
INSERT INTO `seat` VALUES (760,'EKSEKUTIF C','A3 C','Y');
INSERT INTO `seat` VALUES (761,'EKSEKUTIF C','A4 C','Y');
INSERT INTO `seat` VALUES (762,'EKSEKUTIF C','A5 C','Y');
INSERT INTO `seat` VALUES (763,'EKSEKUTIF C','A6 C','Y');
INSERT INTO `seat` VALUES (764,'EKSEKUTIF C','A7 C','Y');
INSERT INTO `seat` VALUES (765,'EKSEKUTIF C','N','N');
INSERT INTO `seat` VALUES (766,'EKSEKUTIF C','A8 C','Y');
INSERT INTO `seat` VALUES (767,'EKSEKUTIF C','A9 C','Y');
INSERT INTO `seat` VALUES (768,'EKSEKUTIF C','B1 C','Y');
INSERT INTO `seat` VALUES (769,'EKSEKUTIF C','B2 C','Y');
INSERT INTO `seat` VALUES (770,'EKSEKUTIF C','N','N');
INSERT INTO `seat` VALUES (771,'EKSEKUTIF C','B3 C','Y');
INSERT INTO `seat` VALUES (772,'EKSEKUTIF C','B4 C','Y');
INSERT INTO `seat` VALUES (773,'EKSEKUTIF C','B5 C','Y');
INSERT INTO `seat` VALUES (774,'EKSEKUTIF C','B6 C','Y');
INSERT INTO `seat` VALUES (775,'EKSEKUTIF C','B7 C','Y');
INSERT INTO `seat` VALUES (776,'EKSEKUTIF C','N','N');
INSERT INTO `seat` VALUES (777,'EKSEKUTIF C','B8 C','Y');
INSERT INTO `seat` VALUES (778,'EKSEKUTIF C','B9 C','Y');
INSERT INTO `seat` VALUES (779,'EKSEKUTIF C','C1 C','Y');
INSERT INTO `seat` VALUES (780,'EKSEKUTIF C','C2 C','Y');
INSERT INTO `seat` VALUES (781,'EKSEKUTIF C','N','N');
INSERT INTO `seat` VALUES (782,'EKSEKUTIF C','C3 C','Y');
INSERT INTO `seat` VALUES (783,'EKSEKUTIF C','C4 C','Y');
INSERT INTO `seat` VALUES (784,'EKSEKUTIF C','C5 C','Y');
INSERT INTO `seat` VALUES (785,'EKSEKUTIF C','C6 C','Y');
INSERT INTO `seat` VALUES (786,'EKSEKUTIF C','C7 C','Y');
INSERT INTO `seat` VALUES (787,'EKSEKUTIF C','N','N');
INSERT INTO `seat` VALUES (788,'EKSEKUTIF C','C8 C','Y');
INSERT INTO `seat` VALUES (789,'EKSEKUTIF C','C9 C','Y');
INSERT INTO `seat` VALUES (790,'EKSEKUTIF C','D1 C','Y');
INSERT INTO `seat` VALUES (791,'EKSEKUTIF C','D2 C','Y');
INSERT INTO `seat` VALUES (792,'EKSEKUTIF C','N','N');
INSERT INTO `seat` VALUES (793,'EKSEKUTIF C','D3 C','Y');
INSERT INTO `seat` VALUES (794,'EKSEKUTIF C','D4 C','Y');
INSERT INTO `seat` VALUES (795,'EKSEKUTIF C','D5 C','Y');
INSERT INTO `seat` VALUES (796,'EKSEKUTIF C','D6 C','Y');
INSERT INTO `seat` VALUES (797,'EKSEKUTIF C','D7 C','Y');
INSERT INTO `seat` VALUES (798,'EKSEKUTIF C','N','N');
INSERT INTO `seat` VALUES (799,'EKSEKUTIF C','D8 C','Y');
INSERT INTO `seat` VALUES (800,'EKSEKUTIF C','D9 C','Y');
INSERT INTO `seat` VALUES (801,'EKSEKUTIF C','E1 C','Y');
INSERT INTO `seat` VALUES (802,'EKSEKUTIF C','E2 C','Y');
INSERT INTO `seat` VALUES (803,'EKSEKUTIF C','N','N');
INSERT INTO `seat` VALUES (804,'EKSEKUTIF C','E3 C','Y');
INSERT INTO `seat` VALUES (805,'EKSEKUTIF C','E4 C','Y');
INSERT INTO `seat` VALUES (806,'EKSEKUTIF C','E5 C','Y');
INSERT INTO `seat` VALUES (807,'EKSEKUTIF C','E6 C','Y');
INSERT INTO `seat` VALUES (808,'EKSEKUTIF C','E7 C','Y');
INSERT INTO `seat` VALUES (809,'EKSEKUTIF C','N','N');
INSERT INTO `seat` VALUES (810,'EKSEKUTIF C','E8 C','Y');
INSERT INTO `seat` VALUES (811,'EKSEKUTIF C','E9 C','Y');
INSERT INTO `seat` VALUES (812,'EKSEKUTIF C','F1 C','Y');
INSERT INTO `seat` VALUES (813,'EKSEKUTIF C','F2 C','Y');
INSERT INTO `seat` VALUES (814,'EKSEKUTIF C','N','N');
INSERT INTO `seat` VALUES (815,'EKSEKUTIF C','F3 C','Y');
INSERT INTO `seat` VALUES (816,'EKSEKUTIF C','F4 C','Y');
INSERT INTO `seat` VALUES (817,'EKSEKUTIF C','F5 C','Y');
INSERT INTO `seat` VALUES (818,'EKSEKUTIF C','F6 C','Y');
INSERT INTO `seat` VALUES (819,'EKSEKUTIF C','F7 C','Y');
INSERT INTO `seat` VALUES (820,'EKSEKUTIF C','N','N');
INSERT INTO `seat` VALUES (821,'EKSEKUTIF C','F8 C','Y');
INSERT INTO `seat` VALUES (822,'EKSEKUTIF C','F9 C','Y');
INSERT INTO `seat` VALUES (823,'EKSEKUTIF C','G1 C','Y');
INSERT INTO `seat` VALUES (824,'EKSEKUTIF C','G2 C','Y');
INSERT INTO `seat` VALUES (825,'EKSEKUTIF C','N','N');
INSERT INTO `seat` VALUES (826,'EKSEKUTIF C','G3 C','Y');
INSERT INTO `seat` VALUES (827,'EKSEKUTIF C','G4 C','Y');
INSERT INTO `seat` VALUES (828,'EKSEKUTIF C','G5 C','Y');
INSERT INTO `seat` VALUES (829,'EKSEKUTIF C','G6 C','Y');
INSERT INTO `seat` VALUES (830,'EKSEKUTIF C','G7 C','Y');
INSERT INTO `seat` VALUES (831,'EKSEKUTIF C','N','N');
INSERT INTO `seat` VALUES (832,'EKSEKUTIF C','G8 C','Y');
INSERT INTO `seat` VALUES (833,'EKSEKUTIF C','G9 C','Y');
INSERT INTO `seat` VALUES (834,'EKSEKUTIF C','H1 C','Y');
INSERT INTO `seat` VALUES (835,'EKSEKUTIF C','H2 C','Y');
INSERT INTO `seat` VALUES (836,'EKSEKUTIF C','N','N');
INSERT INTO `seat` VALUES (837,'EKSEKUTIF C','H3 C','Y');
INSERT INTO `seat` VALUES (838,'EKSEKUTIF C','H4 C','Y');
INSERT INTO `seat` VALUES (839,'EKSEKUTIF C','H5 C','Y');
INSERT INTO `seat` VALUES (840,'EKSEKUTIF C','H6 C','Y');
INSERT INTO `seat` VALUES (841,'EKSEKUTIF C','H7 C','Y');
INSERT INTO `seat` VALUES (842,'EKSEKUTIF C','N','N');
INSERT INTO `seat` VALUES (843,'EKSEKUTIF C','H8 C','Y');
INSERT INTO `seat` VALUES (844,'EKSEKUTIF C','H9 C','Y');
INSERT INTO `seat` VALUES (845,'EKSEKUTIF C','I1 C','Y');
INSERT INTO `seat` VALUES (846,'EKSEKUTIF C','I2 C','Y');
INSERT INTO `seat` VALUES (847,'EKSEKUTIF C','N','N');
INSERT INTO `seat` VALUES (848,'EKSEKUTIF C','N','N');
INSERT INTO `seat` VALUES (849,'EKSEKUTIF C','I3 C','Y');
INSERT INTO `seat` VALUES (850,'EKSEKUTIF C','I4 C','Y');
INSERT INTO `seat` VALUES (851,'EKSEKUTIF C','I5 C','Y');
INSERT INTO `seat` VALUES (852,'EKSEKUTIF C','N','N');
INSERT INTO `seat` VALUES (853,'EKSEKUTIF C','N','N');
INSERT INTO `seat` VALUES (854,'EKSEKUTIF C','I6 C','Y');
INSERT INTO `seat` VALUES (855,'EKSEKUTIF C','I7 C','Y');
/*!40000 ALTER TABLE `seat` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sms_history`
--

DROP TABLE IF EXISTS `sms_history`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sms_history` (
  `id_sms_history` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `tujuan` varchar(15) DEFAULT NULL,
  `pesan` varchar(250) DEFAULT NULL,
  `port` int(10) NOT NULL,
  `tgl_input` datetime NOT NULL,
  PRIMARY KEY (`id_sms_history`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sms_history`
--

LOCK TABLES `sms_history` WRITE;
/*!40000 ALTER TABLE `sms_history` DISABLE KEYS */;
INSERT INTO `sms_history` VALUES (1,'085267730918','Nomor Tiket anda adalah = 1411260001 | ',14,'2014-11-26 16:13:21');
INSERT INTO `sms_history` VALUES (4,'085267730918','Nomor Tiket anda adalah = 1411280001 | ',13,'2014-11-28 19:06:16');
INSERT INTO `sms_history` VALUES (6,'085267730918','Nomor Tiket anda adalah = 1411280002 | ',14,'2014-11-28 19:13:46');
INSERT INTO `sms_history` VALUES (7,'085267730918','dapatkan promo upgrade kelas sekarang. www.ekspressbahari.com',14,'2014-11-28 21:21:40');
INSERT INTO `sms_history` VALUES (8,'085267730918','promo upgrade kelas di www.expressbahari.com',14,'2014-11-28 21:26:04');
INSERT INTO `sms_history` VALUES (17,'085267730918','Nomor Tiket Anda adalah = 1411300003 | 1411300004 | PT. Pelayaran Sakti Inti Makmur Palembang. Terima Kasih',14,'2014-11-30 22:20:13');
INSERT INTO `sms_history` VALUES (18,'085267730918','promo upgrade class, temukan sekarang. hanya di www.ekspressbahari.com',14,'2014-11-30 22:26:47');
INSERT INTO `sms_history` VALUES (19,'085228034258','Nomor Tiket Anda adalah = 1412030001 | 1412030002 | PT. Pelayaran Sakti Inti Makmur Palembang. Terima Kasih',14,'2014-12-03 16:24:06');
/*!40000 ALTER TABLE `sms_history` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sms_outbox`
--

DROP TABLE IF EXISTS `sms_outbox`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sms_outbox` (
  `id_sms_outbox` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `tujuan` varchar(15) DEFAULT NULL,
  `pesan` varchar(250) DEFAULT NULL,
  `port` int(10) NOT NULL,
  `tgl_input` datetime NOT NULL,
  PRIMARY KEY (`id_sms_outbox`)
) ENGINE=InnoDB AUTO_INCREMENT=130 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sms_outbox`
--

LOCK TABLES `sms_outbox` WRITE;
/*!40000 ALTER TABLE `sms_outbox` DISABLE KEYS */;
INSERT INTO `sms_outbox` VALUES (1,'085267730918','',14,'2016-09-12 11:33:54');
INSERT INTO `sms_outbox` VALUES (2,'08526259469','',14,'2016-09-12 11:33:54');
INSERT INTO `sms_outbox` VALUES (3,'08560987654','',14,'2016-09-12 11:33:54');
INSERT INTO `sms_outbox` VALUES (4,'0711580110','',14,'2016-09-12 11:33:54');
INSERT INTO `sms_outbox` VALUES (5,'42342','',14,'2016-09-12 11:33:54');
INSERT INTO `sms_outbox` VALUES (6,'2','',14,'2016-09-12 11:33:54');
INSERT INTO `sms_outbox` VALUES (7,'2','',14,'2016-09-12 11:33:54');
INSERT INTO `sms_outbox` VALUES (8,'2','',14,'2016-09-12 11:33:54');
INSERT INTO `sms_outbox` VALUES (9,'543','',14,'2016-09-12 11:33:54');
INSERT INTO `sms_outbox` VALUES (10,'56321','',14,'2016-09-12 11:33:54');
INSERT INTO `sms_outbox` VALUES (11,'98765','',14,'2016-09-12 11:33:54');
INSERT INTO `sms_outbox` VALUES (12,'7654','',14,'2016-09-12 11:33:54');
INSERT INTO `sms_outbox` VALUES (13,'','',14,'2016-09-12 11:33:54');
INSERT INTO `sms_outbox` VALUES (14,'','',14,'2016-09-12 11:33:54');
INSERT INTO `sms_outbox` VALUES (15,'085267730918','',14,'2016-09-12 11:35:57');
INSERT INTO `sms_outbox` VALUES (16,'08526259469','',14,'2016-09-12 11:35:57');
INSERT INTO `sms_outbox` VALUES (17,'08560987654','',14,'2016-09-12 11:35:57');
INSERT INTO `sms_outbox` VALUES (18,'0711580110','',14,'2016-09-12 11:35:57');
INSERT INTO `sms_outbox` VALUES (19,'42342','',14,'2016-09-12 11:35:57');
INSERT INTO `sms_outbox` VALUES (20,'2','',14,'2016-09-12 11:35:57');
INSERT INTO `sms_outbox` VALUES (21,'2','',14,'2016-09-12 11:35:57');
INSERT INTO `sms_outbox` VALUES (22,'2','',14,'2016-09-12 11:35:57');
INSERT INTO `sms_outbox` VALUES (23,'543','',14,'2016-09-12 11:35:57');
INSERT INTO `sms_outbox` VALUES (24,'56321','',14,'2016-09-12 11:35:57');
INSERT INTO `sms_outbox` VALUES (25,'98765','',14,'2016-09-12 11:35:57');
INSERT INTO `sms_outbox` VALUES (26,'7654','',14,'2016-09-12 11:35:57');
INSERT INTO `sms_outbox` VALUES (27,'','',14,'2016-09-12 11:35:57');
INSERT INTO `sms_outbox` VALUES (28,'','',14,'2016-09-12 11:35:57');
INSERT INTO `sms_outbox` VALUES (29,'085267730918','ini pesan',14,'2016-09-12 11:36:26');
INSERT INTO `sms_outbox` VALUES (30,'08526259469','ini pesan',14,'2016-09-12 11:36:26');
INSERT INTO `sms_outbox` VALUES (31,'08560987654','ini pesan',14,'2016-09-12 11:36:26');
INSERT INTO `sms_outbox` VALUES (32,'0711580110','ini pesan',14,'2016-09-12 11:36:26');
INSERT INTO `sms_outbox` VALUES (33,'42342','ini pesan',14,'2016-09-12 11:36:26');
INSERT INTO `sms_outbox` VALUES (34,'2','ini pesan',14,'2016-09-12 11:36:26');
INSERT INTO `sms_outbox` VALUES (35,'2','ini pesan',14,'2016-09-12 11:36:26');
INSERT INTO `sms_outbox` VALUES (36,'2','ini pesan',14,'2016-09-12 11:36:26');
INSERT INTO `sms_outbox` VALUES (37,'543','ini pesan',14,'2016-09-12 11:36:26');
INSERT INTO `sms_outbox` VALUES (38,'56321','ini pesan',14,'2016-09-12 11:36:26');
INSERT INTO `sms_outbox` VALUES (39,'98765','ini pesan',14,'2016-09-12 11:36:26');
INSERT INTO `sms_outbox` VALUES (40,'7654','ini pesan',14,'2016-09-12 11:36:26');
INSERT INTO `sms_outbox` VALUES (41,'','ini pesan',14,'2016-09-12 11:36:26');
INSERT INTO `sms_outbox` VALUES (42,'','ini pesan',14,'2016-09-12 11:36:26');
INSERT INTO `sms_outbox` VALUES (43,'085267730918','',14,'2016-09-12 11:39:08');
INSERT INTO `sms_outbox` VALUES (44,'08526259469','',14,'2016-09-12 11:39:08');
INSERT INTO `sms_outbox` VALUES (45,'08560987654','',14,'2016-09-12 11:39:08');
INSERT INTO `sms_outbox` VALUES (46,'0711580110','',14,'2016-09-12 11:39:08');
INSERT INTO `sms_outbox` VALUES (47,'42342','',14,'2016-09-12 11:39:08');
INSERT INTO `sms_outbox` VALUES (48,'2','',14,'2016-09-12 11:39:08');
INSERT INTO `sms_outbox` VALUES (49,'2','',14,'2016-09-12 11:39:08');
INSERT INTO `sms_outbox` VALUES (50,'2','',14,'2016-09-12 11:39:08');
INSERT INTO `sms_outbox` VALUES (51,'543','',14,'2016-09-12 11:39:08');
INSERT INTO `sms_outbox` VALUES (52,'56321','',14,'2016-09-12 11:39:08');
INSERT INTO `sms_outbox` VALUES (53,'98765','',14,'2016-09-12 11:39:08');
INSERT INTO `sms_outbox` VALUES (54,'7654','',14,'2016-09-12 11:39:08');
INSERT INTO `sms_outbox` VALUES (55,'','',14,'2016-09-12 11:39:08');
INSERT INTO `sms_outbox` VALUES (56,'','',14,'2016-09-12 11:39:08');
INSERT INTO `sms_outbox` VALUES (57,'085267730918','',14,'2016-09-12 11:39:27');
INSERT INTO `sms_outbox` VALUES (58,'08526259469','',14,'2016-09-12 11:39:27');
INSERT INTO `sms_outbox` VALUES (59,'08560987654','',14,'2016-09-12 11:39:27');
INSERT INTO `sms_outbox` VALUES (60,'0711580110','',14,'2016-09-12 11:39:27');
INSERT INTO `sms_outbox` VALUES (61,'42342','',14,'2016-09-12 11:39:27');
INSERT INTO `sms_outbox` VALUES (62,'2','',14,'2016-09-12 11:39:27');
INSERT INTO `sms_outbox` VALUES (63,'2','',14,'2016-09-12 11:39:27');
INSERT INTO `sms_outbox` VALUES (64,'2','',14,'2016-09-12 11:39:27');
INSERT INTO `sms_outbox` VALUES (65,'543','',14,'2016-09-12 11:39:27');
INSERT INTO `sms_outbox` VALUES (66,'56321','',14,'2016-09-12 11:39:27');
INSERT INTO `sms_outbox` VALUES (67,'98765','',14,'2016-09-12 11:39:27');
INSERT INTO `sms_outbox` VALUES (68,'7654','',14,'2016-09-12 11:39:27');
INSERT INTO `sms_outbox` VALUES (69,'','',14,'2016-09-12 11:39:27');
INSERT INTO `sms_outbox` VALUES (70,'','',14,'2016-09-12 11:39:27');
INSERT INTO `sms_outbox` VALUES (71,'085267730918','',14,'2016-09-12 11:39:50');
INSERT INTO `sms_outbox` VALUES (72,'08526259469','',14,'2016-09-12 11:39:50');
INSERT INTO `sms_outbox` VALUES (73,'08560987654','',14,'2016-09-12 11:39:50');
INSERT INTO `sms_outbox` VALUES (74,'0711580110','',14,'2016-09-12 11:39:50');
INSERT INTO `sms_outbox` VALUES (75,'42342','',14,'2016-09-12 11:39:50');
INSERT INTO `sms_outbox` VALUES (76,'2','',14,'2016-09-12 11:39:50');
INSERT INTO `sms_outbox` VALUES (77,'2','',14,'2016-09-12 11:39:50');
INSERT INTO `sms_outbox` VALUES (78,'2','',14,'2016-09-12 11:39:50');
INSERT INTO `sms_outbox` VALUES (79,'543','',14,'2016-09-12 11:39:50');
INSERT INTO `sms_outbox` VALUES (80,'56321','',14,'2016-09-12 11:39:50');
INSERT INTO `sms_outbox` VALUES (81,'98765','',14,'2016-09-12 11:39:50');
INSERT INTO `sms_outbox` VALUES (82,'7654','',14,'2016-09-12 11:39:50');
INSERT INTO `sms_outbox` VALUES (83,'','',14,'2016-09-12 11:39:50');
INSERT INTO `sms_outbox` VALUES (84,'','',14,'2016-09-12 11:39:50');
INSERT INTO `sms_outbox` VALUES (85,'085267730918','',14,'2016-09-12 11:41:07');
INSERT INTO `sms_outbox` VALUES (86,'08526259469','',14,'2016-09-12 11:41:07');
INSERT INTO `sms_outbox` VALUES (87,'08560987654','',14,'2016-09-12 11:41:07');
INSERT INTO `sms_outbox` VALUES (88,'0711580110','',14,'2016-09-12 11:41:07');
INSERT INTO `sms_outbox` VALUES (89,'42342','',14,'2016-09-12 11:41:07');
INSERT INTO `sms_outbox` VALUES (90,'2','',14,'2016-09-12 11:41:07');
INSERT INTO `sms_outbox` VALUES (91,'2','',14,'2016-09-12 11:41:07');
INSERT INTO `sms_outbox` VALUES (92,'2','',14,'2016-09-12 11:41:07');
INSERT INTO `sms_outbox` VALUES (93,'543','',14,'2016-09-12 11:41:07');
INSERT INTO `sms_outbox` VALUES (94,'56321','',14,'2016-09-12 11:41:07');
INSERT INTO `sms_outbox` VALUES (95,'98765','',14,'2016-09-12 11:41:07');
INSERT INTO `sms_outbox` VALUES (96,'7654','',14,'2016-09-12 11:41:07');
INSERT INTO `sms_outbox` VALUES (97,'','',14,'2016-09-12 11:41:07');
INSERT INTO `sms_outbox` VALUES (98,'','',14,'2016-09-12 11:41:07');
INSERT INTO `sms_outbox` VALUES (99,'085267730918','',14,'2016-09-12 12:07:40');
INSERT INTO `sms_outbox` VALUES (100,'08526259469','',14,'2016-09-12 12:07:40');
INSERT INTO `sms_outbox` VALUES (101,'08560987654','',14,'2016-09-12 12:07:40');
INSERT INTO `sms_outbox` VALUES (102,'0711580110','',14,'2016-09-12 12:07:40');
INSERT INTO `sms_outbox` VALUES (103,'42342','',14,'2016-09-12 12:07:40');
INSERT INTO `sms_outbox` VALUES (104,'2','',14,'2016-09-12 12:07:40');
INSERT INTO `sms_outbox` VALUES (105,'2','',14,'2016-09-12 12:07:40');
INSERT INTO `sms_outbox` VALUES (106,'2','',14,'2016-09-12 12:07:40');
INSERT INTO `sms_outbox` VALUES (107,'543','',14,'2016-09-12 12:07:40');
INSERT INTO `sms_outbox` VALUES (108,'56321','',14,'2016-09-12 12:07:40');
INSERT INTO `sms_outbox` VALUES (109,'98765','',14,'2016-09-12 12:07:40');
INSERT INTO `sms_outbox` VALUES (110,'7654','',14,'2016-09-12 12:07:40');
INSERT INTO `sms_outbox` VALUES (111,'','',14,'2016-09-12 12:07:40');
INSERT INTO `sms_outbox` VALUES (112,'','',14,'2016-09-12 12:07:40');
INSERT INTO `sms_outbox` VALUES (113,'085267730918','telor',14,'2016-09-12 12:08:01');
INSERT INTO `sms_outbox` VALUES (114,'08526259469','telor',14,'2016-09-12 12:08:01');
INSERT INTO `sms_outbox` VALUES (115,'08560987654','telor',14,'2016-09-12 12:08:01');
INSERT INTO `sms_outbox` VALUES (116,'0711580110','telor',14,'2016-09-12 12:08:01');
INSERT INTO `sms_outbox` VALUES (117,'42342','telor',14,'2016-09-12 12:08:01');
INSERT INTO `sms_outbox` VALUES (118,'2','telor',14,'2016-09-12 12:08:01');
INSERT INTO `sms_outbox` VALUES (119,'2','telor',14,'2016-09-12 12:08:01');
INSERT INTO `sms_outbox` VALUES (120,'2','telor',14,'2016-09-12 12:08:01');
INSERT INTO `sms_outbox` VALUES (121,'543','telor',14,'2016-09-12 12:08:01');
INSERT INTO `sms_outbox` VALUES (122,'56321','telor',14,'2016-09-12 12:08:01');
INSERT INTO `sms_outbox` VALUES (123,'98765','telor',14,'2016-09-12 12:08:01');
INSERT INTO `sms_outbox` VALUES (124,'7654','telor',14,'2016-09-12 12:08:01');
INSERT INTO `sms_outbox` VALUES (125,'','telor',14,'2016-09-12 12:08:01');
INSERT INTO `sms_outbox` VALUES (126,'','telor',14,'2016-09-12 12:08:01');
INSERT INTO `sms_outbox` VALUES (127,'085267730918','pos',0,'2016-09-12 12:18:47');
INSERT INTO `sms_outbox` VALUES (128,'085267730918','pokl',0,'2016-09-12 12:19:19');
INSERT INTO `sms_outbox` VALUES (129,'085267730918','hai leh nalan?',14,'2016-09-12 12:20:41');
/*!40000 ALTER TABLE `sms_outbox` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `susunan`
--

DROP TABLE IF EXISTS `susunan`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `susunan` (
  `kelas` enum('VIP','EKSEKUTIF A','EKSEKUTIF B','EKSEKUTIF C','EKONOMI') DEFAULT NULL,
  `baris` int(11) DEFAULT NULL,
  `kolom` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `susunan`
--

LOCK TABLES `susunan` WRITE;
/*!40000 ALTER TABLE `susunan` DISABLE KEYS */;
INSERT INTO `susunan` VALUES ('VIP',7,7);
INSERT INTO `susunan` VALUES ('EKSEKUTIF A',9,9);
INSERT INTO `susunan` VALUES ('EKSEKUTIF B',8,11);
INSERT INTO `susunan` VALUES ('EKSEKUTIF C',9,11);
INSERT INTO `susunan` VALUES ('EKONOMI',10,7);
/*!40000 ALTER TABLE `susunan` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tarif`
--

DROP TABLE IF EXISTS `tarif`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tarif` (
  `id_tarif` int(20) NOT NULL AUTO_INCREMENT,
  `kelas` enum('VIP','Eksekutif','Ekonomi') DEFAULT NULL,
  `kategori_penumpang` enum('Dewasa','Anak','Bayi') DEFAULT NULL,
  `one_way` double DEFAULT NULL,
  `pp` double DEFAULT NULL,
  PRIMARY KEY (`id_tarif`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tarif`
--

LOCK TABLES `tarif` WRITE;
/*!40000 ALTER TABLE `tarif` DISABLE KEYS */;
INSERT INTO `tarif` VALUES (1,'VIP','Dewasa',265000,474000);
INSERT INTO `tarif` VALUES (2,'VIP','Anak',225000,394000);
INSERT INTO `tarif` VALUES (3,'VIP','Bayi',20000,NULL);
INSERT INTO `tarif` VALUES (4,'Eksekutif','Dewasa',215000,374000);
INSERT INTO `tarif` VALUES (5,'Eksekutif','Anak',175000,294000);
INSERT INTO `tarif` VALUES (6,'Ekonomi','Dewasa',190000,NULL);
INSERT INTO `tarif` VALUES (7,'Ekonomi','Anak',150000,NULL);
/*!40000 ALTER TABLE `tarif` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tiket`
--

DROP TABLE IF EXISTS `tiket`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tiket` (
  `kd_tiket` varchar(50) NOT NULL DEFAULT '',
  `invoice` varchar(100) DEFAULT NULL,
  `tgl_input` datetime DEFAULT NULL,
  PRIMARY KEY (`kd_tiket`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tiket`
--

LOCK TABLES `tiket` WRITE;
/*!40000 ALTER TABLE `tiket` DISABLE KEYS */;
INSERT INTO `tiket` VALUES ('1411260001','I88B1K358C69','2014-11-26 09:44:59');
INSERT INTO `tiket` VALUES ('1411280001','PQ9MK8KH6FFL','2014-11-28 19:06:16');
INSERT INTO `tiket` VALUES ('1411280002','PQ9MK800D6B0','2014-11-28 19:13:45');
INSERT INTO `tiket` VALUES ('1411300001','NA90S4HF5LL0','2014-11-30 21:41:11');
INSERT INTO `tiket` VALUES ('1411300002','NA90S42J33CL','2014-11-30 22:07:33');
INSERT INTO `tiket` VALUES ('1411300003','NA90S461E6JK','2014-11-30 22:20:12');
INSERT INTO `tiket` VALUES ('1411300004','NA90S461E6JK','2014-11-30 22:20:12');
INSERT INTO `tiket` VALUES ('1412030001','RO45S2B713AC','2014-12-03 16:24:03');
INSERT INTO `tiket` VALUES ('1412030002','RO45S2B713AC','2014-12-03 16:24:04');
/*!40000 ALTER TABLE `tiket` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tindaklanjut`
--

DROP TABLE IF EXISTS `tindaklanjut`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tindaklanjut` (
  `id_tindak` int(100) NOT NULL AUTO_INCREMENT,
  `nama` varchar(100) DEFAULT NULL,
  `img` varchar(100) DEFAULT NULL,
  `hasil_tindakan` varchar(1000) DEFAULT NULL,
  `tgl_input` datetime DEFAULT NULL,
  PRIMARY KEY (`id_tindak`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tindaklanjut`
--

LOCK TABLES `tindaklanjut` WRITE;
/*!40000 ALTER TABLE `tindaklanjut` DISABLE KEYS */;
INSERT INTO `tindaklanjut` VALUES (9,'Pengiriman yang lama kali','oke.png','oke','2014-11-18 15:54:43');
INSERT INTO `tindaklanjut` VALUES (10,'Barang diterima dalam kemasan yang kurang baik','oke.png','Terimakasih. Kami sudah mengaudit pegawai kami','2014-11-18 15:55:03');
INSERT INTO `tindaklanjut` VALUES (11,'Harga terlalu mahal','oke.png','Kita akan pertimbangkan soal harga','2014-11-18 15:55:22');
INSERT INTO `tindaklanjut` VALUES (12,'Kapan ada promo bagi pelanggan setia?','oke.png','Secepatnya. Tks','2014-11-18 15:55:37');
INSERT INTO `tindaklanjut` VALUES (13,'Kapan penerimaan pegawai riau pos?','oke.png','untuk sementara belum ada.','2016-09-02 15:43:53');
/*!40000 ALTER TABLE `tindaklanjut` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2016-09-12 16:53:06
