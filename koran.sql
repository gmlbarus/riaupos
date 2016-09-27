-- MySQL dump 10.15  Distrib 10.0.27-MariaDB, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: koran
-- ------------------------------------------------------
-- Server version	10.0.27-MariaDB-0ubuntu0.16.04.1

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
INSERT INTO `agen` VALUES (1,'PT. Karmeta Tour & Travel','JL. Dempo Luar Palembang','(0711) 351786','Y',NULL),(2,'PT. Handoyo','JL. Kol. H. Burlian KM.9 Palembang','(0711) 413767','Y',NULL),(3,'PT. IMI','JL. Kol. H. Burlian KM. 10 Palembang','(0711) 411599','Y',NULL),(4,'PT. Solid Brother','JL. Slamet Riyadi Pasar Kuto Palembang','(0711) 362451','Y',NULL),(5,'PT. Holiday','JL.  Kampar Raya Perumnas Palembang ','(0711) 842361','Y','2014-11-17 09:37:32'),(6,'PT. Rahmat Terang','JL. Jend. A. Yani Plaju Palembang ','(0711) 513733','Y','2014-11-17 09:39:28'),(7,'PT. Mega Wisata Tour & Travel','JL. Jenderal Sudirman Palembang ','(0711) 371544','Y','2014-11-17 09:43:20'),(8,'PT. Mitra  Tour & Travel','JL. Basuki Rahmat Mall (PTC) Palembang ','(0711) 822382','Y','2014-11-17 09:44:04'),(9,'PT. Ferga Delaga Dunia','JL. Mayor Salim Sekip Ujung Palembang','(0711) 371831','Y','2014-11-17 09:44:54'),(10,'PT. Batas Nusa','JL. Basuki Rahmat','(0711) 372696','Y','2014-11-17 09:45:51'),(11,'PT. Paris','JL. Letkol  Iskandar (PIM) Palembang ','(0711) 316591','Y','2014-11-17 09:46:43'),(12,'PT. Rapi','JL. Tanjung Siapi-Api ','(0711) 389766','Y','2014-11-17 09:47:37'),(13,'PT. AS Holiday','JL. Mayor Salim Batubara (Sekip) Palembang ','(0711) 367844','Y','2014-11-17 09:48:21'),(14,'PT. IKPP','JL.Perang No.89','(0761) 91885','Y','2016-09-08 23:11:29');
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
INSERT INTO `bank` VALUES (5,'Mandiri','900000','Eben Hezer Josapat Hasugian'),(6,'BCA','12345678','Eben Hezer Josapat Hasugian');
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
INSERT INTO `faq` VALUES (4,'Bagaimanakah caranya untuk melakukan registrasi berlangganan koran?','Panduan untuk melakukan pemesanan, dapat anda lihat pada menu simulasi yang berada di bawah website. ','Y','2014-10-20 10:54:09'),(5,'Bagaimana cara untuk memberikan saran atau kritik?','Untuk memberikan Saran dan kritik anda dapat membuka menu Saran dan Kritik yang berada dibawah website, dan isikan data dengan lengkap dan benar.','Y','2014-11-17 09:56:23'),(6,'Bagaimana kami bisa megetahui lebih jauh tentang perusahaan ini?','Untuk mengenal lebih jauh PT. Pelayaran Sakti Inti Makmur anda dapat membuka menu Tentang Kami, yang berisi informasi mengenai perusahaan. ','Y','2014-11-17 09:58:22');
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
INSERT INTO `hasil_polling` VALUES (1,4,'10.0.2.2','10',2015),(1,0,'','',2016),(1,2,'','',2016),(1,3,'','',2016),(1,6,'','',2016),(1,7,'','',2016),(1,7,'','',2016),(1,7,'','',2016),(1,7,'','',2016),(1,7,'','',2016),(1,8,'','',2016),(1,20,'','',2016),(1,10,'','',2016),(1,10,'','',2016),(1,9,'','',2016),(1,1,'10.0.2.2','',2015),(1,3,'10.0.2.2','',2016),(1,9,'','',2016);
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
INSERT INTO `hubungi` VALUES (2,'Yunita','yunita_rainbow@yahoo.com','Saran','harus lebih ditingkatkan!\r\n','2014-11-14 10:49:36'),(3,'eben hezer','ebenjosh@gmail.com','Saran','perbaiki lagi pelayanannya.','2016-08-22 21:54:46'),(4,'eben hezer','ebenjosh@gmail.com','Kritik','kurang sopan.','2016-08-22 21:55:10'),(5,'eben hezer','ebenjosh@gmail.com','Kritik','kurang sopan.','2016-08-22 23:12:25'),(6,'guguk','ebenhezerhasugian@gmail.com','Saran','oke','2016-09-07 17:35:38');
/*!40000 ALTER TABLE `hubungi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `konfirmasi`
--

DROP TABLE IF EXISTS `konfirmasi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `konfirmasi` (
  `id_konfirmasi` int(11) NOT NULL AUTO_INCREMENT,
  `invoice` char(12) DEFAULT NULL,
  `nama` varchar(100) DEFAULT NULL,
  `pesan` text,
  `img` varchar(100) DEFAULT NULL,
  `tgl_input` date DEFAULT NULL,
  PRIMARY KEY (`id_konfirmasi`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `konfirmasi`
--

LOCK TABLES `konfirmasi` WRITE;
/*!40000 ALTER TABLE `konfirmasi` DISABLE KEYS */;
INSERT INTO `konfirmasi` VALUES (1,'8e336313ae9b','Apalah','Y P kubilnG','Untitled.tiff','2016-09-26'),(2,'bf3bd03205db','eben','Apa kau','Untitled.tiff','2016-09-27');
/*!40000 ALTER TABLE `konfirmasi` ENABLE KEYS */;
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
INSERT INTO `konten` VALUES (1,'Setiap hari pada pukul 07 : 00 WIB Pada Agen Distributor terdekat</br>\r\n<b>Kab.Siak :  <font color=\"f32308\"> 06:00 </font> WIB</b> | <b>Kab.Inhul :  <font color=\"f32308\"> 05:30 </font> WIB</b> | <b>Kab.Inhil :  <font color=\"f32308\">05:00</font> WIB</b> | <b>Kab.Meranti : <font color=\"f32308\">06:00</font> WIB</b></br>\r\n<b>Kab.Bengkalis : <font color=\"f32308\">06:00</font> WIB</b> | <b>Kab.Pelalawan : <font color=\"f32308\">06:00</font> WIB</b></br>\r\n','jadwal'),(4,'Dewasa','penumpang'),(5,'Anak','penumpang'),(6,'Bayi','penumpang'),(7,'VIP','kelas'),(8,'Eksekutif','kelas'),(9,'Ekonomi','kelas'),(10,'<b>PT. RIAU POS MEDIA GROUP</b></br>\r\nGedung Graha Pena Riau Lt. 3, Jl. HR Subrantas KM. 10,5, Panam, Riau 28000, Indonesia</br>\r\nTelp. (0761) 566806, (0761) 64633,(0761) 64637,0761 6 Fax. (0711) 359200.</br></br>\r\n\r\n<b>Visi</b></br>\r\nMemberikan pelayanan prima kepada setiap pelanggan.</br> </br>\r\n\r\n<b>Misi</b></br>\r\n1.	Mengutamakan pelayanan.</br>\r\n2.	Memberikan pelayanan terbaik.</br>\r\n3.	Selalu mengutamakan kepuasan pelanggan.</br>\r\n','profil'),(11,'Saran','tipe'),(12,'Kritik','tipe'),(13,'Koran Harian Riau Pos (terbit setiap harinya)','media'),(14,'Majalah Mingguan Riau Pos (terbit hanya setiap minggu)','media'),(15,'Pijat','extra'),(16,'14','port'),(17,'Laki-laki','jk'),(18,'Perempuan','jk');
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
INSERT INTO `kota` VALUES ('1','SIMEULUE','11'),('10','BIREUEN','11'),('100','OGAN KOMERING ILIR','16'),('101','MUARA ENIM','16'),('102','LAHAT','16'),('103','MUSI RAWAS','16'),('104','MUSI BANYUASIN','16'),('105','BANYU ASIN','16'),('106','OGAN KOMERING ULU SELATAN','16'),('107','OGAN KOMERING ULU TIMUR','16'),('108','OGAN ILIR','16'),('109','EMPAT LAWANG','16'),('11','ACEH UTARA','11'),('110','PALEMBANG','16'),('111','PRABUMULIH','16'),('112','PAGAR ALAM','16'),('113','LUBUKLINGGAU','16'),('114','BENGKULU SELATAN','17'),('115','REJANG LEBONG','17'),('116','BENGKULU UTARA','17'),('117','KAUR','17'),('118','SELUMA','17'),('119','MUKOMUKO','17'),('12','ACEH BARAT DAYA','11'),('120','LEBONG','17'),('121','KEPAHIANG','17'),('122','BENGKULU TENGAH','17'),('123','BENGKULU','17'),('124','LAMPUNG BARAT','18'),('125','TANGGAMUS','18'),('126','LAMPUNG SELATAN','18'),('127','LAMPUNG TIMUR','18'),('128','LAMPUNG TENGAH','18'),('129','LAMPUNG UTARA','18'),('13','GAYO LUES','11'),('130','WAY KANAN','18'),('131','TULANGBAWANG','18'),('132','PESAWARAN','18'),('133','PRINGSEWU','18'),('134','MESUJI','18'),('135','TULANG BAWANG BARAT','18'),('136','BANDAR LAMPUNG','18'),('137','METRO','18'),('138','BANGKA','19'),('139','BELITUNG','19'),('14','ACEH TAMIANG','11'),('140','BANGKA BARAT','19'),('141','BANGKA TENGAH','19'),('142','BANGKA SELATAN','19'),('143','BELITUNG TIMUR','19'),('144','PANGKAL PINANG','19'),('145','KARIMUN','21'),('146','BINTAN','21'),('147','NATUNA','21'),('148','LINGGA','21'),('149','KEPULAUAN ANAMBAS','21'),('15','NAGAN RAYA','11'),('150','B A T A M','21'),('151','TANJUNG PINANG','21'),('152','KEPULAUAN SERIBU','31'),('153','JAKARTA SELATAN','31'),('154','JAKARTA TIMUR','31'),('155','JAKARTA PUSAT','31'),('156','JAKARTA BARAT','31'),('157','JAKARTA UTARA','31'),('158','BOGOR','32'),('159','SUKABUMI','32'),('16','ACEH JAYA','11'),('160','CIANJUR','32'),('161','BANDUNG','32'),('162','GARUT','32'),('163','TASIKMALAYA','32'),('164','CIAMIS','32'),('165','KUNINGAN','32'),('166','CIREBON','32'),('167','MAJALENGKA','32'),('168','SUMEDANG','32'),('169','INDRAMAYU','32'),('17','BENER MERIAH','11'),('170','SUBANG','32'),('171','PURWAKARTA','32'),('172','KARAWANG','32'),('173','BEKASI','32'),('174','BANDUNG BARAT','32'),('175','BOGOR','32'),('176','SUKABUMI','32'),('177','BANDUNG','32'),('178','CIREBON','32'),('179','BEKASI','32'),('18','PIDIE JAYA','11'),('180','DEPOK','32'),('181','CIMAHI','32'),('182','TASIKMALAYA','32'),('183','BANJAR','32'),('184','CILACAP','33'),('185','BANYUMAS','33'),('186','PURBALINGGA','33'),('187','BANJARNEGARA','33'),('188','KEBUMEN','33'),('189','PURWOREJO','33'),('19','BANDA ACEH','11'),('190','WONOSOBO','33'),('191','MAGELANG','33'),('192','BOYOLALI','33'),('193','KLATEN','33'),('194','SUKOHARJO','33'),('195','WONOGIRI','33'),('196','KARANGANYAR','33'),('197','SRAGEN','33'),('198','GROBOGAN','33'),('199','BLORA','33'),('2','ACEH SINGKIL','11'),('20','SABANG','11'),('200','REMBANG','33'),('201','PATI','33'),('202','KUDUS','33'),('203','JEPARA','33'),('204','DEMAK','33'),('205','SEMARANG','33'),('206','TEMANGGUNG','33'),('207','KENDAL','33'),('208','BATANG','33'),('209','PEKALONGAN','33'),('21','LANGSA','11'),('210','PEMALANG','33'),('211','TEGAL','33'),('212','BREBES','33'),('213','MAGELANG','33'),('214','SURAKARTA','33'),('215','SALATIGA','33'),('216','SEMARANG','33'),('217','PEKALONGAN','33'),('218','TEGAL','33'),('219','KULON PROGO','34'),('22','LHOKSEUMAWE','11'),('220','BANTUL','34'),('221','GUNUNG KIDUL','34'),('222','SLEMAN','34'),('223','YOGYAKARTA','34'),('224','PACITAN','35'),('225','PONOROGO','35'),('226','TRENGGALEK','35'),('227','TULUNGAGUNG','35'),('228','BLITAR','35'),('229','KEDIRI','35'),('23','SUBULUSSALAM','11'),('230','MALANG','35'),('231','LUMAJANG','35'),('232','JEMBER','35'),('233','BANYUWANGI','35'),('234','BONDOWOSO','35'),('235','SITUBONDO','35'),('236','PROBOLINGGO','35'),('237','PASURUAN','35'),('238','SIDOARJO','35'),('239','MOJOKERTO','35'),('24','NIAS','12'),('240','JOMBANG','35'),('241','NGANJUK','35'),('242','MADIUN','35'),('243','MAGETAN','35'),('244','NGAWI','35'),('245','BOJONEGORO','35'),('246','TUBAN','35'),('247','LAMONGAN','35'),('248','GRESIK','35'),('249','BANGKALAN','35'),('25','MANDAILING NATAL','12'),('250','SAMPANG','35'),('251','PAMEKASAN','35'),('252','SUMENEP','35'),('253','KEDIRI','35'),('254','BLITAR','35'),('255','MALANG','35'),('256','PROBOLINGGO','35'),('257','PASURUAN','35'),('258','MOJOKERTO','35'),('259','MADIUN','35'),('26','TAPANULI SELATAN','12'),('260','SURABAYA','35'),('261','BATU','35'),('262','PANDEGLANG','36'),('263','LEBAK','36'),('264','TANGERANG','36'),('265','SERANG','36'),('266','TANGERANG','36'),('267','CILEGON','36'),('268','SERANG','36'),('269','TANGERANG SELATAN','36'),('27','TAPANULI TENGAH','12'),('270','JEMBRANA','51'),('271','TABANAN','51'),('272','BADUNG','51'),('273','GIANYAR','51'),('274','KLUNGKUNG','51'),('275','BANGLI','51'),('276','KARANG ASEM','51'),('277','BULELENG','51'),('278','DENPASAR','51'),('279','LOMBOK BARAT','52'),('28','TAPANULI UTARA','12'),('280','LOMBOK TENGAH','52'),('281','LOMBOK TIMUR','52'),('282','SUMBAWA','52'),('283','DOMPU','52'),('284','BIMA','52'),('285','SUMBAWA BARAT','52'),('286','LOMBOK UTARA','52'),('287','MATARAM','52'),('288','BIMA','52'),('289','SUMBA BARAT','53'),('29','TOBA SAMOSIR','12'),('290','SUMBA TIMUR','53'),('291','KUPANG','53'),('292','TIMOR TENGAH SELATAN','53'),('293','TIMOR TENGAH UTARA','53'),('294','BELU','53'),('295','ALOR','53'),('296','LEMBATA','53'),('297','FLORES TIMUR','53'),('298','SIKKA','53'),('299','ENDE','53'),('3','ACEH SELATAN','11'),('30','LABUHAN BATU','12'),('300','NGADA','53'),('301','MANGGARAI','53'),('302','ROTE NDAO','53'),('303','MANGGARAI BARAT','53'),('304','SUMBA TENGAH','53'),('305','SUMBA BARAT DAYA','53'),('306','NAGEKEO','53'),('307','MANGGARAI TIMUR','53'),('308','SABU RAIJUA','53'),('309','KUPANG','53'),('31','ASAHAN','12'),('310','SAMBAS','61'),('311','BENGKAYANG','61'),('312','LANDAK','61'),('313','PONTIANAK','61'),('314','SANGGAU','61'),('315','KETAPANG','61'),('316','SINTANG','61'),('317','KAPUAS HULU','61'),('318','SEKADAU','61'),('319','MELAWI','61'),('32','SIMALUNGUN','12'),('320','KAYONG UTARA','61'),('321','KUBU RAYA','61'),('322','PONTIANAK','61'),('323','SINGKAWANG','61'),('324','KOTAWARINGIN BARAT','62'),('325','KOTAWARINGIN TIMUR','62'),('326','KAPUAS','62'),('327','BARITO SELATAN','62'),('328','BARITO UTARA','62'),('329','SUKAMARA','62'),('33','DAIRI','12'),('330','LAMANDAU','62'),('331','SERUYAN','62'),('332','KATINGAN','62'),('333','PULANG PISAU','62'),('334','GUNUNG MAS','62'),('335','BARITO TIMUR','62'),('336','MURUNG RAYA','62'),('337','PALANGKA RAYA','62'),('338','TANAH LAUT','63'),('339','KOTA BARU','63'),('34','KARO','12'),('340','BANJAR','63'),('341','BARITO KUALA','63'),('342','TAPIN','63'),('343','HULU SUNGAI SELATAN','63'),('344','HULU SUNGAI TENGAH','63'),('345','HULU SUNGAI UTARA','63'),('346','TABALONG','63'),('347','TANAH BUMBU','63'),('348','BALANGAN','63'),('349','BANJARMASIN','63'),('35','DELI SERDANG','12'),('350','BANJAR BARU','63'),('351','PASER','64'),('352','KUTAI BARAT','64'),('353','KUTAI KARTANEGARA','64'),('354','KUTAI TIMUR','64'),('355','BERAU','64'),('356','MALINAU','64'),('357','BULUNGAN','64'),('358','NUNUKAN','64'),('359','PENAJAM PASER UTARA','64'),('36','LANGKAT','12'),('360','TANA TIDUNG','64'),('361','BALIKPAPAN','64'),('362','SAMARINDA','64'),('363','TARAKAN','64'),('364','BONTANG','64'),('365','BOLAANG MONGONDOW','71'),('366','MINAHASA','71'),('367','KEPULAUAN SANGIHE','71'),('368','KEPULAUAN TALAUD','71'),('369','MINAHASA SELATAN','71'),('37','NIAS SELATAN','12'),('370','MINAHASA UTARA','71'),('371','BOLAANG MONGONDOW UTARA','71'),('372','SIAU TAGULANDANG BIARO','71'),('373','MINAHASA TENGGARA','71'),('374','BOLAANG MONGONDOW SELATAN','71'),('375','BOLAANG MONGONDOW TIMUR','71'),('376','MANADO','71'),('377','BITUNG','71'),('378','TOMOHON','71'),('379','KOTAMOBAGU','71'),('38','HUMBANG HASUNDUTAN','12'),('380','BANGGAI KEPULAUAN','72'),('381','BANGGAI','72'),('382','MOROWALI','72'),('383','POSO','72'),('384','DONGGALA','72'),('385','TOLI-TOLI','72'),('386','BUOL','72'),('387','PARIGI MOUTONG','72'),('388','TOJO UNA-UNA','72'),('389','SIGI','72'),('39','PAKPAK BHARAT','12'),('390','PALU','72'),('391','KEPULAUAN SELAYAR','73'),('392','BULUKUMBA','73'),('393','BANTAENG','73'),('394','JENEPONTO','73'),('395','TAKALAR','73'),('396','GOWA','73'),('397','SINJAI','73'),('398','MAROS','73'),('399','PANGKAJENE DAN KEPULAUAN','73'),('4','ACEH TENGGARA','11'),('40','SAMOSIR','12'),('400','BARRU','73'),('401','BONE','73'),('402','SOPPENG','73'),('403','WAJO','73'),('404','SIDENRENG RAPPANG','73'),('405','PINRANG','73'),('406','ENREKANG','73'),('407','LUWU','73'),('408','TANA TORAJA','73'),('409','LUWU UTARA','73'),('41','SERDANG BEDAGAI','12'),('410','LUWU TIMUR','73'),('411','TORAJA UTARA','73'),('412','MAKASSAR','73'),('413','PARE-PARE','73'),('414','PALOPO','73'),('415','BUTON','74'),('416','MUNA','74'),('417','KONAWE','74'),('418','KOLAKA','74'),('419','KONAWE SELATAN','74'),('42','BATU BARA','12'),('420','BOMBANA','74'),('421','WAKATOBI','74'),('422','KOLAKA UTARA','74'),('423','BUTON UTARA','74'),('424','KONAWE UTARA','74'),('425','KENDARI','74'),('426','BAUBAU','74'),('427','BOALEMO','75'),('428','GORONTALO','75'),('429','POHUWATO','75'),('43','PADANG LAWAS UTARA','12'),('430','BONE BOLANGO','75'),('431','GORONTALO UTARA','75'),('432','GORONTALO','75'),('433','MAJENE','76'),('434','POLEWALI MANDAR','76'),('435','MAMASA','76'),('436','MAMUJU','76'),('437','MAMUJU UTARA','76'),('438','MALUKU TENGGARA BARAT','81'),('439','MALUKU TENGGARA','81'),('44','PADANG LAWAS','12'),('440','MALUKU TENGAH','81'),('441','BURU','81'),('442','KEPULAUAN ARU','81'),('443','SERAM BAGIAN BARAT','81'),('444','SERAM BAGIAN TIMUR','81'),('445','MALUKU BARAT DAYA','81'),('446','BURU SELATAN','81'),('447','AMBON','81'),('448','TUAL','81'),('449','HALMAHERA BARAT','82'),('45','LABUHAN BATU SELATAN','12'),('450','HALMAHERA TENGAH','82'),('451','KEPULAUAN SULA','82'),('452','HALMAHERA SELATAN','82'),('453','HALMAHERA UTARA','82'),('454','HALMAHERA TIMUR','82'),('455','PULAU MOROTAI','82'),('456','TERNATE','82'),('457','TIDORE KEPULAUAN','82'),('458','FAKFAK','91'),('459','KAIMANA','91'),('46','LABUHAN BATU UTARA','12'),('460','TELUK WONDAMA','91'),('461','TELUK BINTUNI','91'),('462','MANOKWARI','91'),('463','SORONG SELATAN','91'),('464','SORONG','91'),('465','RAJA AMPAT','91'),('466','TAMBRAUW','91'),('467','MAYBRAT','91'),('468','SORONG','91'),('469','MERAUKE','94'),('47','NIAS UTARA','12'),('470','JAYAWIJAYA','94'),('471','JAYAPURA','94'),('472','NABIRE','94'),('473','KEPULAUAN YAPEN','94'),('474','BIAK NUMFOR','94'),('475','PANIAI','94'),('476','PUNCAK JAYA','94'),('477','MIMIKA','94'),('478','BOVEN DIGOEL','94'),('479','MAPPI','94'),('48','NIAS BARAT','12'),('480','ASMAT','94'),('481','YAHUKIMO','94'),('482','PEGUNUNGAN BINTANG','94'),('483','TOLIKARA','94'),('484','SARMI','94'),('485','KEEROM','94'),('486','WAROPEN','94'),('487','SUPIORI','94'),('488','MAMBERAMO RAYA','94'),('489','NDUGA','94'),('49','SIBOLGA','12'),('490','LANNY JAYA','94'),('491','MAMBERAMO TENGAH','94'),('492','YALIMO','94'),('493','PUNCAK','94'),('494','DOGIYAI','94'),('495','INTAN JAYA','94'),('496','DEIYAI','94'),('497','JAYAPURA','94'),('5','ACEH TIMUR','11'),('50','TANJUNG BALAI','12'),('51','PEMATANG SIANTAR','12'),('52','TEBING TINGGI','12'),('53','MEDAN','12'),('54','BINJAI','12'),('55','PADANGSIDIMPUAN','12'),('56','GUNUNGSITOLI','12'),('57','KEPULAUAN MENTAWAI','13'),('58','PESISIR SELATAN','13'),('59','SOLOK','13'),('6','ACEH TENGAH','11'),('60','SIJUNJUNG','13'),('61','TANAH DATAR','13'),('62','PADANG PARIAMAN','13'),('63','AGAM','13'),('64','LIMA PULUH KOTA','13'),('65','PASAMAN','13'),('66','SOLOK SELATAN','13'),('67','DHARMASRAYA','13'),('68','PASAMAN BARAT','13'),('69','PADANG','13'),('7','ACEH BARAT','11'),('70','SOLOK','13'),('71','SAWAH LUNTO','13'),('72','PADANG PANJANG','13'),('73','BUKITTINGGI','13'),('74','PAYAKUMBUH','13'),('75','PARIAMAN','13'),('76','KUANTAN SINGINGI','14'),('77','INDRAGIRI HULU','14'),('78','INDRAGIRI HILIR','14'),('79','PELALAWAN','14'),('8','ACEH BESAR','11'),('80','S I A K','14'),('81','KAMPAR','14'),('82','ROKAN HULU','14'),('83','BENGKALIS','14'),('84','ROKAN HILIR','14'),('85','KEPULAUAN MERANTI','14'),('86','PEKANBARU','14'),('87','D U M A I','14'),('88','KERINCI','15'),('89','MERANGIN','15'),('9','PIDIE','11'),('90','SAROLANGUN','15'),('91','BATANG HARI','15'),('92','MUARO JAMBI','15'),('93','TANJUNG JABUNG TIMUR','15'),('94','TANJUNG JABUNG BARAT','15'),('95','TEBO','15'),('96','BUNGO','15'),('97','JAMBI','15'),('98','SUNGAI PENUH','15'),('99','OGAN KOMERING ULU','16');
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
INSERT INTO `login` VALUES ('admin','21232f297a57a5a743894a0e4a801fc3','0','Y'),('coba@gmail.com','c3ec0f7b054e729c5a716c8125839829','2','Y'),('ebenhezerhasugian@gmail.com','e807f1fcf82d132f9bb018ca6738a19f','2','Y'),('ebenjosh@gmail.com','8b7ea8942e41d15fe77fdf150bf0caf9','2','Y'),('manager','21232f297a57a5a743894a0e4a801fc3','1','Y'),('sakit@gmail.com','e5e434b8053cf09733f1cc20cb962d6c','2','Y'),('yunita_rainbow@yahoo.com','827ccb0eea8a706c4c34a16891f84e7b','2','Y');
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
INSERT INTO `menu` VALUES (1,'Profil','?module=profil',0,'Y'),(2,'FAQ','?module=faq',0,'Y'),(3,'Promo','?module=promo',0,'Y'),(4,'Tindak Lanjut','?module=tindak-lanjut',0,'Y'),(5,'Jadwal Pengiriman Koran','?module=jadwal',0,'Y'),(6,'Saran dan Kritik','?module=saran-kritik',0,'Y'),(7,'Data Agen','?module=agen',0,'Y'),(8,'Data Pelanggan','?module=pelanggan',0,'Y'),(9,'Data Rute','?module=rute',0,'N'),(10,'Data Simulasi','?module=simulasi',0,'N'),(11,'Data Berlangganan','?module=pemesanan',0,'Y'),(12,'Data Bank','?module=bank',0,'Y'),(13,'Laporan Pelanggan','?module=laporan-pelanggan',1,'Y'),(14,'Laporan Berlangganan','?module=laporan-pemesanan',1,'Y'),(16,'Ongkos Tarif','?module=ongkos',0,'Y'),(17,'SMS History','?module=smshistory',0,'Y'),(18,'SMS Outbox','?module=smsoutbox',0,'Y'),(19,'SMS Broadcast','?module=smsbroadcast',0,'Y'),(20,'Survey NPS','?module=polling',1,'Y'),(21,'Laporan Agen','?module=laporan-agen',1,'Y'),(22,'Laporan Stop Berlangganan','?module=stop',1,'Y'),(24,'SMS Send','?module=smsSend',0,'Y');
/*!40000 ALTER TABLE `menu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `order`
--

DROP TABLE IF EXISTS `order`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `order` (
  `invoice` char(12) NOT NULL DEFAULT '',
  `username` varchar(100) NOT NULL,
  `koran_1` varchar(10) DEFAULT NULL,
  `koran_2` varchar(10) DEFAULT NULL,
  `pembayaran_via` varchar(100) DEFAULT NULL,
  `harga` int(11) DEFAULT NULL,
  `sebanyak` int(11) DEFAULT NULL,
  `jatuh_tempo` date DEFAULT NULL,
  `masa_aktif` int(11) DEFAULT NULL,
  `konfirmasi` enum('lunas','belum lunas') DEFAULT NULL,
  PRIMARY KEY (`invoice`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `order`
--

LOCK TABLES `order` WRITE;
/*!40000 ALTER TABLE `order` DISABLE KEYS */;
INSERT INTO `order` VALUES ('8e336313ae9b','ebenjosh@gmail.com','kompas','analisa','kartu_kredit',158022,2,'2016-10-02',60,'belum lunas'),('bf3bd03205db','ebenjosh@gmail.com','kompas','analisa','internet_banking',158022,2,'2016-10-03',60,'lunas');
/*!40000 ALTER TABLE `order` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `order2`
--

DROP TABLE IF EXISTS `order2`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `order2` (
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
  CONSTRAINT `order2_ibfk_1` FOREIGN KEY (`id_provinsi`) REFERENCES `provinsi` (`id_provinsi`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `order2_ibfk_2` FOREIGN KEY (`id_kota`) REFERENCES `kota` (`id_kota`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `order2`
--

LOCK TABLES `order2` WRITE;
/*!40000 ALTER TABLE `order2` DISABLE KEYS */;
INSERT INTO `order2` VALUES (3,'Yunita','1992-06-22','JL. Bungaran II','16','110','30252','yunita_rainbow@yahoo.com','085267730918','Y','Lunas','I88B1K358C69','one_way','2014-11-26 07:05:17'),(4,'Yunita','1992-06-22','JL. Bungaran II','16','110','30252','yunita_rainbow@yahoo.com','085267730918','N','Lunas','PQ9MK8KH6FFL','one_way','2014-11-28 19:05:42'),(5,'Yunita','1992-06-22','JL. Bungaran II','16','110','30252','yunita_rainbow@yahoo.com','085267730918','Y','Lunas','PQ9MK800D6B0','one_way','2014-11-28 19:13:07'),(6,'Yunita','1992-06-22','JL. Bungaran II','16','110','30252','yunita_rainbow@yahoo.com','085267730918','N','Lunas','NA90S4HF5LL0','one_way','2014-11-30 21:40:47'),(7,'Yunita','1992-06-22','JL. Bungaran II','16','110','30252','yunita_rainbow@yahoo.com','085267730918','N','Lunas','NA90S42J33CL','one_way','2014-11-30 21:44:13'),(8,'Yunita','1992-06-22','JL. Bungaran II','16','110','30252','yunita_rainbow@yahoo.com','085267730918','Y','Lunas','NA90S461E6JK','one_way','2014-11-30 22:19:00');
/*!40000 ALTER TABLE `order2` ENABLE KEYS */;
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
  CONSTRAINT `order_detail_ibfk_1` FOREIGN KEY (`id_order`) REFERENCES `order2` (`id_order`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `order_detail`
--

LOCK TABLES `order_detail` WRITE;
/*!40000 ALTER TABLE `order_detail` DISABLE KEYS */;
INSERT INTO `order_detail` VALUES (3,'Palembang (Boombaru) - Muntok (Tanjung Kalian)','2014-11-28','Dewasa',1,265000,0.1),(4,'Palembang (Boombaru) - Muntok (Tanjung Kalian)','2014-11-29','Dewasa',1,190000,0),(5,'Palembang (Boombaru) - Muntok (Tanjung Kalian)','2014-11-29','Dewasa',1,265000,0),(6,'Palembang (Boombaru) - Muntok (Tanjung Kalian)','2014-12-01','Dewasa',1,190000,0),(7,'Palembang (Boombaru) - Muntok (Tanjung Kalian)','2014-11-30','Dewasa',1,190000,0),(8,'Palembang (Boombaru) - Muntok (Tanjung Kalian)','2014-12-01','Dewasa',2,265000,0);
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
  CONSTRAINT `order_kelas_ibfk_1` FOREIGN KEY (`id_order`) REFERENCES `order2` (`id_order`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `order_kelas`
--

LOCK TABLES `order_kelas` WRITE;
/*!40000 ALTER TABLE `order_kelas` DISABLE KEYS */;
INSERT INTO `order_kelas` VALUES (3,'EKONOMI','N'),(3,'VIP','Y'),(4,'EKONOMI','Y'),(5,'EKONOMI','N'),(5,'VIP','Y'),(6,'EKONOMI','Y'),(7,'EKONOMI','Y'),(8,'EKONOMI','N'),(8,'VIP','Y');
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
  CONSTRAINT `order_meal_ibfk_1` FOREIGN KEY (`id_order`) REFERENCES `order2` (`id_order`) ON DELETE CASCADE ON UPDATE CASCADE,
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
  CONSTRAINT `order_pijat_ibfk_1` FOREIGN KEY (`id_order`) REFERENCES `order2` (`id_order`) ON DELETE CASCADE ON UPDATE CASCADE
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
  CONSTRAINT `order_seat_ibfk_1` FOREIGN KEY (`id_order`) REFERENCES `order2` (`id_order`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `order_seat`
--

LOCK TABLES `order_seat` WRITE;
/*!40000 ALTER TABLE `order_seat` DISABLE KEYS */;
INSERT INTO `order_seat` VALUES (3,'A1','Dewasa','yunita','Perempuan','2014-11-28'),(4,'A1','Dewasa','yunita','Laki-laki','2014-11-29'),(5,'A1','Dewasa','nita','Perempuan','2014-11-29'),(6,'A1','Dewasa','yunita','Perempuan','2014-12-01'),(7,'A1','Dewasa','yunita','Laki-laki','2014-11-30'),(8,'A1','Dewasa','yunita','Perempuan','2014-12-01'),(8,'A2','Dewasa','nita','Perempuan','2014-12-01');
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
INSERT INTO `profil` VALUES (1,'Yunita','1992-06-22','JL. Bungaran II','16','110','30252','yunita_rainbow@yahoo.com','085267730918','2014-11-26 06:54:50'),(3,'eben hezer','1994-05-11','efqefqef','14','80','28772','ebenhezerhasugian@gmail.com','08526259469','2016-04-12 15:02:22'),(4,'eben hezer','1995-04-18','fwefwefwef','51','275','98695','ebenjosh@gmail.com','08560987654','2016-08-11 10:45:43'),(5,'coba','1994-09-06','Indralaya','16','108','30662','coba@gmail.com','0711580110','2016-09-06 11:14:52'),(6,'tes','2000-09-06','tes','12','24','322','tes@gmail.com','42342','2016-09-06 11:44:58'),(7,'tes','2000-09-06','tes','11','1','21','tes@gmail.com','2','2016-09-06 11:49:01'),(8,'tes','2000-09-06','tes','11','1','21','tes@gmail.com','2','2016-09-06 11:50:15'),(9,'tes','2000-09-06','tes','11','1','21','tes@gmail.com','2','2016-09-06 11:51:42'),(10,'taasda','2000-09-06','af','11','12','534','halo@gmail.com','543','2016-09-06 11:52:57'),(11,'cek','2000-09-06','cek','14','78','36512','cek@gmail.com','56321','2016-09-06 11:54:26'),(12,'oke','2000-09-06','oke','52','286','12345','oke@gmail.com','98765','2016-09-06 11:56:50'),(13,'sakit','2000-09-06','sakit','51','274','8765','sakit@gmail.com','7654','2016-09-06 12:03:58'),(14,'admin',NULL,NULL,NULL,NULL,NULL,'admin',NULL,NULL),(15,NULL,NULL,NULL,NULL,NULL,NULL,'manager',NULL,NULL);
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
INSERT INTO `promo` VALUES (1,'Junio JRBL','Tabungan BRI','akapal.jpg','Y'),(2,'Jobs ','Lowongan kerja.','2promo.jpg','Y'),(3,'Go Riau','Gerakan Riau Berteknologi','promo_3.jpg','Y'),(4,'get fast...','Gerak Jalan dalam Rangkat HUT Riau Post','promo_4.jpg','Y'),(5,'Gerak Jalan Regu','Daftarkan segera team anda pada even ini','promo_5.jpg','Y'),(6,'HSBL-Riau-Pos','Pertandingan Bola Basket ','promo_8.jpg','Y'),(7,'Pariwisata Riau','Dinas Pariwisata dan Ekonomi Kreatif Provinsi Riau terus menggeliatkan promosi pariwisata lokal.','promo_4.jpg','Y'),(8,'Labersa-Riau Pos','Karena tanpa media sebuah bisnis tentunya akan cukup sulit dikenal oleh masyarakat luas terutama konsumen yang akan menjadi pasar bisnis itu sendiri. ','promo_8.jpg','Y');
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
INSERT INTO `provinsi` VALUES ('11','ACEH'),('12','SUMATERA UTARA'),('13','SUMATERA BARAT'),('14','RIAU'),('15','JAMBI'),('16','SUMATERA SELATAN'),('17','BENGKULU'),('18','LAMPUNG'),('19','KEPULAUAN BANGKA BELITUNG'),('21','KEPULAUAN RIAU'),('31','DKI JAKARTA'),('32','JAWA BARAT'),('33','JAWA TENGAH'),('34','DI YOGYAKARTA'),('35','JAWA TIMUR'),('36','BANTEN'),('51','BALI'),('52','NUSA TENGGARA BARAT'),('53','NUSA TENGGARA TIMUR'),('61','KALIMANTAN BARAT'),('62','KALIMANTAN TENGAH'),('63','KALIMANTAN SELATAN'),('64','KALIMANTAN TIMUR'),('71','SULAWESI UTARA'),('72','SULAWESI TENGAH'),('73','SULAWESI SELATAN'),('74','SULAWESI TENGGARA'),('75','GORONTALO'),('76','SULAWESI BARAT'),('81','MALUKU'),('82','MALUKU UTARA'),('91','PAPUA BARAT'),('94','PAPUA');
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
INSERT INTO `seat` VALUES (1,'VIP','A1','Y'),(2,'VIP','A2','Y'),(3,'VIP','A3','Y'),(4,'VIP','N','N'),(5,'VIP','A4','Y'),(6,'VIP','A5','Y'),(7,'VIP','A6','Y'),(8,'VIP','B1','Y'),(9,'VIP','B2','Y'),(10,'VIP','B3','Y'),(11,'VIP','N','N'),(12,'VIP','B4','Y'),(13,'VIP','B5','Y'),(14,'VIP','B6','Y'),(15,'VIP','C1','Y'),(16,'VIP','C2','Y'),(17,'VIP','C3','Y'),(18,'VIP','N','N'),(19,'VIP','C4','Y'),(20,'VIP','C5','Y'),(21,'VIP','C6','Y'),(22,'VIP','D1','Y'),(23,'VIP','D2','Y'),(24,'VIP','D3','Y'),(25,'VIP','N','N'),(26,'VIP','D4','Y'),(27,'VIP','D5','Y'),(28,'VIP','D6','Y'),(29,'VIP','E1','Y'),(30,'VIP','E2','Y'),(31,'VIP','E3','Y'),(32,'VIP','N','N'),(33,'VIP','E4','Y'),(34,'VIP','E5','Y'),(35,'VIP','E6','Y'),(36,'VIP','F1','Y'),(37,'VIP','F2','Y'),(38,'VIP','F3','Y'),(39,'VIP','N','N'),(40,'VIP','F4','Y'),(41,'VIP','F5','Y'),(42,'VIP','F6','Y'),(43,'VIP','G1','Y'),(44,'VIP','G2','Y'),(45,'VIP','G3','Y'),(46,'VIP','N','N'),(47,'VIP','G4','Y'),(48,'VIP','G5','Y'),(49,'VIP','G6','Y'),(528,'EKONOMI','N','N'),(527,'EKONOMI','B3','Y'),(526,'EKONOMI','B2','Y'),(525,'EKONOMI','B1','Y'),(524,'EKONOMI','A6','Y'),(523,'EKONOMI','A5','Y'),(522,'EKONOMI','A4','Y'),(521,'EKONOMI','N','N'),(520,'EKONOMI','A3','Y'),(519,'EKONOMI','A2','Y'),(518,'EKONOMI','A1','Y'),(529,'EKONOMI','B4','Y'),(530,'EKONOMI','B5','Y'),(531,'EKONOMI','B6','Y'),(532,'EKONOMI','C1','Y'),(533,'EKONOMI','C2','Y'),(534,'EKONOMI','C3','Y'),(535,'EKONOMI','N','N'),(536,'EKONOMI','C4','Y'),(537,'EKONOMI','C5','Y'),(538,'EKONOMI','C6','Y'),(539,'EKONOMI','D1','Y'),(540,'EKONOMI','D2','Y'),(541,'EKONOMI','D3','Y'),(542,'EKONOMI','N','N'),(543,'EKONOMI','D4','Y'),(544,'EKONOMI','D5','Y'),(545,'EKONOMI','D6','Y'),(546,'EKONOMI','E1','Y'),(547,'EKONOMI','E2','Y'),(548,'EKONOMI','E3','Y'),(549,'EKONOMI','N','N'),(550,'EKONOMI','E4','Y'),(551,'EKONOMI','E5','Y'),(552,'EKONOMI','E6','Y'),(553,'EKONOMI','F1','Y'),(554,'EKONOMI','F2','Y'),(555,'EKONOMI','F3','Y'),(556,'EKONOMI','N','N'),(557,'EKONOMI','F4','Y'),(558,'EKONOMI','F5','Y'),(559,'EKONOMI','F6','Y'),(560,'EKONOMI','G1','Y'),(561,'EKONOMI','G2','Y'),(562,'EKONOMI','G3','Y'),(563,'EKONOMI','N','N'),(564,'EKONOMI','G4','Y'),(565,'EKONOMI','G5','Y'),(566,'EKONOMI','G6','Y'),(567,'EKONOMI','H1','Y'),(568,'EKONOMI','H2','Y'),(569,'EKONOMI','H3','Y'),(570,'EKONOMI','N','N'),(571,'EKONOMI','H4','Y'),(572,'EKONOMI','H5','Y'),(573,'EKONOMI','H6','Y'),(574,'EKONOMI','I1','Y'),(575,'EKONOMI','I2','Y'),(576,'EKONOMI','I3','Y'),(577,'EKONOMI','N','N'),(578,'EKONOMI','I4','Y'),(579,'EKONOMI','I5','Y'),(580,'EKONOMI','I6','Y'),(581,'EKONOMI','N','N'),(582,'EKONOMI','N','N'),(583,'EKONOMI','N','N'),(584,'EKONOMI','N','N'),(585,'EKONOMI','J1','Y'),(586,'EKONOMI','N','N'),(587,'EKONOMI','N','N'),(588,'EKSEKUTIF A','N','N'),(589,'EKSEKUTIF A','N','N'),(590,'EKSEKUTIF A','A1 A','Y'),(591,'EKSEKUTIF A','A2 A','Y'),(592,'EKSEKUTIF A','N','N'),(593,'EKSEKUTIF A','A3 A','Y'),(594,'EKSEKUTIF A','A4 A','Y'),(595,'EKSEKUTIF A','N','N'),(596,'EKSEKUTIF A','N','N'),(597,'EKSEKUTIF A','N','N'),(598,'EKSEKUTIF A','B1 A','Y'),(599,'EKSEKUTIF A','B2 A','Y'),(600,'EKSEKUTIF A','B3 A','Y'),(601,'EKSEKUTIF A','N','N'),(602,'EKSEKUTIF A','B4 A','Y'),(603,'EKSEKUTIF A','B5 A','Y'),(604,'EKSEKUTIF A','B6 A','Y'),(605,'EKSEKUTIF A','N','N'),(606,'EKSEKUTIF A','C1 A','Y'),(607,'EKSEKUTIF A','C2 A','Y'),(608,'EKSEKUTIF A','C3 A','Y'),(609,'EKSEKUTIF A','C4 A','Y'),(610,'EKSEKUTIF A','N','N'),(611,'EKSEKUTIF A','C5 A','Y'),(612,'EKSEKUTIF A','C6 A','Y'),(613,'EKSEKUTIF A','C7 A','Y'),(614,'EKSEKUTIF A','C8 A','Y'),(615,'EKSEKUTIF A','D1 A','Y'),(616,'EKSEKUTIF A','D2 A','Y'),(617,'EKSEKUTIF A','D3 A','Y'),(618,'EKSEKUTIF A','D4 A','Y'),(619,'EKSEKUTIF A','N','N'),(620,'EKSEKUTIF A','D5 A','Y'),(621,'EKSEKUTIF A','D6 A','Y'),(622,'EKSEKUTIF A','D7 A','Y'),(623,'EKSEKUTIF A','D8 A','Y'),(624,'EKSEKUTIF A','E1 A','Y'),(625,'EKSEKUTIF A','E2 A','Y'),(626,'EKSEKUTIF A','E3 A','Y'),(627,'EKSEKUTIF A','E4 A','Y'),(628,'EKSEKUTIF A','N','N'),(629,'EKSEKUTIF A','E5 A','Y'),(630,'EKSEKUTIF A','E6 A','Y'),(631,'EKSEKUTIF A','E7 A','Y'),(632,'EKSEKUTIF A','E8 A','Y'),(633,'EKSEKUTIF A','F1 A','Y'),(634,'EKSEKUTIF A','F2 A','Y'),(635,'EKSEKUTIF A','F3 A','Y'),(636,'EKSEKUTIF A','F4 A','Y'),(637,'EKSEKUTIF A','N','N'),(638,'EKSEKUTIF A','F5 A','Y'),(639,'EKSEKUTIF A','F6 A','Y'),(640,'EKSEKUTIF A','F7 A','Y'),(641,'EKSEKUTIF A','F8 A','Y'),(642,'EKSEKUTIF A','G1 A','Y'),(643,'EKSEKUTIF A','G2 A','Y'),(644,'EKSEKUTIF A','G3 A','Y'),(645,'EKSEKUTIF A','G4 A','Y'),(646,'EKSEKUTIF A','N','N'),(647,'EKSEKUTIF A','G5 A','Y'),(648,'EKSEKUTIF A','G6 A','Y'),(649,'EKSEKUTIF A','G7 A','Y'),(650,'EKSEKUTIF A','G8 A','Y'),(651,'EKSEKUTIF A','H1 A','Y'),(652,'EKSEKUTIF A','H2 A','Y'),(653,'EKSEKUTIF A','H3 A','Y'),(654,'EKSEKUTIF A','H4 A','Y'),(655,'EKSEKUTIF A','N','N'),(656,'EKSEKUTIF A','H5 A','Y'),(657,'EKSEKUTIF A','H6 A','Y'),(658,'EKSEKUTIF A','H7 A','Y'),(659,'EKSEKUTIF A','H8 A','Y'),(660,'EKSEKUTIF A','I1 A','Y'),(661,'EKSEKUTIF A','I2 A','Y'),(662,'EKSEKUTIF A','I3 A','Y'),(663,'EKSEKUTIF A','I4 A','Y'),(664,'EKSEKUTIF A','N','N'),(665,'EKSEKUTIF A','I5 A','Y'),(666,'EKSEKUTIF A','I6 A','Y'),(667,'EKSEKUTIF A','I7 A','Y'),(668,'EKSEKUTIF A','I8 A','Y'),(669,'EKSEKUTIF B','A1 B','Y'),(670,'EKSEKUTIF B','A2 B','Y'),(671,'EKSEKUTIF B','A3 B','Y'),(672,'EKSEKUTIF B','A4 B','Y'),(673,'EKSEKUTIF B','A5 B','Y'),(674,'EKSEKUTIF B','N','N'),(675,'EKSEKUTIF B','A6 B','Y'),(676,'EKSEKUTIF B','A7 B','Y'),(677,'EKSEKUTIF B','A8 B','Y'),(678,'EKSEKUTIF B','A9 B','Y'),(679,'EKSEKUTIF B','A10 B','Y'),(680,'EKSEKUTIF B','B1 B','Y'),(681,'EKSEKUTIF B','B2 B','Y'),(682,'EKSEKUTIF B','B3 B','Y'),(683,'EKSEKUTIF B','B4 B','Y'),(684,'EKSEKUTIF B','B5 B','Y'),(685,'EKSEKUTIF B','N','N'),(686,'EKSEKUTIF B','B6 B','Y'),(687,'EKSEKUTIF B','B7 B','Y'),(688,'EKSEKUTIF B','B8 B','Y'),(689,'EKSEKUTIF B','B9 B','Y'),(690,'EKSEKUTIF B','B10 B','Y'),(691,'EKSEKUTIF B','C1 B','Y'),(692,'EKSEKUTIF B','C2 B','Y'),(693,'EKSEKUTIF B','C3 B','Y'),(694,'EKSEKUTIF B','C4 B','Y'),(695,'EKSEKUTIF B','C5 B','Y'),(696,'EKSEKUTIF B','N','N'),(697,'EKSEKUTIF B','C6 B','Y'),(698,'EKSEKUTIF B','C7 B','Y'),(699,'EKSEKUTIF B','C8 B','Y'),(700,'EKSEKUTIF B','C9 B','Y'),(701,'EKSEKUTIF B','C10 B','Y'),(702,'EKSEKUTIF B','D1 B','Y'),(703,'EKSEKUTIF B','D2 B','Y'),(704,'EKSEKUTIF B','D3 B','Y'),(705,'EKSEKUTIF B','D4 B','Y'),(706,'EKSEKUTIF B','D5 B','Y'),(707,'EKSEKUTIF B','N','N'),(708,'EKSEKUTIF B','D6 B','Y'),(709,'EKSEKUTIF B','D7 B','Y'),(710,'EKSEKUTIF B','D8 B','Y'),(711,'EKSEKUTIF B','D9 B','Y'),(712,'EKSEKUTIF B','D10 B','Y'),(713,'EKSEKUTIF B','E1 B','Y'),(714,'EKSEKUTIF B','E2 B','Y'),(715,'EKSEKUTIF B','E3 B','Y'),(716,'EKSEKUTIF B','E4 B','Y'),(717,'EKSEKUTIF B','E5 B','Y'),(718,'EKSEKUTIF B','N','N'),(719,'EKSEKUTIF B','E6 B','Y'),(720,'EKSEKUTIF B','E7 B','Y'),(721,'EKSEKUTIF B','E8 B','Y'),(722,'EKSEKUTIF B','E9 B','Y'),(723,'EKSEKUTIF B','E10 B','Y'),(724,'EKSEKUTIF B','F1 B','Y'),(725,'EKSEKUTIF B','F2 B','Y'),(726,'EKSEKUTIF B','F3 B','Y'),(727,'EKSEKUTIF B','F4 B','Y'),(728,'EKSEKUTIF B','F5 B','Y'),(729,'EKSEKUTIF B','N','N'),(730,'EKSEKUTIF B','F6 B','Y'),(731,'EKSEKUTIF B','F7 B','Y'),(732,'EKSEKUTIF B','F8 B','Y'),(733,'EKSEKUTIF B','F9 B','Y'),(734,'EKSEKUTIF B','F10 B','Y'),(735,'EKSEKUTIF B','G1 B','Y'),(736,'EKSEKUTIF B','G2 B','Y'),(737,'EKSEKUTIF B','G3 B','Y'),(738,'EKSEKUTIF B','G4 B','Y'),(739,'EKSEKUTIF B','G5 B','Y'),(740,'EKSEKUTIF B','N','N'),(741,'EKSEKUTIF B','G6 B','Y'),(742,'EKSEKUTIF B','G7 B','Y'),(743,'EKSEKUTIF B','G8 B','Y'),(744,'EKSEKUTIF B','G9 B','Y'),(745,'EKSEKUTIF B','G10 B','Y'),(746,'EKSEKUTIF B','H1 B','Y'),(747,'EKSEKUTIF B','H2 B','Y'),(748,'EKSEKUTIF B','H3 B','Y'),(749,'EKSEKUTIF B','H4 B','Y'),(750,'EKSEKUTIF B','H5 B','Y'),(751,'EKSEKUTIF B','N','N'),(752,'EKSEKUTIF B','H6 B','Y'),(753,'EKSEKUTIF B','H7 B','Y'),(754,'EKSEKUTIF B','H8 B','Y'),(755,'EKSEKUTIF B','H9 B','Y'),(756,'EKSEKUTIF B','H10 B','Y'),(757,'EKSEKUTIF C','A1 C','Y'),(758,'EKSEKUTIF C','A2 C','Y'),(759,'EKSEKUTIF C','N','N'),(760,'EKSEKUTIF C','A3 C','Y'),(761,'EKSEKUTIF C','A4 C','Y'),(762,'EKSEKUTIF C','A5 C','Y'),(763,'EKSEKUTIF C','A6 C','Y'),(764,'EKSEKUTIF C','A7 C','Y'),(765,'EKSEKUTIF C','N','N'),(766,'EKSEKUTIF C','A8 C','Y'),(767,'EKSEKUTIF C','A9 C','Y'),(768,'EKSEKUTIF C','B1 C','Y'),(769,'EKSEKUTIF C','B2 C','Y'),(770,'EKSEKUTIF C','N','N'),(771,'EKSEKUTIF C','B3 C','Y'),(772,'EKSEKUTIF C','B4 C','Y'),(773,'EKSEKUTIF C','B5 C','Y'),(774,'EKSEKUTIF C','B6 C','Y'),(775,'EKSEKUTIF C','B7 C','Y'),(776,'EKSEKUTIF C','N','N'),(777,'EKSEKUTIF C','B8 C','Y'),(778,'EKSEKUTIF C','B9 C','Y'),(779,'EKSEKUTIF C','C1 C','Y'),(780,'EKSEKUTIF C','C2 C','Y'),(781,'EKSEKUTIF C','N','N'),(782,'EKSEKUTIF C','C3 C','Y'),(783,'EKSEKUTIF C','C4 C','Y'),(784,'EKSEKUTIF C','C5 C','Y'),(785,'EKSEKUTIF C','C6 C','Y'),(786,'EKSEKUTIF C','C7 C','Y'),(787,'EKSEKUTIF C','N','N'),(788,'EKSEKUTIF C','C8 C','Y'),(789,'EKSEKUTIF C','C9 C','Y'),(790,'EKSEKUTIF C','D1 C','Y'),(791,'EKSEKUTIF C','D2 C','Y'),(792,'EKSEKUTIF C','N','N'),(793,'EKSEKUTIF C','D3 C','Y'),(794,'EKSEKUTIF C','D4 C','Y'),(795,'EKSEKUTIF C','D5 C','Y'),(796,'EKSEKUTIF C','D6 C','Y'),(797,'EKSEKUTIF C','D7 C','Y'),(798,'EKSEKUTIF C','N','N'),(799,'EKSEKUTIF C','D8 C','Y'),(800,'EKSEKUTIF C','D9 C','Y'),(801,'EKSEKUTIF C','E1 C','Y'),(802,'EKSEKUTIF C','E2 C','Y'),(803,'EKSEKUTIF C','N','N'),(804,'EKSEKUTIF C','E3 C','Y'),(805,'EKSEKUTIF C','E4 C','Y'),(806,'EKSEKUTIF C','E5 C','Y'),(807,'EKSEKUTIF C','E6 C','Y'),(808,'EKSEKUTIF C','E7 C','Y'),(809,'EKSEKUTIF C','N','N'),(810,'EKSEKUTIF C','E8 C','Y'),(811,'EKSEKUTIF C','E9 C','Y'),(812,'EKSEKUTIF C','F1 C','Y'),(813,'EKSEKUTIF C','F2 C','Y'),(814,'EKSEKUTIF C','N','N'),(815,'EKSEKUTIF C','F3 C','Y'),(816,'EKSEKUTIF C','F4 C','Y'),(817,'EKSEKUTIF C','F5 C','Y'),(818,'EKSEKUTIF C','F6 C','Y'),(819,'EKSEKUTIF C','F7 C','Y'),(820,'EKSEKUTIF C','N','N'),(821,'EKSEKUTIF C','F8 C','Y'),(822,'EKSEKUTIF C','F9 C','Y'),(823,'EKSEKUTIF C','G1 C','Y'),(824,'EKSEKUTIF C','G2 C','Y'),(825,'EKSEKUTIF C','N','N'),(826,'EKSEKUTIF C','G3 C','Y'),(827,'EKSEKUTIF C','G4 C','Y'),(828,'EKSEKUTIF C','G5 C','Y'),(829,'EKSEKUTIF C','G6 C','Y'),(830,'EKSEKUTIF C','G7 C','Y'),(831,'EKSEKUTIF C','N','N'),(832,'EKSEKUTIF C','G8 C','Y'),(833,'EKSEKUTIF C','G9 C','Y'),(834,'EKSEKUTIF C','H1 C','Y'),(835,'EKSEKUTIF C','H2 C','Y'),(836,'EKSEKUTIF C','N','N'),(837,'EKSEKUTIF C','H3 C','Y'),(838,'EKSEKUTIF C','H4 C','Y'),(839,'EKSEKUTIF C','H5 C','Y'),(840,'EKSEKUTIF C','H6 C','Y'),(841,'EKSEKUTIF C','H7 C','Y'),(842,'EKSEKUTIF C','N','N'),(843,'EKSEKUTIF C','H8 C','Y'),(844,'EKSEKUTIF C','H9 C','Y'),(845,'EKSEKUTIF C','I1 C','Y'),(846,'EKSEKUTIF C','I2 C','Y'),(847,'EKSEKUTIF C','N','N'),(848,'EKSEKUTIF C','N','N'),(849,'EKSEKUTIF C','I3 C','Y'),(850,'EKSEKUTIF C','I4 C','Y'),(851,'EKSEKUTIF C','I5 C','Y'),(852,'EKSEKUTIF C','N','N'),(853,'EKSEKUTIF C','N','N'),(854,'EKSEKUTIF C','I6 C','Y'),(855,'EKSEKUTIF C','I7 C','Y');
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
INSERT INTO `sms_history` VALUES (1,'085267730918','Nomor Tiket anda adalah = 1411260001 | ',14,'2014-11-26 16:13:21'),(4,'085267730918','Nomor Tiket anda adalah = 1411280001 | ',13,'2014-11-28 19:06:16'),(6,'085267730918','Nomor Tiket anda adalah = 1411280002 | ',14,'2014-11-28 19:13:46'),(7,'085267730918','dapatkan promo upgrade kelas sekarang. www.ekspressbahari.com',14,'2014-11-28 21:21:40'),(8,'085267730918','promo upgrade kelas di www.expressbahari.com',14,'2014-11-28 21:26:04'),(17,'085267730918','Nomor Tiket Anda adalah = 1411300003 | 1411300004 | PT. Pelayaran Sakti Inti Makmur Palembang. Terima Kasih',14,'2014-11-30 22:20:13'),(18,'085267730918','promo upgrade class, temukan sekarang. hanya di www.ekspressbahari.com',14,'2014-11-30 22:26:47'),(19,'085228034258','Nomor Tiket Anda adalah = 1412030001 | 1412030002 | PT. Pelayaran Sakti Inti Makmur Palembang. Terima Kasih',14,'2014-12-03 16:24:06');
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
INSERT INTO `sms_outbox` VALUES (1,'085267730918','',14,'2016-09-12 11:33:54'),(2,'08526259469','',14,'2016-09-12 11:33:54'),(3,'08560987654','',14,'2016-09-12 11:33:54'),(4,'0711580110','',14,'2016-09-12 11:33:54'),(5,'42342','',14,'2016-09-12 11:33:54'),(6,'2','',14,'2016-09-12 11:33:54'),(7,'2','',14,'2016-09-12 11:33:54'),(8,'2','',14,'2016-09-12 11:33:54'),(9,'543','',14,'2016-09-12 11:33:54'),(10,'56321','',14,'2016-09-12 11:33:54'),(11,'98765','',14,'2016-09-12 11:33:54'),(12,'7654','',14,'2016-09-12 11:33:54'),(13,'','',14,'2016-09-12 11:33:54'),(14,'','',14,'2016-09-12 11:33:54'),(15,'085267730918','',14,'2016-09-12 11:35:57'),(16,'08526259469','',14,'2016-09-12 11:35:57'),(17,'08560987654','',14,'2016-09-12 11:35:57'),(18,'0711580110','',14,'2016-09-12 11:35:57'),(19,'42342','',14,'2016-09-12 11:35:57'),(20,'2','',14,'2016-09-12 11:35:57'),(21,'2','',14,'2016-09-12 11:35:57'),(22,'2','',14,'2016-09-12 11:35:57'),(23,'543','',14,'2016-09-12 11:35:57'),(24,'56321','',14,'2016-09-12 11:35:57'),(25,'98765','',14,'2016-09-12 11:35:57'),(26,'7654','',14,'2016-09-12 11:35:57'),(27,'','',14,'2016-09-12 11:35:57'),(28,'','',14,'2016-09-12 11:35:57'),(29,'085267730918','ini pesan',14,'2016-09-12 11:36:26'),(30,'08526259469','ini pesan',14,'2016-09-12 11:36:26'),(31,'08560987654','ini pesan',14,'2016-09-12 11:36:26'),(32,'0711580110','ini pesan',14,'2016-09-12 11:36:26'),(33,'42342','ini pesan',14,'2016-09-12 11:36:26'),(34,'2','ini pesan',14,'2016-09-12 11:36:26'),(35,'2','ini pesan',14,'2016-09-12 11:36:26'),(36,'2','ini pesan',14,'2016-09-12 11:36:26'),(37,'543','ini pesan',14,'2016-09-12 11:36:26'),(38,'56321','ini pesan',14,'2016-09-12 11:36:26'),(39,'98765','ini pesan',14,'2016-09-12 11:36:26'),(40,'7654','ini pesan',14,'2016-09-12 11:36:26'),(41,'','ini pesan',14,'2016-09-12 11:36:26'),(42,'','ini pesan',14,'2016-09-12 11:36:26'),(43,'085267730918','',14,'2016-09-12 11:39:08'),(44,'08526259469','',14,'2016-09-12 11:39:08'),(45,'08560987654','',14,'2016-09-12 11:39:08'),(46,'0711580110','',14,'2016-09-12 11:39:08'),(47,'42342','',14,'2016-09-12 11:39:08'),(48,'2','',14,'2016-09-12 11:39:08'),(49,'2','',14,'2016-09-12 11:39:08'),(50,'2','',14,'2016-09-12 11:39:08'),(51,'543','',14,'2016-09-12 11:39:08'),(52,'56321','',14,'2016-09-12 11:39:08'),(53,'98765','',14,'2016-09-12 11:39:08'),(54,'7654','',14,'2016-09-12 11:39:08'),(55,'','',14,'2016-09-12 11:39:08'),(56,'','',14,'2016-09-12 11:39:08'),(57,'085267730918','',14,'2016-09-12 11:39:27'),(58,'08526259469','',14,'2016-09-12 11:39:27'),(59,'08560987654','',14,'2016-09-12 11:39:27'),(60,'0711580110','',14,'2016-09-12 11:39:27'),(61,'42342','',14,'2016-09-12 11:39:27'),(62,'2','',14,'2016-09-12 11:39:27'),(63,'2','',14,'2016-09-12 11:39:27'),(64,'2','',14,'2016-09-12 11:39:27'),(65,'543','',14,'2016-09-12 11:39:27'),(66,'56321','',14,'2016-09-12 11:39:27'),(67,'98765','',14,'2016-09-12 11:39:27'),(68,'7654','',14,'2016-09-12 11:39:27'),(69,'','',14,'2016-09-12 11:39:27'),(70,'','',14,'2016-09-12 11:39:27'),(71,'085267730918','',14,'2016-09-12 11:39:50'),(72,'08526259469','',14,'2016-09-12 11:39:50'),(73,'08560987654','',14,'2016-09-12 11:39:50'),(74,'0711580110','',14,'2016-09-12 11:39:50'),(75,'42342','',14,'2016-09-12 11:39:50'),(76,'2','',14,'2016-09-12 11:39:50'),(77,'2','',14,'2016-09-12 11:39:50'),(78,'2','',14,'2016-09-12 11:39:50'),(79,'543','',14,'2016-09-12 11:39:50'),(80,'56321','',14,'2016-09-12 11:39:50'),(81,'98765','',14,'2016-09-12 11:39:50'),(82,'7654','',14,'2016-09-12 11:39:50'),(83,'','',14,'2016-09-12 11:39:50'),(84,'','',14,'2016-09-12 11:39:50'),(85,'085267730918','',14,'2016-09-12 11:41:07'),(86,'08526259469','',14,'2016-09-12 11:41:07'),(87,'08560987654','',14,'2016-09-12 11:41:07'),(88,'0711580110','',14,'2016-09-12 11:41:07'),(89,'42342','',14,'2016-09-12 11:41:07'),(90,'2','',14,'2016-09-12 11:41:07'),(91,'2','',14,'2016-09-12 11:41:07'),(92,'2','',14,'2016-09-12 11:41:07'),(93,'543','',14,'2016-09-12 11:41:07'),(94,'56321','',14,'2016-09-12 11:41:07'),(95,'98765','',14,'2016-09-12 11:41:07'),(96,'7654','',14,'2016-09-12 11:41:07'),(97,'','',14,'2016-09-12 11:41:07'),(98,'','',14,'2016-09-12 11:41:07'),(99,'085267730918','',14,'2016-09-12 12:07:40'),(100,'08526259469','',14,'2016-09-12 12:07:40'),(101,'08560987654','',14,'2016-09-12 12:07:40'),(102,'0711580110','',14,'2016-09-12 12:07:40'),(103,'42342','',14,'2016-09-12 12:07:40'),(104,'2','',14,'2016-09-12 12:07:40'),(105,'2','',14,'2016-09-12 12:07:40'),(106,'2','',14,'2016-09-12 12:07:40'),(107,'543','',14,'2016-09-12 12:07:40'),(108,'56321','',14,'2016-09-12 12:07:40'),(109,'98765','',14,'2016-09-12 12:07:40'),(110,'7654','',14,'2016-09-12 12:07:40'),(111,'','',14,'2016-09-12 12:07:40'),(112,'','',14,'2016-09-12 12:07:40'),(113,'085267730918','telor',14,'2016-09-12 12:08:01'),(114,'08526259469','telor',14,'2016-09-12 12:08:01'),(115,'08560987654','telor',14,'2016-09-12 12:08:01'),(116,'0711580110','telor',14,'2016-09-12 12:08:01'),(117,'42342','telor',14,'2016-09-12 12:08:01'),(118,'2','telor',14,'2016-09-12 12:08:01'),(119,'2','telor',14,'2016-09-12 12:08:01'),(120,'2','telor',14,'2016-09-12 12:08:01'),(121,'543','telor',14,'2016-09-12 12:08:01'),(122,'56321','telor',14,'2016-09-12 12:08:01'),(123,'98765','telor',14,'2016-09-12 12:08:01'),(124,'7654','telor',14,'2016-09-12 12:08:01'),(125,'','telor',14,'2016-09-12 12:08:01'),(126,'','telor',14,'2016-09-12 12:08:01'),(127,'085267730918','pos',0,'2016-09-12 12:18:47'),(128,'085267730918','pokl',0,'2016-09-12 12:19:19'),(129,'085267730918','hai leh nalan?',14,'2016-09-12 12:20:41');
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
INSERT INTO `susunan` VALUES ('VIP',7,7),('EKSEKUTIF A',9,9),('EKSEKUTIF B',8,11),('EKSEKUTIF C',9,11),('EKONOMI',10,7);
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
INSERT INTO `tarif` VALUES (1,'VIP','Dewasa',265000,474000),(2,'VIP','Anak',225000,394000),(3,'VIP','Bayi',20000,NULL),(4,'Eksekutif','Dewasa',215000,374000),(5,'Eksekutif','Anak',175000,294000),(6,'Ekonomi','Dewasa',190000,NULL),(7,'Ekonomi','Anak',150000,NULL);
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
INSERT INTO `tiket` VALUES ('1411260001','I88B1K358C69','2014-11-26 09:44:59'),('1411280001','PQ9MK8KH6FFL','2014-11-28 19:06:16'),('1411280002','PQ9MK800D6B0','2014-11-28 19:13:45'),('1411300001','NA90S4HF5LL0','2014-11-30 21:41:11'),('1411300002','NA90S42J33CL','2014-11-30 22:07:33'),('1411300003','NA90S461E6JK','2014-11-30 22:20:12'),('1411300004','NA90S461E6JK','2014-11-30 22:20:12'),('1412030001','RO45S2B713AC','2014-12-03 16:24:03'),('1412030002','RO45S2B713AC','2014-12-03 16:24:04');
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
INSERT INTO `tindaklanjut` VALUES (9,'Pengiriman yang lama kali','oke.png','oke','2014-11-18 15:54:43'),(10,'Barang diterima dalam kemasan yang kurang baik','oke.png','Terimakasih. Kami sudah mengaudit pegawai kami','2014-11-18 15:55:03'),(11,'Harga terlalu mahal','oke.png','Kita akan pertimbangkan soal harga','2014-11-18 15:55:22'),(12,'Kapan ada promo bagi pelanggan setia?','oke.png','Secepatnya. Tks','2014-11-18 15:55:37'),(13,'Kapan penerimaan pegawai riau pos?','oke.png','untuk sementara belum ada.','2016-09-02 15:43:53');
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

-- Dump completed on 2016-09-27  1:03:06
