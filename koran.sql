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
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `agen`
--

LOCK TABLES `agen` WRITE;
/*!40000 ALTER TABLE `agen` DISABLE KEYS */;
INSERT INTO `agen` VALUES (1,'CV. Citra Cempaka','JL. Sudirman Pekanbaru','(0761) 351786','Y',NULL);
INSERT INTO `agen` VALUES (2,'CV. Handoyo','JL. A.Yani Pekanbaru','(0761) 413767','Y',NULL);
INSERT INTO `agen` VALUES (3,'CV. Sejahtera','JL. Kol. H. Makmur Pekanbaru','(0761) 411599','Y',NULL);
INSERT INTO `agen` VALUES (4,'CV. Solid Brother','JL. Slamet Riyadi Perawang','(0761) 362451','Y',NULL);
INSERT INTO `agen` VALUES (5,'CV. Holiday','JL.  Kampar Raya Perumnas Bengkalis','(0761) 842361','Y','2014-11-17 09:37:32');
INSERT INTO `agen` VALUES (6,'CV. Rahmat Terang','JL. Jend. A. Yani Pelalawan','(0761) 513733','Y','2014-11-17 09:39:28');
INSERT INTO `agen` VALUES (7,'CV. Megantoro','JL. Jenderal Sudirman Taluk Kuantan','(0761) 371544','Y','2014-11-17 09:43:20');
INSERT INTO `agen` VALUES (8,'CV. Mitra Bersama','JL. Basuki Rahmat Meranti','(0761) 822382','Y','2014-11-17 09:44:04');
INSERT INTO `agen` VALUES (9,'CV. Ferga Delaga Dunia','JL. Mayor Salim Siak Indrapura','(0761) 371831','Y','2014-11-17 09:44:54');
INSERT INTO `agen` VALUES (10,'CV. Tanpa Batas','JL. Basuki Rahmat Tjuadja Kandis','(0761) 372696','Y','2014-11-17 09:45:51');
INSERT INTO `agen` VALUES (12,'CV. Rapi','JL. Tanjung Gelap Kota Dumai','(0761) 389766','Y','2014-11-17 09:47:37');
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
INSERT INTO `bank` VALUES (6,'BNI','12345678','Eben Hezer Josapat Hasugian');
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
  `tahun` int(4) DEFAULT NULL,
  `username` varchar(100) DEFAULT NULL,
  UNIQUE KEY `username_idx` (`username`),
  KEY `id_polling` (`id_polling`),
  CONSTRAINT `hasil_polling_ibfk_1` FOREIGN KEY (`id_polling`) REFERENCES `polling` (`id_polling`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hasil_polling`
--

LOCK TABLES `hasil_polling` WRITE;
/*!40000 ALTER TABLE `hasil_polling` DISABLE KEYS */;
INSERT INTO `hasil_polling` VALUES (1,0,2016,NULL);
INSERT INTO `hasil_polling` VALUES (1,1,2016,NULL);
INSERT INTO `hasil_polling` VALUES (1,2,2016,NULL);
INSERT INTO `hasil_polling` VALUES (1,3,2016,NULL);
INSERT INTO `hasil_polling` VALUES (1,4,2016,NULL);
INSERT INTO `hasil_polling` VALUES (1,5,2016,NULL);
INSERT INTO `hasil_polling` VALUES (1,6,2016,NULL);
INSERT INTO `hasil_polling` VALUES (1,0,2016,NULL);
INSERT INTO `hasil_polling` VALUES (1,8,2016,NULL);
INSERT INTO `hasil_polling` VALUES (1,4,2016,NULL);
INSERT INTO `hasil_polling` VALUES (1,1,2016,NULL);
INSERT INTO `hasil_polling` VALUES (1,4,2016,NULL);
INSERT INTO `hasil_polling` VALUES (1,9,2016,NULL);
INSERT INTO `hasil_polling` VALUES (1,2,2016,NULL);
INSERT INTO `hasil_polling` VALUES (1,8,2016,NULL);
INSERT INTO `hasil_polling` VALUES (1,8,2016,NULL);
INSERT INTO `hasil_polling` VALUES (1,6,2016,NULL);
INSERT INTO `hasil_polling` VALUES (1,6,2016,NULL);
INSERT INTO `hasil_polling` VALUES (1,10,2016,NULL);
INSERT INTO `hasil_polling` VALUES (1,3,2016,NULL);
INSERT INTO `hasil_polling` VALUES (1,5,2016,NULL);
INSERT INTO `hasil_polling` VALUES (1,0,2016,NULL);
INSERT INTO `hasil_polling` VALUES (1,7,2016,NULL);
INSERT INTO `hasil_polling` VALUES (1,6,2016,NULL);
INSERT INTO `hasil_polling` VALUES (1,1,2016,NULL);
INSERT INTO `hasil_polling` VALUES (1,3,2016,NULL);
INSERT INTO `hasil_polling` VALUES (1,5,2016,NULL);
INSERT INTO `hasil_polling` VALUES (1,1,2016,NULL);
INSERT INTO `hasil_polling` VALUES (1,9,2016,NULL);
INSERT INTO `hasil_polling` VALUES (1,8,2016,NULL);
INSERT INTO `hasil_polling` VALUES (1,7,2016,NULL);
INSERT INTO `hasil_polling` VALUES (1,10,2016,NULL);
INSERT INTO `hasil_polling` VALUES (1,9,2016,NULL);
INSERT INTO `hasil_polling` VALUES (1,9,2016,NULL);
INSERT INTO `hasil_polling` VALUES (1,8,2016,NULL);
INSERT INTO `hasil_polling` VALUES (1,10,2016,NULL);
INSERT INTO `hasil_polling` VALUES (1,8,2016,NULL);
INSERT INTO `hasil_polling` VALUES (1,7,2016,NULL);
INSERT INTO `hasil_polling` VALUES (1,10,2016,NULL);
INSERT INTO `hasil_polling` VALUES (1,10,2016,NULL);
INSERT INTO `hasil_polling` VALUES (1,8,2016,NULL);
INSERT INTO `hasil_polling` VALUES (1,9,2016,NULL);
INSERT INTO `hasil_polling` VALUES (1,7,2016,NULL);
INSERT INTO `hasil_polling` VALUES (1,7,2016,NULL);
INSERT INTO `hasil_polling` VALUES (1,9,2016,NULL);
INSERT INTO `hasil_polling` VALUES (1,10,2016,NULL);
INSERT INTO `hasil_polling` VALUES (1,10,2016,NULL);
INSERT INTO `hasil_polling` VALUES (1,10,2016,NULL);
INSERT INTO `hasil_polling` VALUES (1,9,2016,NULL);
INSERT INTO `hasil_polling` VALUES (1,10,2016,NULL);
INSERT INTO `hasil_polling` VALUES (1,9,2016,NULL);
INSERT INTO `hasil_polling` VALUES (1,9,2016,NULL);
INSERT INTO `hasil_polling` VALUES (1,9,2016,NULL);
INSERT INTO `hasil_polling` VALUES (1,10,2016,NULL);
INSERT INTO `hasil_polling` VALUES (1,10,2016,NULL);
INSERT INTO `hasil_polling` VALUES (1,10,2016,NULL);
INSERT INTO `hasil_polling` VALUES (1,9,2016,NULL);
INSERT INTO `hasil_polling` VALUES (1,10,2016,NULL);
INSERT INTO `hasil_polling` VALUES (1,9,2016,NULL);
INSERT INTO `hasil_polling` VALUES (1,9,2016,NULL);
INSERT INTO `hasil_polling` VALUES (1,9,2016,NULL);
INSERT INTO `hasil_polling` VALUES (1,10,2016,NULL);
INSERT INTO `hasil_polling` VALUES (1,10,2016,NULL);
INSERT INTO `hasil_polling` VALUES (1,9,2016,NULL);
INSERT INTO `hasil_polling` VALUES (1,9,2016,NULL);
INSERT INTO `hasil_polling` VALUES (1,10,2016,NULL);
INSERT INTO `hasil_polling` VALUES (1,10,2016,NULL);
INSERT INTO `hasil_polling` VALUES (1,9,2016,NULL);
INSERT INTO `hasil_polling` VALUES (1,9,2016,NULL);
INSERT INTO `hasil_polling` VALUES (1,10,2016,NULL);
INSERT INTO `hasil_polling` VALUES (1,9,2016,NULL);
INSERT INTO `hasil_polling` VALUES (1,10,2016,NULL);
INSERT INTO `hasil_polling` VALUES (1,10,2016,NULL);
INSERT INTO `hasil_polling` VALUES (1,10,2016,NULL);
INSERT INTO `hasil_polling` VALUES (1,9,2016,NULL);
INSERT INTO `hasil_polling` VALUES (1,9,2016,NULL);
INSERT INTO `hasil_polling` VALUES (1,10,2016,NULL);
INSERT INTO `hasil_polling` VALUES (1,9,2016,NULL);
INSERT INTO `hasil_polling` VALUES (1,9,2016,NULL);
INSERT INTO `hasil_polling` VALUES (1,10,2016,NULL);
INSERT INTO `hasil_polling` VALUES (1,10,2016,NULL);
INSERT INTO `hasil_polling` VALUES (1,10,2016,NULL);
INSERT INTO `hasil_polling` VALUES (1,9,2016,NULL);
INSERT INTO `hasil_polling` VALUES (1,9,2016,NULL);
INSERT INTO `hasil_polling` VALUES (1,10,2016,NULL);
INSERT INTO `hasil_polling` VALUES (1,9,2016,NULL);
INSERT INTO `hasil_polling` VALUES (1,10,2016,NULL);
INSERT INTO `hasil_polling` VALUES (1,9,2016,NULL);
INSERT INTO `hasil_polling` VALUES (1,9,2016,NULL);
INSERT INTO `hasil_polling` VALUES (1,9,2016,NULL);
INSERT INTO `hasil_polling` VALUES (1,9,2016,NULL);
INSERT INTO `hasil_polling` VALUES (1,10,2016,NULL);
INSERT INTO `hasil_polling` VALUES (1,10,2016,NULL);
INSERT INTO `hasil_polling` VALUES (1,9,2016,NULL);
INSERT INTO `hasil_polling` VALUES (1,9,2016,NULL);
INSERT INTO `hasil_polling` VALUES (1,9,2016,NULL);
INSERT INTO `hasil_polling` VALUES (1,10,2016,NULL);
INSERT INTO `hasil_polling` VALUES (1,9,2016,NULL);
INSERT INTO `hasil_polling` VALUES (1,9,2016,NULL);
INSERT INTO `hasil_polling` VALUES (1,10,2016,NULL);
INSERT INTO `hasil_polling` VALUES (1,8,2016,'');
INSERT INTO `hasil_polling` VALUES (1,8,2016,'gml@gml');
/*!40000 ALTER TABLE `hasil_polling` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hasil_polling_sms`
--

DROP TABLE IF EXISTS `hasil_polling_sms`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hasil_polling_sms` (
  `nohp` varchar(100) NOT NULL DEFAULT '',
  `jawaban` int(2) DEFAULT NULL,
  `tahun` int(4) DEFAULT NULL,
  `id_polling` int(11) DEFAULT NULL,
  PRIMARY KEY (`nohp`),
  KEY `id_polling` (`id_polling`),
  CONSTRAINT `hasil_polling_sms_ibfk_1` FOREIGN KEY (`id_polling`) REFERENCES `polling` (`id_polling`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hasil_polling_sms`
--

LOCK TABLES `hasil_polling_sms` WRITE;
/*!40000 ALTER TABLE `hasil_polling_sms` DISABLE KEYS */;
INSERT INTO `hasil_polling_sms` VALUES ('123',2,2016,1);
INSERT INTO `hasil_polling_sms` VALUES ('1233',2,2016,1);
INSERT INTO `hasil_polling_sms` VALUES ('123a',2,2016,1);
INSERT INTO `hasil_polling_sms` VALUES ('123s',2,2016,1);
INSERT INTO `hasil_polling_sms` VALUES ('asdasd',2,2016,1);
/*!40000 ALTER TABLE `hasil_polling_sms` ENABLE KEYS */;
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
INSERT INTO `hubungi` VALUES (3,'eben hezer','ebenjosh@gmail.com','Saran','perbaiki lagi pelayanannya.','2016-08-22 21:54:46');
INSERT INTO `hubungi` VALUES (4,'eben hezer','ebenjosh@gmail.com','Kritik','kurang sopan.','2016-08-22 21:55:10');
INSERT INTO `hubungi` VALUES (5,'eben hezer','ebenjosh@gmail.com','Kritik','kurang sopan.','2016-08-22 23:12:25');
INSERT INTO `hubungi` VALUES (6,'sasuke','ebenhezerhasugian@gmail.com','Saran','oke','2016-09-07 17:35:38');
/*!40000 ALTER TABLE `hubungi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jadwal`
--

DROP TABLE IF EXISTS `jadwal`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jadwal` (
  `id_jadwal` int(20) NOT NULL AUTO_INCREMENT,
  `kode` varchar(100) NOT NULL,
  `daerah` varchar(500) NOT NULL,
  `jam_kirim` varchar(100) NOT NULL,
  `jam_tiba` varchar(100) NOT NULL,
  PRIMARY KEY (`id_jadwal`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jadwal`
--

LOCK TABLES `jadwal` WRITE;
/*!40000 ALTER TABLE `jadwal` DISABLE KEYS */;
INSERT INTO `jadwal` VALUES (1,'14.08','Kab.Siak','Pkl 06:00','Pkl 07:00');
INSERT INTO `jadwal` VALUES (2,'14.00','Kab.Kampar','Pkl 05:00','Pkl 06:00');
INSERT INTO `jadwal` VALUES (3,'14.02','Kab.Indragiri Hulu','Pkl 05:00','Pkl 05:30');
INSERT INTO `jadwal` VALUES (4,'14.03','Kab.Bengkalis','Pkl 06:00','Pkl 07:00');
INSERT INTO `jadwal` VALUES (5,'14.04','Kab.Indragiri Hilir','Pkl 06:00','Pkl 07:00');
INSERT INTO `jadwal` VALUES (6,'14.05','Kab.Pelalawan','Pkl 05:00','Pkl 07:00');
INSERT INTO `jadwal` VALUES (7,'14.06','Kab.Rokan Hulu','Pkl 06:30','Pkl 07:00');
INSERT INTO `jadwal` VALUES (8,'14.07','Kab.Rokan Hilir','Pkl 05:00','Pkl 06:00');
INSERT INTO `jadwal` VALUES (9,'14.09','Kab.Kuantan Singingi','Pkl 06:30','Pkl 07:00');
INSERT INTO `jadwal` VALUES (10,'14.10','Kab.Meranti','Pkl 05:00','Pkl 05:30');
INSERT INTO `jadwal` VALUES (11,'14.71','Kota Pekanbaru','Pkl 07:00','Pkl 08:00');
INSERT INTO `jadwal` VALUES (12,'14.72','Kota Dumai','Pkl 06:00','Pkl 07:00');
INSERT INTO `jadwal` VALUES (13,'14.09','Kab.Muara','Pkl 06:00','Pkl 07:00');
/*!40000 ALTER TABLE `jadwal` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `konfirmasi`
--

DROP TABLE IF EXISTS `konfirmasi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `konfirmasi` (
  `id_konfirmasi` int(10) NOT NULL AUTO_INCREMENT,
  `invoice` varchar(100) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `pesan` text NOT NULL,
  `img` varchar(100) NOT NULL,
  `tgl_input` date NOT NULL,
  PRIMARY KEY (`id_konfirmasi`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `konfirmasi`
--

LOCK TABLES `konfirmasi` WRITE;
/*!40000 ALTER TABLE `konfirmasi` DISABLE KEYS */;
INSERT INTO `konfirmasi` VALUES (18,'3e7a17c77321','coba','done','struk-3.jpg','2016-11-24');
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
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `konten`
--

LOCK TABLES `konten` WRITE;
/*!40000 ALTER TABLE `konten` DISABLE KEYS */;
INSERT INTO `konten` VALUES (4,'Dewasa','penumpang');
INSERT INTO `konten` VALUES (5,'Anak','penumpang');
INSERT INTO `konten` VALUES (6,'Bayi','penumpang');
INSERT INTO `konten` VALUES (7,'Reguler','kelas');
INSERT INTO `konten` VALUES (8,'Platinum','kelas');
INSERT INTO `konten` VALUES (9,'Gold','kelas');
INSERT INTO `konten` VALUES (10,'<b>PT. RIAU POS MEDIA GROUP</b></br>\r\nGedung Graha Pena Riau Lt. 3, Jl. HR Subrantas KM. 10,5, Panam, Riau 28000, Indonesia</br>\r\nTelp. (0761) 566806, (0761) 64633,(0761) 64637,0761 6 Fax. (0711) 359200.</br></br>\r\n\r\n<b>Visi</b></br>\r\nMemberikan pelayanan prima kepada setiap pelanggan.</br> </br>\r\n\r\n<b>Misi</b></br>\r\n1.	Mengutamakan pelayanan.</br>\r\n2.	Memberikan pelayanan terbaik.</br>\r\n3.	Selalu mengutamakan kepuasan pelanggan.</br>\r\n','profil');
INSERT INTO `konten` VALUES (11,'Saran','tipe');
INSERT INTO `konten` VALUES (12,'Kritik','tipe');
INSERT INTO `konten` VALUES (16,'14','port');
INSERT INTO `konten` VALUES (17,'Laki-laki','jk');
INSERT INTO `konten` VALUES (18,'Perempuan','jk');
INSERT INTO `konten` VALUES (29,'Radar Bromo','media');
INSERT INTO `konten` VALUES (30,'Radar Bojonegoro','media');
INSERT INTO `konten` VALUES (31,'Radar Mojokerto','media');
INSERT INTO `konten` VALUES (32,'Radar Kediri','media');
INSERT INTO `konten` VALUES (33,'Jawa Pos Metropolitan','media2');
INSERT INTO `konten` VALUES (34,'Radar Jogja','media2');
INSERT INTO `konten` VALUES (35,'Radar Bali','media2');
INSERT INTO `konten` VALUES (36,'Radar Semarang','media2');
INSERT INTO `konten` VALUES (37,'Radar Solo','media2');
INSERT INTO `konten` VALUES (38,'Radar Kudus','media2');
INSERT INTO `konten` VALUES (39,'Radar Banyuwangi','media2');
INSERT INTO `konten` VALUES (40,'Radar Jember','media2');
INSERT INTO `konten` VALUES (41,'Radar Malang','media2');
INSERT INTO `konten` VALUES (42,'Radar Madiun','media2');
INSERT INTO `konten` VALUES (43,'Radar Tulungagung','media2');
INSERT INTO `konten` VALUES (44,'Radar Madura','media2');
INSERT INTO `konten` VALUES (45,'Radar Bromo','media2');
INSERT INTO `konten` VALUES (46,'Radar Bojonegoro','media2');
INSERT INTO `konten` VALUES (47,'Radar Mojokerto','media2');
INSERT INTO `konten` VALUES (48,'Radar Kediri','media2');
INSERT INTO `konten` VALUES (49,'ATM','via');
INSERT INTO `konten` VALUES (50,'Transfer','via');
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
INSERT INTO `login` VALUES ('aksiku@gmail.com','19351f0df296e6e73c827a2fff8dbed1','2','Y');
INSERT INTO `login` VALUES ('budianto@gmail.com','00dfc53ee86af02e742515cdcf075ed3','2','Y');
INSERT INTO `login` VALUES ('coba@gmail.com','c3ec0f7b054e729c5a716c8125839829','2','Y');
INSERT INTO `login` VALUES ('ebenhezerhasugian@gmail.com','e807f1fcf82d132f9bb018ca6738a19f','2','Y');
INSERT INTO `login` VALUES ('gml@gml','4827b0d87596b184031d769793484066','2','Y');
INSERT INTO `login` VALUES ('jufri@gmail.com','01f8aec08586c4c2132f254655a43c43','2','Y');
INSERT INTO `login` VALUES ('lelyrasti@ymail.com','bb7fe7d0d06fc448150f27187d2079cf','2','Y');
INSERT INTO `login` VALUES ('manager','21232f297a57a5a743894a0e4a801fc3','1','Y');
INSERT INTO `login` VALUES ('manis@gmail.com','827ccb0eea8a706c4c34a16891f84e7b','2','Y');
INSERT INTO `login` VALUES ('sakit@gmail.com','e5e434b8053cf09733f1cc20cb962d6c','2','Y');
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
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=latin1;
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
INSERT INTO `menu` VALUES (25,'Data Konfirmasi','?module=konfirmasi',0,'Y');
INSERT INTO `menu` VALUES (26,'Data Login','?module=login',0,'Y');
INSERT INTO `menu` VALUES (27,'Data Polling','?module=polling2',0,'Y');
INSERT INTO `menu` VALUES (28,'SMS Inbox','?module=smsinbox',0,'Y');
INSERT INTO `menu` VALUES (29,'Data Saldo','	\r\n?module=saldo',0,'Y');
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
  `tgl_lahir` date NOT NULL,
  `alamat` varchar(255) NOT NULL,
  `id_provinsi` varchar(2) NOT NULL,
  `id_kota` varchar(4) NOT NULL,
  `email` varchar(100) NOT NULL,
  `hp` varchar(15) NOT NULL,
  `koran_1` varchar(10) DEFAULT NULL,
  `koran_2` varchar(10) DEFAULT NULL,
  `harga` int(11) DEFAULT NULL,
  `sebanyak` int(11) DEFAULT NULL,
  `jatuh_tempo` date DEFAULT NULL,
  `masa_aktif` int(11) DEFAULT NULL,
  `konfirmasi` enum('lunas','pending','belum lunas') DEFAULT NULL,
  `id_profil` int(11) DEFAULT NULL,
  PRIMARY KEY (`invoice`),
  KEY `fk_orderProv` (`id_provinsi`),
  KEY `fk_orderKota` (`id_kota`),
  KEY `id_profil` (`id_profil`),
  CONSTRAINT `fk_orderKota` FOREIGN KEY (`id_kota`) REFERENCES `kota` (`id_kota`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_orderProv` FOREIGN KEY (`id_provinsi`) REFERENCES `provinsi` (`id_provinsi`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `order_ibfk_1` FOREIGN KEY (`id_profil`) REFERENCES `profil` (`id_profil`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `order`
--

LOCK TABLES `order` WRITE;
/*!40000 ALTER TABLE `order` DISABLE KEYS */;
INSERT INTO `order` VALUES ('630a903cb690','gml@gml','0000-00-00','dimana','11','1','gml@gml','0928342','bisnis','health',160017,2,'2016-12-02',60,'',21);
/*!40000 ALTER TABLE `order` ENABLE KEYS */;
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
  `id_provinsi` varchar(2) DEFAULT NULL,
  `id_kota` varchar(4) DEFAULT NULL,
  `kode_pos` varchar(5) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `hp` varchar(15) DEFAULT NULL,
  `tgl_input` datetime DEFAULT NULL,
  PRIMARY KEY (`id_profil`),
  KEY `id_provinsi` (`id_provinsi`),
  KEY `id_kota` (`id_kota`),
  CONSTRAINT `profil_ibfk_1` FOREIGN KEY (`id_kota`) REFERENCES `kota` (`id_kota`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `profil_ibfk_2` FOREIGN KEY (`id_provinsi`) REFERENCES `provinsi` (`id_provinsi`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `profil`
--

LOCK TABLES `profil` WRITE;
/*!40000 ALTER TABLE `profil` DISABLE KEYS */;
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
INSERT INTO `profil` VALUES (16,'rasti','2000-09-12','lampung','33','197','28772','lelyrasti@ymail.com','085265904015','2016-09-12 19:12:00');
INSERT INTO `profil` VALUES (17,'simanis','2000-10-06','Pekanbaru','61','313','28774','manis@gmail.com','085267689012','2016-10-06 12:33:09');
INSERT INTO `profil` VALUES (18,'Jufri Angga Ginting','1992-02-01','Timbangan','16','108','44105','jufri@gmail.com','081265286446','2016-10-10 13:54:48');
INSERT INTO `profil` VALUES (19,'Budianto Hasugian','2000-10-10','Pekanbaru.','51','272','28774','budianto@gmail.com','089626584755','2016-10-10 14:36:03');
INSERT INTO `profil` VALUES (20,'aksi saya','2000-10-21','fwdfw','19','140','28774','aksiku@gmail.com','0895357896947','2016-10-18 00:12:43');
INSERT INTO `profil` VALUES (21,'gml','2000-10-30','dimana','11','1','12345','gml@gml','0928342','2016-10-30 21:11:06');
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
-- Table structure for table `saldo`
--

DROP TABLE IF EXISTS `saldo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `saldo` (
  `id_saldo` int(10) NOT NULL AUTO_INCREMENT,
  `invoice` varchar(100) NOT NULL,
  `username` varchar(100) NOT NULL,
  `saldo` int(100) NOT NULL,
  `tanggal_transfer` date NOT NULL,
  PRIMARY KEY (`id_saldo`),
  UNIQUE KEY `invoice` (`invoice`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `saldo`
--

LOCK TABLES `saldo` WRITE;
/*!40000 ALTER TABLE `saldo` DISABLE KEYS */;
INSERT INTO `saldo` VALUES (1,'0E4567563FCB','coba@gmail.com',80000,'2016-11-13');
INSERT INTO `saldo` VALUES (9,'d3as1446ff5e','coba@gmail.com',-528496,'2016-11-13');
/*!40000 ALTER TABLE `saldo` ENABLE KEYS */;
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
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sms_history`
--

LOCK TABLES `sms_history` WRITE;
/*!40000 ALTER TABLE `sms_history` DISABLE KEYS */;
INSERT INTO `sms_history` VALUES (4,'085267730918','Kode berlangganan anda adalah = B69D6DBC9968 | ',13,'2014-11-28 19:06:16');
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
) ENGINE=InnoDB AUTO_INCREMENT=142 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sms_outbox`
--

LOCK TABLES `sms_outbox` WRITE;
/*!40000 ALTER TABLE `sms_outbox` DISABLE KEYS */;
INSERT INTO `sms_outbox` VALUES (127,'085267730918','pos',0,'2016-09-12 12:18:47');
INSERT INTO `sms_outbox` VALUES (128,'085267730918','pokl',0,'2016-09-12 12:19:19');
INSERT INTO `sms_outbox` VALUES (134,'08526259469','Segera Lakukan Konfirmasi Pembayaran.',14,'2016-09-30 22:07:19');
INSERT INTO `sms_outbox` VALUES (135,'081265286446','oke.',14,'2016-10-10 13:56:14');
INSERT INTO `sms_outbox` VALUES (136,'089626584755','Terimakasih.',14,'2016-10-10 14:37:16');
INSERT INTO `sms_outbox` VALUES (137,'089626584755','halooo...',14,'2016-10-10 14:38:18');
INSERT INTO `sms_outbox` VALUES (138,'089626584755','okeh.',14,'2016-10-10 14:39:11');
INSERT INTO `sms_outbox` VALUES (139,'089626584755','haloo',14,'2016-10-10 14:52:41');
INSERT INTO `sms_outbox` VALUES (140,'085265904015','cek lagi....',14,'2016-10-18 00:01:53');
INSERT INTO `sms_outbox` VALUES (141,'0895357896947','kamu dimana?',14,'2016-10-18 00:13:07');
/*!40000 ALTER TABLE `sms_outbox` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tarif`
--

DROP TABLE IF EXISTS `tarif`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tarif` (
  `id_tarif` int(20) NOT NULL AUTO_INCREMENT,
  `koran` varchar(100) DEFAULT NULL,
  `satuan` double NOT NULL,
  `sebulan` double DEFAULT NULL,
  `setahun` double DEFAULT NULL,
  PRIMARY KEY (`id_tarif`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tarif`
--

LOCK TABLES `tarif` WRITE;
/*!40000 ALTER TABLE `tarif` DISABLE KEYS */;
INSERT INTO `tarif` VALUES (1,'Reguler',3000,80000,800000);
/*!40000 ALTER TABLE `tarif` ENABLE KEYS */;
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

-- Dump completed on 2016-11-26  0:08:22
