-- phpMyAdmin SQL Dump
-- version 4.2.7.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Nov 24, 2016 at 05:18 PM
-- Server version: 5.6.20
-- PHP Version: 5.5.15

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `koran`
--

-- --------------------------------------------------------

--
-- Table structure for table `agen`
--

CREATE TABLE IF NOT EXISTS `agen` (
`id_agen` int(10) unsigned NOT NULL,
  `nama` varchar(100) DEFAULT NULL,
  `alamat` varchar(250) DEFAULT NULL,
  `hp` varchar(25) DEFAULT NULL,
  `aktif` enum('Y','N') DEFAULT 'Y',
  `tgl_input` datetime DEFAULT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=13 ;

--
-- Dumping data for table `agen`
--

INSERT INTO `agen` (`id_agen`, `nama`, `alamat`, `hp`, `aktif`, `tgl_input`) VALUES
(1, 'CV. Citra Cempaka', 'JL. Sudirman Pekanbaru', '(0761) 351786', 'Y', NULL),
(2, 'CV. Handoyo', 'JL. A.Yani Pekanbaru', '(0761) 413767', 'Y', NULL),
(3, 'CV. Sejahtera', 'JL. Kol. H. Makmur Pekanbaru', '(0761) 411599', 'Y', NULL),
(4, 'CV. Solid Brother', 'JL. Slamet Riyadi Perawang', '(0761) 362451', 'Y', NULL),
(5, 'CV. Holiday', 'JL.  Kampar Raya Perumnas Bengkalis', '(0761) 842361', 'Y', '2014-11-17 09:37:32'),
(6, 'CV. Rahmat Terang', 'JL. Jend. A. Yani Pelalawan', '(0761) 513733', 'Y', '2014-11-17 09:39:28'),
(7, 'CV. Megantoro', 'JL. Jenderal Sudirman Taluk Kuantan', '(0761) 371544', 'Y', '2014-11-17 09:43:20'),
(8, 'CV. Mitra Bersama', 'JL. Basuki Rahmat Meranti', '(0761) 822382', 'Y', '2014-11-17 09:44:04'),
(9, 'CV. Ferga Delaga Dunia', 'JL. Mayor Salim Siak Indrapura', '(0761) 371831', 'Y', '2014-11-17 09:44:54'),
(10, 'CV. Tanpa Batas', 'JL. Basuki Rahmat Tjuadja Kandis', '(0761) 372696', 'Y', '2014-11-17 09:45:51'),
(12, 'CV. Rapi', 'JL. Tanjung Gelap Kota Dumai', '(0761) 389766', 'Y', '2014-11-17 09:47:37');

-- --------------------------------------------------------

--
-- Table structure for table `bank`
--

CREATE TABLE IF NOT EXISTS `bank` (
`id_bank` int(5) NOT NULL,
  `nama_bank` varchar(100) DEFAULT NULL,
  `norek` varchar(100) DEFAULT NULL,
  `nama_pemilik` varchar(100) DEFAULT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=7 ;

--
-- Dumping data for table `bank`
--

INSERT INTO `bank` (`id_bank`, `nama_bank`, `norek`, `nama_pemilik`) VALUES
(5, 'Mandiri', '900000', 'Eben Hezer Josapat Hasugian'),
(6, 'BNI', '12345678', 'Eben Hezer Josapat Hasugian');

-- --------------------------------------------------------

--
-- Table structure for table `faq`
--

CREATE TABLE IF NOT EXISTS `faq` (
`id_faq` int(11) NOT NULL,
  `pertanyaan` text,
  `jawaban` text,
  `aktif` enum('Y','N') DEFAULT 'Y',
  `tgl_input` datetime DEFAULT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=7 ;

--
-- Dumping data for table `faq`
--

INSERT INTO `faq` (`id_faq`, `pertanyaan`, `jawaban`, `aktif`, `tgl_input`) VALUES
(4, 'Bagaimanakah caranya untuk melakukan registrasi berlangganan koran?', 'Panduan untuk melakukan pemesanan, dapat anda lihat pada menu simulasi yang berada di bawah website. ', 'Y', '2014-10-20 10:54:09'),
(5, 'Bagaimana cara untuk memberikan saran atau kritik?', 'Untuk memberikan Saran dan kritik anda dapat membuka menu Saran dan Kritik yang berada dibawah website, dan isikan data dengan lengkap dan benar.', 'Y', '2014-11-17 09:56:23'),
(6, 'Bagaimana kami bisa megetahui lebih jauh tentang perusahaan ini?', 'Untuk mengenal lebih jauh PT. Pelayaran Sakti Inti Makmur anda dapat membuka menu Tentang Kami, yang berisi informasi mengenai perusahaan. ', 'Y', '2014-11-17 09:58:22');

-- --------------------------------------------------------

--
-- Table structure for table `hasil_polling`
--

CREATE TABLE IF NOT EXISTS `hasil_polling` (
  `id_polling` int(11) NOT NULL,
  `jawaban` int(2) DEFAULT NULL,
  `ip_1` varchar(45) DEFAULT NULL,
  `ip_2` varchar(45) DEFAULT NULL,
  `tahun` int(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `hasil_polling`
--

INSERT INTO `hasil_polling` (`id_polling`, `jawaban`, `ip_1`, `ip_2`, `tahun`) VALUES
(1, 0, '202.155.0.10', '202.155.0.15', 2016),
(1, 1, ' 202.155.0.20', '202.155.0.25', 2016),
(1, 2, '202.155.46.66', '202.155.46.77', 2016),
(1, 3, '202.155.30.227', '202.155.0.10', 2016),
(1, 4, '202.155.0.15', '202.155.0.20', 2016),
(1, 5, '202.155.0.25', '202.155.46.66', 2016),
(1, 6, '202.155.46.77', '202.155.30.227', 2016),
(1, 0, '202.134.0.155', '203.130.196.155', 2016),
(1, 8, '202.134.0.61', '203.130.196.5', 2016),
(1, 4, '125.160.2.226', '125.160.4.82', 2016),
(1, 1, '203.130.196.155', '61.94.192.12', 2016),
(1, 4, '125.160.2.34', '202.134.0.61', 2016),
(1, 9, '125.160.2.162', '125.160.2.162', 2016),
(1, 2, '222.124.204.34', '203.130.206.250', 2016),
(1, 8, '203.130.209.242', '222.124.204.34', 2016),
(1, 8, '202.134.1.7', '202.134.1.7', 2016),
(1, 6, '203.130.193.75', '203.130.208.18', 2016),
(1, 6, '203.130.208.18', '180.131.144.144', 2016),
(1, 10, '203.34.118.12', '203.34.118.10', 2016),
(1, 3, '180.131.144.144', '180.131.145.145', 2016),
(1, 5, '202.43.160.51', '202.43.160.50', 2016),
(1, 0, '122.200.48.14', '203.34.118.12', 2016),
(1, 7, '203.190.55.210', '203.190.55.211', 2016),
(1, 6, '202.149.82.25', '202.149.82.29', 2016),
(1, 1, '202.152.254.245', '202.152.254.246', 2016),
(1, 3, '202.158.40.1', '202.158.20.1', 2016),
(1, 5, '202.158.3.7', '202.158.3.6', 2016),
(1, 1, '202.152.5.36', '202.152.0.2', 2016),
(1, 9, ' 165.21.100.88', '165.21.83.88', 2016),
(1, 8, '202.159.32.2', '202.159.33.2', 2016),
(1, 7, '202.249.24.65', '167.205.23.1', 2016),
(1, 10, '167.205.22.123', '167.205.22.123', 2016),
(1, 9, '167.205.22.123', '167.205.30.114', 2016),
(1, 9, '222.124.22.18', '208.67.222.222', 2016),
(1, 8, '208.67.220.220', '167.205.30.114', 2016),
(1, 10, '208.67.222.222', '208.67.220.220', 2016),
(1, 8, '141.211.125.17', '141.211.144.17', 2016),
(1, 7, '198.77.116.8', '198.77.116.12', 2016),
(1, 10, '198.77.116.221', '198.77.116.223', 2016),
(1, 10, '198.77.116.225', '198.77.116.227', 2016),
(1, 8, '205.171.2.65', '205.171.3.65', 2016),
(1, 9, '141.211.144.15', '205.171.3.65', 2016),
(1, 7, '180.131.144.144', '180.131.145.145', 2016),
(1, 7, '89.233.43.71', '89.104.194.142', 2016),
(1, 9, '209.51.196.243', '209.51.196.242', 2016),
(1, 10, '202.155.0.10', '202.155.0.15', 2016),
(1, 10, '192.168.2.1', '192.168.1.1', 2016),
(1, 10, '10.0.1.1', '10.0.1.1', 2016),
(1, 9, '192.168.2.1', '192.168.2.1', 2016),
(1, 10, '192.168.1.1', '192.168.2.1', 2016),
(1, 9, '192.168.2.1', '192.168.254.254', 2016),
(1, 9, '192.168.1.1', '192.168.0.1', 2016),
(1, 9, '192.168.1.1', '192.168.1.10.1', 2016),
(1, 10, '10.0.0.138', '192.168.1.254', 2016),
(1, 10, '180.131.145.145', '180.131.144.144', 2016),
(1, 10, '165.21.83.88', '202.152.0.2', 2016),
(1, 9, '202.159.32.2', '202.158.3.6', 2016),
(1, 10, '202.158.20.1', '202.158.3.7', 2016),
(1, 9, '202.149.82.29', '202.158.40.1', 2016),
(1, 9, '203.34.118.12', '202.149.82.25', 2016),
(1, 9, '203.142.83.200', '203.34.118.10', 2016),
(1, 10, '202.58.181.18', '203.130.208.18', 2016),
(1, 10, '202.159.33.2', '202.134.1.10', 2016),
(1, 9, '202.134.0.62', '202.155.30.227', 2016),
(1, 9, '202.155.46.66', '202.155.46.77', 2016),
(1, 10, '202.155.0.25', '202.155.0.20', 2016),
(1, 10, '10.0.1.1', '10.0.2.2', 2016),
(1, 9, '192.155.2.1', '192.150.4.3', 2016),
(1, 9, '182.09.9.9', '182.09.0.0', 2016),
(1, 10, '192.168.2.1', '10.10.1.1', 2016),
(1, 9, '192.168.33.3', '192.168.00.01', 2016),
(1, 10, '192.168.1.254', '192.168.254.254', 2016),
(1, 10, '10.0.0.2', '10.1.1.1', 2016),
(1, 10, '192.168.1.254', '10.0.0.2', 2016),
(1, 9, '192.168.11.1', '192.168.0.30', 2016),
(1, 9, '192.168.0.50', '192.168.0.101', 2016),
(1, 10, '192.168.0.30', '192.168.0.50', 2016),
(1, 9, '192.168.15.1', '192.168.1.254', 2016),
(1, 9, '10.90.90.90', '192.168.2.1', 2016),
(1, 10, '203.142.83.200', '203.34.118.10', 2016),
(1, 10, '192.168.1.254', '192.168.1.254', 2016),
(1, 10, '192.168.100.1', '10.0.0.138', 2016),
(1, 9, '202.134.0.62', '202.155.30.227', 2016),
(1, 9, '202.155.46.66', '202.155.46.77', 2016),
(1, 10, '202.155.0.25', '202.155.0.20', 2016),
(1, 9, '10.0.0.138', '10.0.0.138', 2016),
(1, 10, '192.168.123.254', '192.168.123.', 2016),
(1, 9, '192.168.1.254', '192.168.1.254', 2016),
(1, 9, '192.168.30.1', '192.168.20.1', 2016),
(1, 9, '192.168.1.254', '192.168.1.254', 2016),
(1, 9, '192.168.10.50', '192.168.20.1', 2016),
(1, 10, '192.168.0.1', '192.168.1.254', 2016),
(1, 10, '192.168.2.1', '192.168.2.2', 2016),
(1, 9, '192.168.2.1', '192.168.0.1', 2016),
(1, 9, '192.168.50.1', '192.168.15.1', 2016),
(1, 9, '202.155.0.25', '202.000.0.25', 2016),
(1, 10, '200.100.0.145', '200.100.0.00', 2016),
(1, 9, '202.111.1.367', '202.000.1.097', 2016),
(1, 9, '202.000.0.111', '200.000.0.111', 2016),
(1, 10, '210.222.1.247', '210.222.1.111', 2016);

-- --------------------------------------------------------

--
-- Table structure for table `hasil_polling_sms`
--

CREATE TABLE IF NOT EXISTS `hasil_polling_sms` (
  `noHp` varchar(45) NOT NULL,
  `jawaban` int(2) DEFAULT NULL,
  `tahun` int(4) DEFAULT NULL,
  `id_polling` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `hasil_polling_sms`
--

INSERT INTO `hasil_polling_sms` (`noHp`, `jawaban`, `tahun`, `id_polling`) VALUES
('123', 2, 2016, 1),
('1233', 2, 2016, 1),
('123a', 2, 2016, 1),
('123s', 2, 2016, 1),
('asdasd', 2, 2016, 1);

-- --------------------------------------------------------

--
-- Table structure for table `hubungi`
--

CREATE TABLE IF NOT EXISTS `hubungi` (
`id_hubungi` int(11) NOT NULL,
  `nama` varchar(100) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `tipe` enum('Saran','Kritik') DEFAULT NULL,
  `pesan` text,
  `tgl_input` datetime DEFAULT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=7 ;

--
-- Dumping data for table `hubungi`
--

INSERT INTO `hubungi` (`id_hubungi`, `nama`, `email`, `tipe`, `pesan`, `tgl_input`) VALUES
(3, 'eben hezer', 'ebenjosh@gmail.com', 'Saran', 'perbaiki lagi pelayanannya.', '2016-08-22 21:54:46'),
(4, 'eben hezer', 'ebenjosh@gmail.com', 'Kritik', 'kurang sopan.', '2016-08-22 21:55:10'),
(5, 'eben hezer', 'ebenjosh@gmail.com', 'Kritik', 'kurang sopan.', '2016-08-22 23:12:25'),
(6, 'sasuke', 'ebenhezerhasugian@gmail.com', 'Saran', 'oke', '2016-09-07 17:35:38');

-- --------------------------------------------------------

--
-- Table structure for table `jadwal`
--

CREATE TABLE IF NOT EXISTS `jadwal` (
`id_jadwal` int(20) NOT NULL,
  `kode` varchar(100) NOT NULL,
  `daerah` varchar(500) NOT NULL,
  `jam_kirim` varchar(100) NOT NULL,
  `jam_tiba` varchar(100) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=14 ;

--
-- Dumping data for table `jadwal`
--

INSERT INTO `jadwal` (`id_jadwal`, `kode`, `daerah`, `jam_kirim`, `jam_tiba`) VALUES
(1, '14.08', 'Kab.Siak', 'Pkl 06:00', 'Pkl 07:00'),
(2, '14.00', 'Kab.Kampar', 'Pkl 05:00', 'Pkl 06:00'),
(3, '14.02', 'Kab.Indragiri Hulu', 'Pkl 05:00', 'Pkl 05:30'),
(4, '14.03', 'Kab.Bengkalis', 'Pkl 06:00', 'Pkl 07:00'),
(5, '14.04', 'Kab.Indragiri Hilir', 'Pkl 06:00', 'Pkl 07:00'),
(6, '14.05', 'Kab.Pelalawan', 'Pkl 05:00', 'Pkl 07:00'),
(7, '14.06', 'Kab.Rokan Hulu', 'Pkl 06:30', 'Pkl 07:00'),
(8, '14.07', 'Kab.Rokan Hilir', 'Pkl 05:00', 'Pkl 06:00'),
(9, '14.09', 'Kab.Kuantan Singingi', 'Pkl 06:30', 'Pkl 07:00'),
(10, '14.10', 'Kab.Meranti', 'Pkl 05:00', 'Pkl 05:30'),
(11, '14.71', 'Kota Pekanbaru', 'Pkl 07:00', 'Pkl 08:00'),
(12, '14.72', 'Kota Dumai', 'Pkl 06:00', 'Pkl 07:00'),
(13, '14.09', 'Kab.Muara', 'Pkl 06:00', 'Pkl 07:00');

-- --------------------------------------------------------

--
-- Table structure for table `konfirmasi`
--

CREATE TABLE IF NOT EXISTS `konfirmasi` (
`id_konfirmasi` int(10) NOT NULL,
  `invoice` varchar(100) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `pesan` text NOT NULL,
  `img` varchar(100) NOT NULL,
  `tgl_input` date NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=19 ;

--
-- Dumping data for table `konfirmasi`
--

INSERT INTO `konfirmasi` (`id_konfirmasi`, `invoice`, `nama`, `pesan`, `img`, `tgl_input`) VALUES
(18, '3e7a17c77321', 'coba', 'done', 'struk-3.jpg', '2016-11-24');

-- --------------------------------------------------------

--
-- Table structure for table `konten`
--

CREATE TABLE IF NOT EXISTS `konten` (
`id_konten` int(10) unsigned NOT NULL,
  `deskripsi` text,
  `grup` varchar(50) DEFAULT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=51 ;

--
-- Dumping data for table `konten`
--

INSERT INTO `konten` (`id_konten`, `deskripsi`, `grup`) VALUES
(4, 'Dewasa', 'penumpang'),
(5, 'Anak', 'penumpang'),
(6, 'Bayi', 'penumpang'),
(7, 'Reguler', 'kelas'),
(8, 'Platinum', 'kelas'),
(9, 'Gold', 'kelas'),
(10, '<b>PT. RIAU POS MEDIA GROUP</b></br>\r\nGedung Graha Pena Riau Lt. 3, Jl. HR Subrantas KM. 10,5, Panam, Riau 28000, Indonesia</br>\r\nTelp. (0761) 566806, (0761) 64633,(0761) 64637,0761 6 Fax. (0711) 359200.</br></br>\r\n\r\n<b>Visi</b></br>\r\nMemberikan pelayanan prima kepada setiap pelanggan.</br> </br>\r\n\r\n<b>Misi</b></br>\r\n1.	Mengutamakan pelayanan.</br>\r\n2.	Memberikan pelayanan terbaik.</br>\r\n3.	Selalu mengutamakan kepuasan pelanggan.</br>\r\n', 'profil'),
(11, 'Saran', 'tipe'),
(12, 'Kritik', 'tipe'),
(16, '14', 'port'),
(17, 'Laki-laki', 'jk'),
(18, 'Perempuan', 'jk'),
(29, 'Radar Bromo', 'media'),
(30, 'Radar Bojonegoro', 'media'),
(31, 'Radar Mojokerto', 'media'),
(32, 'Radar Kediri', 'media'),
(33, 'Jawa Pos Metropolitan', 'media2'),
(34, 'Radar Jogja', 'media2'),
(35, 'Radar Bali', 'media2'),
(36, 'Radar Semarang', 'media2'),
(37, 'Radar Solo', 'media2'),
(38, 'Radar Kudus', 'media2'),
(39, 'Radar Banyuwangi', 'media2'),
(40, 'Radar Jember', 'media2'),
(41, 'Radar Malang', 'media2'),
(42, 'Radar Madiun', 'media2'),
(43, 'Radar Tulungagung', 'media2'),
(44, 'Radar Madura', 'media2'),
(45, 'Radar Bromo', 'media2'),
(46, 'Radar Bojonegoro', 'media2'),
(47, 'Radar Mojokerto', 'media2'),
(48, 'Radar Kediri', 'media2'),
(49, 'ATM', 'via'),
(50, 'Transfer', 'via');

-- --------------------------------------------------------

--
-- Table structure for table `kota`
--

CREATE TABLE IF NOT EXISTS `kota` (
  `id_kota` varchar(4) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `id_provinsi` varchar(2) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `kota`
--

INSERT INTO `kota` (`id_kota`, `nama`, `id_provinsi`) VALUES
('1', 'SIMEULUE', '11'),
('10', 'BIREUEN', '11'),
('100', 'OGAN KOMERING ILIR', '16'),
('101', 'MUARA ENIM', '16'),
('102', 'LAHAT', '16'),
('103', 'MUSI RAWAS', '16'),
('104', 'MUSI BANYUASIN', '16'),
('105', 'BANYU ASIN', '16'),
('106', 'OGAN KOMERING ULU SELATAN', '16'),
('107', 'OGAN KOMERING ULU TIMUR', '16'),
('108', 'OGAN ILIR', '16'),
('109', 'EMPAT LAWANG', '16'),
('11', 'ACEH UTARA', '11'),
('110', 'PALEMBANG', '16'),
('111', 'PRABUMULIH', '16'),
('112', 'PAGAR ALAM', '16'),
('113', 'LUBUKLINGGAU', '16'),
('114', 'BENGKULU SELATAN', '17'),
('115', 'REJANG LEBONG', '17'),
('116', 'BENGKULU UTARA', '17'),
('117', 'KAUR', '17'),
('118', 'SELUMA', '17'),
('119', 'MUKOMUKO', '17'),
('12', 'ACEH BARAT DAYA', '11'),
('120', 'LEBONG', '17'),
('121', 'KEPAHIANG', '17'),
('122', 'BENGKULU TENGAH', '17'),
('123', 'BENGKULU', '17'),
('124', 'LAMPUNG BARAT', '18'),
('125', 'TANGGAMUS', '18'),
('126', 'LAMPUNG SELATAN', '18'),
('127', 'LAMPUNG TIMUR', '18'),
('128', 'LAMPUNG TENGAH', '18'),
('129', 'LAMPUNG UTARA', '18'),
('13', 'GAYO LUES', '11'),
('130', 'WAY KANAN', '18'),
('131', 'TULANGBAWANG', '18'),
('132', 'PESAWARAN', '18'),
('133', 'PRINGSEWU', '18'),
('134', 'MESUJI', '18'),
('135', 'TULANG BAWANG BARAT', '18'),
('136', 'BANDAR LAMPUNG', '18'),
('137', 'METRO', '18'),
('138', 'BANGKA', '19'),
('139', 'BELITUNG', '19'),
('14', 'ACEH TAMIANG', '11'),
('140', 'BANGKA BARAT', '19'),
('141', 'BANGKA TENGAH', '19'),
('142', 'BANGKA SELATAN', '19'),
('143', 'BELITUNG TIMUR', '19'),
('144', 'PANGKAL PINANG', '19'),
('145', 'KARIMUN', '21'),
('146', 'BINTAN', '21'),
('147', 'NATUNA', '21'),
('148', 'LINGGA', '21'),
('149', 'KEPULAUAN ANAMBAS', '21'),
('15', 'NAGAN RAYA', '11'),
('150', 'B A T A M', '21'),
('151', 'TANJUNG PINANG', '21'),
('152', 'KEPULAUAN SERIBU', '31'),
('153', 'JAKARTA SELATAN', '31'),
('154', 'JAKARTA TIMUR', '31'),
('155', 'JAKARTA PUSAT', '31'),
('156', 'JAKARTA BARAT', '31'),
('157', 'JAKARTA UTARA', '31'),
('158', 'BOGOR', '32'),
('159', 'SUKABUMI', '32'),
('16', 'ACEH JAYA', '11'),
('160', 'CIANJUR', '32'),
('161', 'BANDUNG', '32'),
('162', 'GARUT', '32'),
('163', 'TASIKMALAYA', '32'),
('164', 'CIAMIS', '32'),
('165', 'KUNINGAN', '32'),
('166', 'CIREBON', '32'),
('167', 'MAJALENGKA', '32'),
('168', 'SUMEDANG', '32'),
('169', 'INDRAMAYU', '32'),
('17', 'BENER MERIAH', '11'),
('170', 'SUBANG', '32'),
('171', 'PURWAKARTA', '32'),
('172', 'KARAWANG', '32'),
('173', 'BEKASI', '32'),
('174', 'BANDUNG BARAT', '32'),
('175', 'BOGOR', '32'),
('176', 'SUKABUMI', '32'),
('177', 'BANDUNG', '32'),
('178', 'CIREBON', '32'),
('179', 'BEKASI', '32'),
('18', 'PIDIE JAYA', '11'),
('180', 'DEPOK', '32'),
('181', 'CIMAHI', '32'),
('182', 'TASIKMALAYA', '32'),
('183', 'BANJAR', '32'),
('184', 'CILACAP', '33'),
('185', 'BANYUMAS', '33'),
('186', 'PURBALINGGA', '33'),
('187', 'BANJARNEGARA', '33'),
('188', 'KEBUMEN', '33'),
('189', 'PURWOREJO', '33'),
('19', 'BANDA ACEH', '11'),
('190', 'WONOSOBO', '33'),
('191', 'MAGELANG', '33'),
('192', 'BOYOLALI', '33'),
('193', 'KLATEN', '33'),
('194', 'SUKOHARJO', '33'),
('195', 'WONOGIRI', '33'),
('196', 'KARANGANYAR', '33'),
('197', 'SRAGEN', '33'),
('198', 'GROBOGAN', '33'),
('199', 'BLORA', '33'),
('2', 'ACEH SINGKIL', '11'),
('20', 'SABANG', '11'),
('200', 'REMBANG', '33'),
('201', 'PATI', '33'),
('202', 'KUDUS', '33'),
('203', 'JEPARA', '33'),
('204', 'DEMAK', '33'),
('205', 'SEMARANG', '33'),
('206', 'TEMANGGUNG', '33'),
('207', 'KENDAL', '33'),
('208', 'BATANG', '33'),
('209', 'PEKALONGAN', '33'),
('21', 'LANGSA', '11'),
('210', 'PEMALANG', '33'),
('211', 'TEGAL', '33'),
('212', 'BREBES', '33'),
('213', 'MAGELANG', '33'),
('214', 'SURAKARTA', '33'),
('215', 'SALATIGA', '33'),
('216', 'SEMARANG', '33'),
('217', 'PEKALONGAN', '33'),
('218', 'TEGAL', '33'),
('219', 'KULON PROGO', '34'),
('22', 'LHOKSEUMAWE', '11'),
('220', 'BANTUL', '34'),
('221', 'GUNUNG KIDUL', '34'),
('222', 'SLEMAN', '34'),
('223', 'YOGYAKARTA', '34'),
('224', 'PACITAN', '35'),
('225', 'PONOROGO', '35'),
('226', 'TRENGGALEK', '35'),
('227', 'TULUNGAGUNG', '35'),
('228', 'BLITAR', '35'),
('229', 'KEDIRI', '35'),
('23', 'SUBULUSSALAM', '11'),
('230', 'MALANG', '35'),
('231', 'LUMAJANG', '35'),
('232', 'JEMBER', '35'),
('233', 'BANYUWANGI', '35'),
('234', 'BONDOWOSO', '35'),
('235', 'SITUBONDO', '35'),
('236', 'PROBOLINGGO', '35'),
('237', 'PASURUAN', '35'),
('238', 'SIDOARJO', '35'),
('239', 'MOJOKERTO', '35'),
('24', 'NIAS', '12'),
('240', 'JOMBANG', '35'),
('241', 'NGANJUK', '35'),
('242', 'MADIUN', '35'),
('243', 'MAGETAN', '35'),
('244', 'NGAWI', '35'),
('245', 'BOJONEGORO', '35'),
('246', 'TUBAN', '35'),
('247', 'LAMONGAN', '35'),
('248', 'GRESIK', '35'),
('249', 'BANGKALAN', '35'),
('25', 'MANDAILING NATAL', '12'),
('250', 'SAMPANG', '35'),
('251', 'PAMEKASAN', '35'),
('252', 'SUMENEP', '35'),
('253', 'KEDIRI', '35'),
('254', 'BLITAR', '35'),
('255', 'MALANG', '35'),
('256', 'PROBOLINGGO', '35'),
('257', 'PASURUAN', '35'),
('258', 'MOJOKERTO', '35'),
('259', 'MADIUN', '35'),
('26', 'TAPANULI SELATAN', '12'),
('260', 'SURABAYA', '35'),
('261', 'BATU', '35'),
('262', 'PANDEGLANG', '36'),
('263', 'LEBAK', '36'),
('264', 'TANGERANG', '36'),
('265', 'SERANG', '36'),
('266', 'TANGERANG', '36'),
('267', 'CILEGON', '36'),
('268', 'SERANG', '36'),
('269', 'TANGERANG SELATAN', '36'),
('27', 'TAPANULI TENGAH', '12'),
('270', 'JEMBRANA', '51'),
('271', 'TABANAN', '51'),
('272', 'BADUNG', '51'),
('273', 'GIANYAR', '51'),
('274', 'KLUNGKUNG', '51'),
('275', 'BANGLI', '51'),
('276', 'KARANG ASEM', '51'),
('277', 'BULELENG', '51'),
('278', 'DENPASAR', '51'),
('279', 'LOMBOK BARAT', '52'),
('28', 'TAPANULI UTARA', '12'),
('280', 'LOMBOK TENGAH', '52'),
('281', 'LOMBOK TIMUR', '52'),
('282', 'SUMBAWA', '52'),
('283', 'DOMPU', '52'),
('284', 'BIMA', '52'),
('285', 'SUMBAWA BARAT', '52'),
('286', 'LOMBOK UTARA', '52'),
('287', 'MATARAM', '52'),
('288', 'BIMA', '52'),
('289', 'SUMBA BARAT', '53'),
('29', 'TOBA SAMOSIR', '12'),
('290', 'SUMBA TIMUR', '53'),
('291', 'KUPANG', '53'),
('292', 'TIMOR TENGAH SELATAN', '53'),
('293', 'TIMOR TENGAH UTARA', '53'),
('294', 'BELU', '53'),
('295', 'ALOR', '53'),
('296', 'LEMBATA', '53'),
('297', 'FLORES TIMUR', '53'),
('298', 'SIKKA', '53'),
('299', 'ENDE', '53'),
('3', 'ACEH SELATAN', '11'),
('30', 'LABUHAN BATU', '12'),
('300', 'NGADA', '53'),
('301', 'MANGGARAI', '53'),
('302', 'ROTE NDAO', '53'),
('303', 'MANGGARAI BARAT', '53'),
('304', 'SUMBA TENGAH', '53'),
('305', 'SUMBA BARAT DAYA', '53'),
('306', 'NAGEKEO', '53'),
('307', 'MANGGARAI TIMUR', '53'),
('308', 'SABU RAIJUA', '53'),
('309', 'KUPANG', '53'),
('31', 'ASAHAN', '12'),
('310', 'SAMBAS', '61'),
('311', 'BENGKAYANG', '61'),
('312', 'LANDAK', '61'),
('313', 'PONTIANAK', '61'),
('314', 'SANGGAU', '61'),
('315', 'KETAPANG', '61'),
('316', 'SINTANG', '61'),
('317', 'KAPUAS HULU', '61'),
('318', 'SEKADAU', '61'),
('319', 'MELAWI', '61'),
('32', 'SIMALUNGUN', '12'),
('320', 'KAYONG UTARA', '61'),
('321', 'KUBU RAYA', '61'),
('322', 'PONTIANAK', '61'),
('323', 'SINGKAWANG', '61'),
('324', 'KOTAWARINGIN BARAT', '62'),
('325', 'KOTAWARINGIN TIMUR', '62'),
('326', 'KAPUAS', '62'),
('327', 'BARITO SELATAN', '62'),
('328', 'BARITO UTARA', '62'),
('329', 'SUKAMARA', '62'),
('33', 'DAIRI', '12'),
('330', 'LAMANDAU', '62'),
('331', 'SERUYAN', '62'),
('332', 'KATINGAN', '62'),
('333', 'PULANG PISAU', '62'),
('334', 'GUNUNG MAS', '62'),
('335', 'BARITO TIMUR', '62'),
('336', 'MURUNG RAYA', '62'),
('337', 'PALANGKA RAYA', '62'),
('338', 'TANAH LAUT', '63'),
('339', 'KOTA BARU', '63'),
('34', 'KARO', '12'),
('340', 'BANJAR', '63'),
('341', 'BARITO KUALA', '63'),
('342', 'TAPIN', '63'),
('343', 'HULU SUNGAI SELATAN', '63'),
('344', 'HULU SUNGAI TENGAH', '63'),
('345', 'HULU SUNGAI UTARA', '63'),
('346', 'TABALONG', '63'),
('347', 'TANAH BUMBU', '63'),
('348', 'BALANGAN', '63'),
('349', 'BANJARMASIN', '63'),
('35', 'DELI SERDANG', '12'),
('350', 'BANJAR BARU', '63'),
('351', 'PASER', '64'),
('352', 'KUTAI BARAT', '64'),
('353', 'KUTAI KARTANEGARA', '64'),
('354', 'KUTAI TIMUR', '64'),
('355', 'BERAU', '64'),
('356', 'MALINAU', '64'),
('357', 'BULUNGAN', '64'),
('358', 'NUNUKAN', '64'),
('359', 'PENAJAM PASER UTARA', '64'),
('36', 'LANGKAT', '12'),
('360', 'TANA TIDUNG', '64'),
('361', 'BALIKPAPAN', '64'),
('362', 'SAMARINDA', '64'),
('363', 'TARAKAN', '64'),
('364', 'BONTANG', '64'),
('365', 'BOLAANG MONGONDOW', '71'),
('366', 'MINAHASA', '71'),
('367', 'KEPULAUAN SANGIHE', '71'),
('368', 'KEPULAUAN TALAUD', '71'),
('369', 'MINAHASA SELATAN', '71'),
('37', 'NIAS SELATAN', '12'),
('370', 'MINAHASA UTARA', '71'),
('371', 'BOLAANG MONGONDOW UTARA', '71'),
('372', 'SIAU TAGULANDANG BIARO', '71'),
('373', 'MINAHASA TENGGARA', '71'),
('374', 'BOLAANG MONGONDOW SELATAN', '71'),
('375', 'BOLAANG MONGONDOW TIMUR', '71'),
('376', 'MANADO', '71'),
('377', 'BITUNG', '71'),
('378', 'TOMOHON', '71'),
('379', 'KOTAMOBAGU', '71'),
('38', 'HUMBANG HASUNDUTAN', '12'),
('380', 'BANGGAI KEPULAUAN', '72'),
('381', 'BANGGAI', '72'),
('382', 'MOROWALI', '72'),
('383', 'POSO', '72'),
('384', 'DONGGALA', '72'),
('385', 'TOLI-TOLI', '72'),
('386', 'BUOL', '72'),
('387', 'PARIGI MOUTONG', '72'),
('388', 'TOJO UNA-UNA', '72'),
('389', 'SIGI', '72'),
('39', 'PAKPAK BHARAT', '12'),
('390', 'PALU', '72'),
('391', 'KEPULAUAN SELAYAR', '73'),
('392', 'BULUKUMBA', '73'),
('393', 'BANTAENG', '73'),
('394', 'JENEPONTO', '73'),
('395', 'TAKALAR', '73'),
('396', 'GOWA', '73'),
('397', 'SINJAI', '73'),
('398', 'MAROS', '73'),
('399', 'PANGKAJENE DAN KEPULAUAN', '73'),
('4', 'ACEH TENGGARA', '11'),
('40', 'SAMOSIR', '12'),
('400', 'BARRU', '73'),
('401', 'BONE', '73'),
('402', 'SOPPENG', '73'),
('403', 'WAJO', '73'),
('404', 'SIDENRENG RAPPANG', '73'),
('405', 'PINRANG', '73'),
('406', 'ENREKANG', '73'),
('407', 'LUWU', '73'),
('408', 'TANA TORAJA', '73'),
('409', 'LUWU UTARA', '73'),
('41', 'SERDANG BEDAGAI', '12'),
('410', 'LUWU TIMUR', '73'),
('411', 'TORAJA UTARA', '73'),
('412', 'MAKASSAR', '73'),
('413', 'PARE-PARE', '73'),
('414', 'PALOPO', '73'),
('415', 'BUTON', '74'),
('416', 'MUNA', '74'),
('417', 'KONAWE', '74'),
('418', 'KOLAKA', '74'),
('419', 'KONAWE SELATAN', '74'),
('42', 'BATU BARA', '12'),
('420', 'BOMBANA', '74'),
('421', 'WAKATOBI', '74'),
('422', 'KOLAKA UTARA', '74'),
('423', 'BUTON UTARA', '74'),
('424', 'KONAWE UTARA', '74'),
('425', 'KENDARI', '74'),
('426', 'BAUBAU', '74'),
('427', 'BOALEMO', '75'),
('428', 'GORONTALO', '75'),
('429', 'POHUWATO', '75'),
('43', 'PADANG LAWAS UTARA', '12'),
('430', 'BONE BOLANGO', '75'),
('431', 'GORONTALO UTARA', '75'),
('432', 'GORONTALO', '75'),
('433', 'MAJENE', '76'),
('434', 'POLEWALI MANDAR', '76'),
('435', 'MAMASA', '76'),
('436', 'MAMUJU', '76'),
('437', 'MAMUJU UTARA', '76'),
('438', 'MALUKU TENGGARA BARAT', '81'),
('439', 'MALUKU TENGGARA', '81'),
('44', 'PADANG LAWAS', '12'),
('440', 'MALUKU TENGAH', '81'),
('441', 'BURU', '81'),
('442', 'KEPULAUAN ARU', '81'),
('443', 'SERAM BAGIAN BARAT', '81'),
('444', 'SERAM BAGIAN TIMUR', '81'),
('445', 'MALUKU BARAT DAYA', '81'),
('446', 'BURU SELATAN', '81'),
('447', 'AMBON', '81'),
('448', 'TUAL', '81'),
('449', 'HALMAHERA BARAT', '82'),
('45', 'LABUHAN BATU SELATAN', '12'),
('450', 'HALMAHERA TENGAH', '82'),
('451', 'KEPULAUAN SULA', '82'),
('452', 'HALMAHERA SELATAN', '82'),
('453', 'HALMAHERA UTARA', '82'),
('454', 'HALMAHERA TIMUR', '82'),
('455', 'PULAU MOROTAI', '82'),
('456', 'TERNATE', '82'),
('457', 'TIDORE KEPULAUAN', '82'),
('458', 'FAKFAK', '91'),
('459', 'KAIMANA', '91'),
('46', 'LABUHAN BATU UTARA', '12'),
('460', 'TELUK WONDAMA', '91'),
('461', 'TELUK BINTUNI', '91'),
('462', 'MANOKWARI', '91'),
('463', 'SORONG SELATAN', '91'),
('464', 'SORONG', '91'),
('465', 'RAJA AMPAT', '91'),
('466', 'TAMBRAUW', '91'),
('467', 'MAYBRAT', '91'),
('468', 'SORONG', '91'),
('469', 'MERAUKE', '94'),
('47', 'NIAS UTARA', '12'),
('470', 'JAYAWIJAYA', '94'),
('471', 'JAYAPURA', '94'),
('472', 'NABIRE', '94'),
('473', 'KEPULAUAN YAPEN', '94'),
('474', 'BIAK NUMFOR', '94'),
('475', 'PANIAI', '94'),
('476', 'PUNCAK JAYA', '94'),
('477', 'MIMIKA', '94'),
('478', 'BOVEN DIGOEL', '94'),
('479', 'MAPPI', '94'),
('48', 'NIAS BARAT', '12'),
('480', 'ASMAT', '94'),
('481', 'YAHUKIMO', '94'),
('482', 'PEGUNUNGAN BINTANG', '94'),
('483', 'TOLIKARA', '94'),
('484', 'SARMI', '94'),
('485', 'KEEROM', '94'),
('486', 'WAROPEN', '94'),
('487', 'SUPIORI', '94'),
('488', 'MAMBERAMO RAYA', '94'),
('489', 'NDUGA', '94'),
('49', 'SIBOLGA', '12'),
('490', 'LANNY JAYA', '94'),
('491', 'MAMBERAMO TENGAH', '94'),
('492', 'YALIMO', '94'),
('493', 'PUNCAK', '94'),
('494', 'DOGIYAI', '94'),
('495', 'INTAN JAYA', '94'),
('496', 'DEIYAI', '94'),
('497', 'JAYAPURA', '94'),
('5', 'ACEH TIMUR', '11'),
('50', 'TANJUNG BALAI', '12'),
('51', 'PEMATANG SIANTAR', '12'),
('52', 'TEBING TINGGI', '12'),
('53', 'MEDAN', '12'),
('54', 'BINJAI', '12'),
('55', 'PADANGSIDIMPUAN', '12'),
('56', 'GUNUNGSITOLI', '12'),
('57', 'KEPULAUAN MENTAWAI', '13'),
('58', 'PESISIR SELATAN', '13'),
('59', 'SOLOK', '13'),
('6', 'ACEH TENGAH', '11'),
('60', 'SIJUNJUNG', '13'),
('61', 'TANAH DATAR', '13'),
('62', 'PADANG PARIAMAN', '13'),
('63', 'AGAM', '13'),
('64', 'LIMA PULUH KOTA', '13'),
('65', 'PASAMAN', '13'),
('66', 'SOLOK SELATAN', '13'),
('67', 'DHARMASRAYA', '13'),
('68', 'PASAMAN BARAT', '13'),
('69', 'PADANG', '13'),
('7', 'ACEH BARAT', '11'),
('70', 'SOLOK', '13'),
('71', 'SAWAH LUNTO', '13'),
('72', 'PADANG PANJANG', '13'),
('73', 'BUKITTINGGI', '13'),
('74', 'PAYAKUMBUH', '13'),
('75', 'PARIAMAN', '13'),
('76', 'KUANTAN SINGINGI', '14'),
('77', 'INDRAGIRI HULU', '14'),
('78', 'INDRAGIRI HILIR', '14'),
('79', 'PELALAWAN', '14'),
('8', 'ACEH BESAR', '11'),
('80', 'S I A K', '14'),
('81', 'KAMPAR', '14'),
('82', 'ROKAN HULU', '14'),
('83', 'BENGKALIS', '14'),
('84', 'ROKAN HILIR', '14'),
('85', 'KEPULAUAN MERANTI', '14'),
('86', 'PEKANBARU', '14'),
('87', 'D U M A I', '14'),
('88', 'KERINCI', '15'),
('89', 'MERANGIN', '15'),
('9', 'PIDIE', '11'),
('90', 'SAROLANGUN', '15'),
('91', 'BATANG HARI', '15'),
('92', 'MUARO JAMBI', '15'),
('93', 'TANJUNG JABUNG TIMUR', '15'),
('94', 'TANJUNG JABUNG BARAT', '15'),
('95', 'TEBO', '15'),
('96', 'BUNGO', '15'),
('97', 'JAMBI', '15'),
('98', 'SUNGAI PENUH', '15'),
('99', 'OGAN KOMERING ULU', '16');

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE IF NOT EXISTS `login` (
  `username` varchar(100) NOT NULL,
  `pass` varchar(100) DEFAULT NULL,
  `grup` enum('0','1','2') DEFAULT NULL COMMENT '0.Operator - 1.Pimpinan - 2.Client',
  `status` varchar(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`username`, `pass`, `grup`, `status`) VALUES
('admin', '21232f297a57a5a743894a0e4a801fc3', '0', 'Y'),
('aksiku@gmail.com', '19351f0df296e6e73c827a2fff8dbed1', '2', 'Y'),
('budianto@gmail.com', '00dfc53ee86af02e742515cdcf075ed3', '2', 'Y'),
('coba@gmail.com', 'c3ec0f7b054e729c5a716c8125839829', '2', 'Y'),
('ebenhezerhasugian@gmail.com', 'e807f1fcf82d132f9bb018ca6738a19f', '2', 'Y'),
('gml@gml', '4827b0d87596b184031d769793484066', '2', 'Y'),
('jufri@gmail.com', '01f8aec08586c4c2132f254655a43c43', '2', 'Y'),
('lelyrasti@ymail.com', 'bb7fe7d0d06fc448150f27187d2079cf', '2', 'Y'),
('manager', '21232f297a57a5a743894a0e4a801fc3', '1', 'Y'),
('manis@gmail.com', '827ccb0eea8a706c4c34a16891f84e7b', '2', 'Y'),
('sakit@gmail.com', 'e5e434b8053cf09733f1cc20cb962d6c', '2', 'Y');

-- --------------------------------------------------------

--
-- Table structure for table `menu`
--

CREATE TABLE IF NOT EXISTS `menu` (
`id_menu` int(10) unsigned NOT NULL,
  `menu` varchar(100) DEFAULT NULL,
  `url` varchar(100) DEFAULT NULL,
  `grup` int(10) unsigned DEFAULT NULL,
  `aktif` enum('Y','N') DEFAULT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=30 ;

--
-- Dumping data for table `menu`
--

INSERT INTO `menu` (`id_menu`, `menu`, `url`, `grup`, `aktif`) VALUES
(1, 'Profil', '?module=profil', 0, 'Y'),
(2, 'FAQ', '?module=faq', 0, 'Y'),
(3, 'Promo', '?module=promo', 0, 'Y'),
(4, 'Tindak Lanjut', '?module=tindak-lanjut', 0, 'Y'),
(5, 'Jadwal Pengiriman Koran', '?module=jadwal', 0, 'Y'),
(6, 'Saran dan Kritik', '?module=saran-kritik', 0, 'Y'),
(7, 'Data Agen', '?module=agen', 0, 'Y'),
(8, 'Data Pelanggan', '?module=pelanggan', 0, 'Y'),
(9, 'Data Rute', '?module=rute', 0, 'N'),
(10, 'Data Simulasi', '?module=simulasi', 0, 'N'),
(11, 'Data Berlangganan', '?module=pemesanan', 0, 'Y'),
(12, 'Data Bank', '?module=bank', 0, 'Y'),
(13, 'Laporan Pelanggan', '?module=laporan-pelanggan', 1, 'Y'),
(14, 'Laporan Berlangganan', '?module=laporan-pemesanan', 1, 'Y'),
(16, 'Ongkos Tarif', '?module=ongkos', 0, 'Y'),
(17, 'SMS History', '?module=smshistory', 0, 'Y'),
(18, 'SMS Outbox', '?module=smsoutbox', 0, 'Y'),
(19, 'SMS Broadcast', '?module=smsbroadcast', 0, 'Y'),
(20, 'Survey NPS', '?module=polling', 1, 'Y'),
(21, 'Laporan Agen', '?module=laporan-agen', 1, 'Y'),
(22, 'Laporan Stop Berlangganan', '?module=stop', 1, 'Y'),
(24, 'SMS Send', '?module=smsSend', 0, 'Y'),
(25, 'Data Konfirmasi', '?module=konfirmasi', 0, 'Y'),
(26, 'Data Login', '?module=login', 0, 'Y'),
(27, 'Data Polling', '?module=polling2', 0, 'Y'),
(28, 'SMS Inbox', '?module=smsinbox', 0, 'Y'),
(29, 'Data Saldo', '	\r\n?module=saldo', 0, 'Y');

-- --------------------------------------------------------

--
-- Table structure for table `order`
--

CREATE TABLE IF NOT EXISTS `order` (
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
  `pembayaran_via` varchar(100) DEFAULT NULL,
  `harga` int(11) DEFAULT NULL,
  `sebanyak` int(11) DEFAULT NULL,
  `jatuh_tempo` date DEFAULT NULL,
  `masa_aktif` int(11) DEFAULT NULL,
  `konfirmasi` enum('lunas','pending','belum lunas') DEFAULT NULL,
  `id_profil` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `order`
--

INSERT INTO `order` (`invoice`, `username`, `tgl_lahir`, `alamat`, `id_provinsi`, `id_kota`, `email`, `hp`, `koran_1`, `koran_2`, `pembayaran_via`, `harga`, `sebanyak`, `jatuh_tempo`, `masa_aktif`, `konfirmasi`, `id_profil`) VALUES
('cbca35f34586', 'telat@email', '0000-00-00', '', '11', '1', 'telat@email', '1', 'bisnis', 'health', 'internet_banking', 320020, 4, '2016-11-26', 120, '', NULL),
('d3a1446ff5e1', 'coba@gmail.com', '0000-00-00', '				Indralaya			', '16', '108', 'coba@gmail.com', '108', 'business', 'health', 'mobile_banking', 80074, 1, '2016-11-30', 30, 'lunas', 5);

-- --------------------------------------------------------

--
-- Table structure for table `polling`
--

CREATE TABLE IF NOT EXISTS `polling` (
`id_polling` int(11) NOT NULL,
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
  `jawaban10` varchar(100) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `polling`
--

INSERT INTO `polling` (`id_polling`, `pertanyaan`, `jawaban`, `jawaban1`, `jawaban2`, `jawaban3`, `jawaban4`, `jawaban5`, `jawaban6`, `jawaban7`, `jawaban8`, `jawaban9`, `jawaban10`) VALUES
(1, 'Pada skala 0 -10, seberapa mungkin anda merekomendasikan (merek,layanan,produk) kami kepada orang lain?', '0', '1', '2', '3', '4', '5', '6', '7', '8', '9', '10');

-- --------------------------------------------------------

--
-- Table structure for table `profil`
--

CREATE TABLE IF NOT EXISTS `profil` (
`id_profil` int(11) NOT NULL,
  `nama` varchar(100) DEFAULT NULL,
  `tgl_lahir` date DEFAULT NULL,
  `alamat` varchar(255) DEFAULT NULL,
  `id_provinsi` varchar(2) DEFAULT NULL,
  `id_kota` varchar(4) DEFAULT NULL,
  `kode_pos` varchar(5) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `hp` varchar(15) DEFAULT NULL,
  `tgl_input` datetime DEFAULT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=22 ;

--
-- Dumping data for table `profil`
--

INSERT INTO `profil` (`id_profil`, `nama`, `tgl_lahir`, `alamat`, `id_provinsi`, `id_kota`, `kode_pos`, `email`, `hp`, `tgl_input`) VALUES
(3, 'eben hezer', '1994-05-11', 'efqefqef', '14', '80', '28772', 'ebenhezerhasugian@gmail.com', '08526259469', '2016-04-12 15:02:22'),
(4, 'eben hezer', '1995-04-18', 'fwefwefwef', '51', '275', '98695', 'ebenjosh@gmail.com', '08560987654', '2016-08-11 10:45:43'),
(5, 'coba', '1994-09-06', 'Indralaya', '16', '108', '30662', 'coba@gmail.com', '0711580110', '2016-09-06 11:14:52'),
(6, 'tes', '2000-09-06', 'tes', '12', '24', '322', 'tes@gmail.com', '42342', '2016-09-06 11:44:58'),
(7, 'tes', '2000-09-06', 'tes', '11', '1', '21', 'tes@gmail.com', '2', '2016-09-06 11:49:01'),
(8, 'tes', '2000-09-06', 'tes', '11', '1', '21', 'tes@gmail.com', '2', '2016-09-06 11:50:15'),
(9, 'tes', '2000-09-06', 'tes', '11', '1', '21', 'tes@gmail.com', '2', '2016-09-06 11:51:42'),
(10, 'taasda', '2000-09-06', 'af', '11', '12', '534', 'halo@gmail.com', '543', '2016-09-06 11:52:57'),
(11, 'cek', '2000-09-06', 'cek', '14', '78', '36512', 'cek@gmail.com', '56321', '2016-09-06 11:54:26'),
(12, 'oke', '2000-09-06', 'oke', '52', '286', '12345', 'oke@gmail.com', '98765', '2016-09-06 11:56:50'),
(13, 'sakit', '2000-09-06', 'sakit', '51', '274', '8765', 'sakit@gmail.com', '7654', '2016-09-06 12:03:58'),
(14, 'admin', NULL, NULL, NULL, NULL, NULL, 'admin', NULL, NULL),
(15, NULL, NULL, NULL, NULL, NULL, NULL, 'manager', NULL, NULL),
(16, 'rasti', '2000-09-12', 'lampung', '33', '197', '28772', 'lelyrasti@ymail.com', '085265904015', '2016-09-12 19:12:00'),
(17, 'simanis', '2000-10-06', 'Pekanbaru', '61', '313', '28774', 'manis@gmail.com', '085267689012', '2016-10-06 12:33:09'),
(18, 'Jufri Angga Ginting', '1992-02-01', 'Timbangan', '16', '108', '44105', 'jufri@gmail.com', '081265286446', '2016-10-10 13:54:48'),
(19, 'Budianto Hasugian', '2000-10-10', 'Pekanbaru.', '51', '272', '28774', 'budianto@gmail.com', '089626584755', '2016-10-10 14:36:03'),
(20, 'aksi saya', '2000-10-21', 'fwdfw', '19', '140', '28774', 'aksiku@gmail.com', '0895357896947', '2016-10-18 00:12:43'),
(21, 'gml', '2000-10-30', 'dimana', '11', '1', '12345', 'gml@gml', '0928342', '2016-10-30 21:11:06');

-- --------------------------------------------------------

--
-- Table structure for table `promo`
--

CREATE TABLE IF NOT EXISTS `promo` (
`id_promo` int(11) NOT NULL,
  `titel` varchar(255) DEFAULT NULL,
  `deskripsi` text,
  `img` varchar(100) DEFAULT NULL,
  `aktif` enum('Y','N') DEFAULT 'Y'
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=9 ;

--
-- Dumping data for table `promo`
--

INSERT INTO `promo` (`id_promo`, `titel`, `deskripsi`, `img`, `aktif`) VALUES
(1, 'Junio JRBL', 'Tabungan BRI', 'akapal.jpg', 'Y'),
(2, 'Jobs ', 'Lowongan kerja.', '2promo.jpg', 'Y'),
(3, 'Go Riau', 'Gerakan Riau Berteknologi', 'promo_3.jpg', 'Y'),
(4, 'get fast...', 'Gerak Jalan dalam Rangkat HUT Riau Post', 'promo_4.jpg', 'Y'),
(5, 'Gerak Jalan Regu', 'Daftarkan segera team anda pada even ini', 'promo_5.jpg', 'Y'),
(6, 'HSBL-Riau-Pos', 'Pertandingan Bola Basket ', 'promo_8.jpg', 'Y'),
(7, 'Pariwisata Riau', 'Dinas Pariwisata dan Ekonomi Kreatif Provinsi Riau terus menggeliatkan promosi pariwisata lokal.', 'promo_4.jpg', 'Y'),
(8, 'Labersa-Riau Pos', 'Karena tanpa media sebuah bisnis tentunya akan cukup sulit dikenal oleh masyarakat luas terutama konsumen yang akan menjadi pasar bisnis itu sendiri. ', 'promo_8.jpg', 'Y');

-- --------------------------------------------------------

--
-- Table structure for table `provinsi`
--

CREATE TABLE IF NOT EXISTS `provinsi` (
  `id_provinsi` varchar(2) NOT NULL DEFAULT '',
  `nama` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `provinsi`
--

INSERT INTO `provinsi` (`id_provinsi`, `nama`) VALUES
('11', 'ACEH'),
('12', 'SUMATERA UTARA'),
('13', 'SUMATERA BARAT'),
('14', 'RIAU'),
('15', 'JAMBI'),
('16', 'SUMATERA SELATAN'),
('17', 'BENGKULU'),
('18', 'LAMPUNG'),
('19', 'KEPULAUAN BANGKA BELITUNG'),
('21', 'KEPULAUAN RIAU'),
('31', 'DKI JAKARTA'),
('32', 'JAWA BARAT'),
('33', 'JAWA TENGAH'),
('34', 'DI YOGYAKARTA'),
('35', 'JAWA TIMUR'),
('36', 'BANTEN'),
('51', 'BALI'),
('52', 'NUSA TENGGARA BARAT'),
('53', 'NUSA TENGGARA TIMUR'),
('61', 'KALIMANTAN BARAT'),
('62', 'KALIMANTAN TENGAH'),
('63', 'KALIMANTAN SELATAN'),
('64', 'KALIMANTAN TIMUR'),
('71', 'SULAWESI UTARA'),
('72', 'SULAWESI TENGAH'),
('73', 'SULAWESI SELATAN'),
('74', 'SULAWESI TENGGARA'),
('75', 'GORONTALO'),
('76', 'SULAWESI BARAT'),
('81', 'MALUKU'),
('82', 'MALUKU UTARA'),
('91', 'PAPUA BARAT'),
('94', 'PAPUA');

-- --------------------------------------------------------

--
-- Table structure for table `saldo`
--

CREATE TABLE IF NOT EXISTS `saldo` (
`id_saldo` int(10) NOT NULL,
  `invoice` varchar(100) NOT NULL,
  `username` varchar(100) NOT NULL,
  `saldo` int(100) NOT NULL,
  `tanggal_transfer` date NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `saldo`
--

INSERT INTO `saldo` (`id_saldo`, `invoice`, `username`, `saldo`, `tanggal_transfer`) VALUES
(1, '0E4567563FCB', 'coba@gmail.com', 80000, '2016-11-25');

-- --------------------------------------------------------

--
-- Table structure for table `sms_history`
--

CREATE TABLE IF NOT EXISTS `sms_history` (
`id_sms_history` int(10) unsigned NOT NULL,
  `tujuan` varchar(15) DEFAULT NULL,
  `pesan` varchar(250) DEFAULT NULL,
  `port` int(10) NOT NULL,
  `tgl_input` datetime NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `sms_history`
--

INSERT INTO `sms_history` (`id_sms_history`, `tujuan`, `pesan`, `port`, `tgl_input`) VALUES
(4, '085267730918', 'Kode berlangganan anda adalah = B69D6DBC9968 | ', 13, '2014-11-28 19:06:16');

-- --------------------------------------------------------

--
-- Table structure for table `sms_outbox`
--

CREATE TABLE IF NOT EXISTS `sms_outbox` (
`id_sms_outbox` int(10) unsigned NOT NULL,
  `tujuan` varchar(15) DEFAULT NULL,
  `pesan` varchar(250) DEFAULT NULL,
  `port` int(10) NOT NULL,
  `tgl_input` datetime NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=142 ;

--
-- Dumping data for table `sms_outbox`
--

INSERT INTO `sms_outbox` (`id_sms_outbox`, `tujuan`, `pesan`, `port`, `tgl_input`) VALUES
(127, '085267730918', 'pos', 0, '2016-09-12 12:18:47'),
(128, '085267730918', 'pokl', 0, '2016-09-12 12:19:19'),
(134, '08526259469', 'Segera Lakukan Konfirmasi Pembayaran.', 14, '2016-09-30 22:07:19'),
(135, '081265286446', 'oke.', 14, '2016-10-10 13:56:14'),
(136, '089626584755', 'Terimakasih.', 14, '2016-10-10 14:37:16'),
(137, '089626584755', 'halooo...', 14, '2016-10-10 14:38:18'),
(138, '089626584755', 'okeh.', 14, '2016-10-10 14:39:11'),
(139, '089626584755', 'haloo', 14, '2016-10-10 14:52:41'),
(140, '085265904015', 'cek lagi....', 14, '2016-10-18 00:01:53'),
(141, '0895357896947', 'kamu dimana?', 14, '2016-10-18 00:13:07');

-- --------------------------------------------------------

--
-- Table structure for table `tarif`
--

CREATE TABLE IF NOT EXISTS `tarif` (
`id_tarif` int(20) NOT NULL,
  `koran` varchar(100) DEFAULT NULL,
  `satuan` double NOT NULL,
  `sebulan` double DEFAULT NULL,
  `setahun` double DEFAULT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `tarif`
--

INSERT INTO `tarif` (`id_tarif`, `koran`, `satuan`, `sebulan`, `setahun`) VALUES
(1, 'Reguler', 3000, 80000, 800000);

-- --------------------------------------------------------

--
-- Table structure for table `tindaklanjut`
--

CREATE TABLE IF NOT EXISTS `tindaklanjut` (
`id_tindak` int(100) NOT NULL,
  `nama` varchar(100) DEFAULT NULL,
  `img` varchar(100) DEFAULT NULL,
  `hasil_tindakan` varchar(1000) DEFAULT NULL,
  `tgl_input` datetime DEFAULT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=14 ;

--
-- Dumping data for table `tindaklanjut`
--

INSERT INTO `tindaklanjut` (`id_tindak`, `nama`, `img`, `hasil_tindakan`, `tgl_input`) VALUES
(9, 'Pengiriman yang lama kali', 'oke.png', 'oke', '2014-11-18 15:54:43'),
(10, 'Barang diterima dalam kemasan yang kurang baik', 'oke.png', 'Terimakasih. Kami sudah mengaudit pegawai kami', '2014-11-18 15:55:03'),
(11, 'Harga terlalu mahal', 'oke.png', 'Kita akan pertimbangkan soal harga', '2014-11-18 15:55:22'),
(12, 'Kapan ada promo bagi pelanggan setia?', 'oke.png', 'Secepatnya. Tks', '2014-11-18 15:55:37'),
(13, 'Kapan penerimaan pegawai riau pos?', 'oke.png', 'untuk sementara belum ada.', '2016-09-02 15:43:53');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `agen`
--
ALTER TABLE `agen`
 ADD PRIMARY KEY (`id_agen`);

--
-- Indexes for table `bank`
--
ALTER TABLE `bank`
 ADD PRIMARY KEY (`id_bank`);

--
-- Indexes for table `faq`
--
ALTER TABLE `faq`
 ADD PRIMARY KEY (`id_faq`);

--
-- Indexes for table `hasil_polling`
--
ALTER TABLE `hasil_polling`
 ADD KEY `id_polling` (`id_polling`);

--
-- Indexes for table `hasil_polling_sms`
--
ALTER TABLE `hasil_polling_sms`
 ADD PRIMARY KEY (`noHp`), ADD KEY `id_polling` (`id_polling`);

--
-- Indexes for table `hubungi`
--
ALTER TABLE `hubungi`
 ADD PRIMARY KEY (`id_hubungi`);

--
-- Indexes for table `jadwal`
--
ALTER TABLE `jadwal`
 ADD PRIMARY KEY (`id_jadwal`);

--
-- Indexes for table `konfirmasi`
--
ALTER TABLE `konfirmasi`
 ADD PRIMARY KEY (`id_konfirmasi`);

--
-- Indexes for table `konten`
--
ALTER TABLE `konten`
 ADD PRIMARY KEY (`id_konten`);

--
-- Indexes for table `kota`
--
ALTER TABLE `kota`
 ADD PRIMARY KEY (`id_kota`), ADD KEY `id_provinsi` (`id_provinsi`);

--
-- Indexes for table `login`
--
ALTER TABLE `login`
 ADD PRIMARY KEY (`username`);

--
-- Indexes for table `menu`
--
ALTER TABLE `menu`
 ADD PRIMARY KEY (`id_menu`);

--
-- Indexes for table `order`
--
ALTER TABLE `order`
 ADD PRIMARY KEY (`invoice`), ADD KEY `fk_orderProv` (`id_provinsi`), ADD KEY `fk_orderKota` (`id_kota`), ADD KEY `id_profil` (`id_profil`);

--
-- Indexes for table `polling`
--
ALTER TABLE `polling`
 ADD PRIMARY KEY (`id_polling`);

--
-- Indexes for table `profil`
--
ALTER TABLE `profil`
 ADD PRIMARY KEY (`id_profil`), ADD KEY `id_provinsi` (`id_provinsi`), ADD KEY `id_kota` (`id_kota`);

--
-- Indexes for table `promo`
--
ALTER TABLE `promo`
 ADD PRIMARY KEY (`id_promo`);

--
-- Indexes for table `provinsi`
--
ALTER TABLE `provinsi`
 ADD PRIMARY KEY (`id_provinsi`);

--
-- Indexes for table `saldo`
--
ALTER TABLE `saldo`
 ADD PRIMARY KEY (`id_saldo`);

--
-- Indexes for table `sms_history`
--
ALTER TABLE `sms_history`
 ADD PRIMARY KEY (`id_sms_history`);

--
-- Indexes for table `sms_outbox`
--
ALTER TABLE `sms_outbox`
 ADD PRIMARY KEY (`id_sms_outbox`);

--
-- Indexes for table `tarif`
--
ALTER TABLE `tarif`
 ADD PRIMARY KEY (`id_tarif`);

--
-- Indexes for table `tindaklanjut`
--
ALTER TABLE `tindaklanjut`
 ADD PRIMARY KEY (`id_tindak`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `agen`
--
ALTER TABLE `agen`
MODIFY `id_agen` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT for table `bank`
--
ALTER TABLE `bank`
MODIFY `id_bank` int(5) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `faq`
--
ALTER TABLE `faq`
MODIFY `id_faq` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `hubungi`
--
ALTER TABLE `hubungi`
MODIFY `id_hubungi` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `jadwal`
--
ALTER TABLE `jadwal`
MODIFY `id_jadwal` int(20) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=14;
--
-- AUTO_INCREMENT for table `konfirmasi`
--
ALTER TABLE `konfirmasi`
MODIFY `id_konfirmasi` int(10) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=19;
--
-- AUTO_INCREMENT for table `konten`
--
ALTER TABLE `konten`
MODIFY `id_konten` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=51;
--
-- AUTO_INCREMENT for table `menu`
--
ALTER TABLE `menu`
MODIFY `id_menu` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=30;
--
-- AUTO_INCREMENT for table `polling`
--
ALTER TABLE `polling`
MODIFY `id_polling` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `profil`
--
ALTER TABLE `profil`
MODIFY `id_profil` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=22;
--
-- AUTO_INCREMENT for table `promo`
--
ALTER TABLE `promo`
MODIFY `id_promo` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `saldo`
--
ALTER TABLE `saldo`
MODIFY `id_saldo` int(10) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `sms_history`
--
ALTER TABLE `sms_history`
MODIFY `id_sms_history` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `sms_outbox`
--
ALTER TABLE `sms_outbox`
MODIFY `id_sms_outbox` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=142;
--
-- AUTO_INCREMENT for table `tarif`
--
ALTER TABLE `tarif`
MODIFY `id_tarif` int(20) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `tindaklanjut`
--
ALTER TABLE `tindaklanjut`
MODIFY `id_tindak` int(100) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=14;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `hasil_polling`
--
ALTER TABLE `hasil_polling`
ADD CONSTRAINT `hasil_polling_ibfk_1` FOREIGN KEY (`id_polling`) REFERENCES `polling` (`id_polling`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `hasil_polling_sms`
--
ALTER TABLE `hasil_polling_sms`
ADD CONSTRAINT `hasil_polling_sms_ibfk_1` FOREIGN KEY (`id_polling`) REFERENCES `polling` (`id_polling`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `kota`
--
ALTER TABLE `kota`
ADD CONSTRAINT `kota_ibfk_1` FOREIGN KEY (`id_provinsi`) REFERENCES `provinsi` (`id_provinsi`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `order`
--
ALTER TABLE `order`
ADD CONSTRAINT `fk_orderKota` FOREIGN KEY (`id_kota`) REFERENCES `kota` (`id_kota`) ON DELETE CASCADE ON UPDATE CASCADE,
ADD CONSTRAINT `fk_orderProv` FOREIGN KEY (`id_provinsi`) REFERENCES `provinsi` (`id_provinsi`) ON DELETE CASCADE ON UPDATE CASCADE,
ADD CONSTRAINT `order_ibfk_1` FOREIGN KEY (`id_profil`) REFERENCES `profil` (`id_profil`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `profil`
--
ALTER TABLE `profil`
ADD CONSTRAINT `profil_ibfk_1` FOREIGN KEY (`id_kota`) REFERENCES `kota` (`id_kota`) ON DELETE CASCADE ON UPDATE CASCADE,
ADD CONSTRAINT `profil_ibfk_2` FOREIGN KEY (`id_provinsi`) REFERENCES `provinsi` (`id_provinsi`) ON DELETE CASCADE ON UPDATE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
