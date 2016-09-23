<?php

switch ($_SESSION[tahap]){
	default:
		$th1	= "<th style='border-bottom: 5px solid #000000;'><a href='media.php?page=pemesanan&tahap=1'>Pilih Koran</a></th>";
		$th2	= "<th>Data Pelanggan</th>";
		$th3	= "<th>Transaksi</th>";
		$th4	= "<th>Pembayaran</th>";
		$th6	= "<th>Konfirmasi Pembayaran</th>";

		$judul 	= 'Registrasi Berlangganan Koran';
		break;

	case 2:
		$th1	= "<th style='border-bottom: 5px solid #000000;'><a href='media.php?page=pemesanan&tahap=1'>Pilih Koran</a></th>";
		$th2	= "<th style='border-bottom: 5px solid #000000;'><a href='media.php?page=pemesanan&tahap=2'>Data Pelanggan</a></th>";
		$th3	= "<th>Transaksi</th>";
		$th4	= "<th>Pembayaran</th>";
		$th6	= "<th>Konfirmasi Pembayaran</th>";

		$judul 	= 'Registrasi Berlangganan Koran';
		break;

	case 3:
		$th1	= "<th style='border-bottom: 5px solid ##000000;'><a href='media.php?page=pemesanan&tahap=1'>Pilih Koran</a></th>";
		$th2	= "<th style='border-bottom: 5px solid ##000000;'><a href='media.php?page=pemesanan&tahap=2'>Data Pelanggan</a></th>";
		$th3	= "<th style='border-bottom: 5px solid ##000000;'><a href='media.php?page=pemesanan&tahap=3'>Transaksi</a></th>";
		$th4	= "<th>Pembayaran</th>";
		$th6	= "<th>Konfirmasi Pembayaran</th>";

		$judul 	= 'Registrasi Berlangganan Koran';
		break;

	case 4:
		$th1	= "<th style='border-bottom: 5px solid #000000;'><a href='media.php?page=pemesanan&tahap=1'>Pilih Koran</a></th>";
		$th2	= "<th style='border-bottom: 5px solid #000000;'><a href='media.php?page=pemesanan&tahap=2'>Data Pelanggan</a></th>";
		$th3	= "<th style='border-bottom: 5px solid #000000;'><a href='media.php?page=pemesanan&tahap=3'>Transaksi</a></th>";
		$th4	= "<th style='border-bottom: 5px solid #000000;'><a href='media.php?page=pemesanan&tahap=4'>Pembayaran</a></th>";
		$th6	= "<th>Konfirmasi Pembayaran</th>";

		$judul 	= 'Registrasi Berlangganan Koran';
		break;

	case 6:
		$th1	= "<th style='border-bottom: 5px solid #000000;'><a href='media.php?page=pemesanan&tahap=1'>Pilih Koran</a></th>";
		$th2	= "<th style='border-bottom: 5px solid #000000;'><a href='media.php?page=pemesanan&tahap=2'>Data Pelanggan</a></th>";
		$th3	= "<th style='border-bottom: 5px solid #000000;'><a href='media.php?page=pemesanan&tahap=3'>Transaksi</a></th>";
		$th4	= "<th style='border-bottom: 5px solid #000000;'><a href='media.php?page=pemesanan&tahap=4'>Pembayaran</a></th>";
		$th6	= "<th style='border-bottom: 5px solid #000000;'><a href='media.php?page=pemesanan&tahap=6'>Konfirmasi Pembayaran</th>";

		$judul 	= 'Registrasi Berlangganan Koran';
		break;
	}
?>

<h1><?php echo $judul; ?></h1>
<hr color='#000000' size='1'>

<table width='670' border='0' cellpadding='0'>
<tbody>
<tr align='center'>
	<?php
		echo $th1;
		echo $th2;
		echo $th3;
		echo $th4;
		echo $th6;
	?>
</tr>
</tbody>
</table>
<div class='div-shadow'></div>

<?php
switch($_GET[tahap]){
	default:
		include 'tahap_1.php';
		break;

	case 2:
		include 'tahap_2.php';
		break;

	case 3:
		include 'tahap_3.php';
		break;

	case 4:
		include 'tahap_4.php';
		break;

	case 6:
		include 'tahap_6.php';
		break;

}
?>
