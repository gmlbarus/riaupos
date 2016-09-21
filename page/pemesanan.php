<?php
switch ($_SESSION[tahap]){
	default:
		$th1	= "<th style='border-bottom: 5px solid #c5a430;'><a href='media.php?page=pemesanan&tahap=1'>Pilih Koran</a></th>";
		$th2	= "<th>Data Pelanggan</th>";
		$th3	= "<th>Metode Pembayaran</th>";
		$th4	= "<th>Pembayaran</th>";
		$th5	= "<th>Layanan Tambahan</th>";
		$th6	= "<th>Pembayaran</th>";

		$judul 	= 'Registrasi Berlangganan Koran';
		break;

	case 2:
		$th1	= "<th style='border-bottom: 5px solid #c5a430;'><a href='media.php?page=pemesanan&tahap=1'>Pilih Koran</a></th>";
		$th2	= "<th style='border-bottom: 5px solid #c5a430;'><a href='media.php?page=pemesanan&tahap=2'>Data Pelanggan</a></th>";
		$th3	= "<th>Metode Pembayaran</th>";
		$th4	= "<th>Pembayaran</th>";
		$th5	= "<th>Layanan Tambahan</th>";
		$th6	= "<th>Pembayaran</th>";

		$judul 	= 'Data Pelanggan';
		break;

	case 3:
		$th1	= "<th style='border-bottom: 5px solid #c5a430;'><a href='media.php?page=pemesanan&tahap=1'>Pilih Koran</a></th>";
		$th2	= "<th style='border-bottom: 5px solid #c5a430;'><a href='media.php?page=pemesanan&tahap=2'>Data Pelanggan</a></th>";
		$th3	= "<th style='border-bottom: 5px solid #c5a430;'><a href='media.php?page=pemesanan&tahap=3'>Metode Pembayaran</a></th>";
		$th4	= "<th>Pembayaran</th>";
		$th5	= "<th>Layanan Tambahan</th>";
		$th6	= "<th>Pembayaran</th>";

		$judul 	= 'Metode Pembayaran';
		break;

	case 4:
		$th1	= "<th style='border-bottom: 5px solid #c5a430;'><a href='media.php?page=pemesanan&tahap=1'>Pilih Koran</a></th>";
		$th2	= "<th style='border-bottom: 5px solid #c5a430;'><a href='media.php?page=pemesanan&tahap=2'>Data Pelanggan</a></th>";
		$th3	= "<th style='border-bottom: 5px solid #c5a430;'><a href='media.php?page=pemesanan&tahap=3'>Metode Pembayaran</a></th>";
		$th4	= "<th style='border-bottom: 5px solid #c5a430;'><a href='media.php?page=pemesanan&tahap=4'>Pembayaran</a></th>";
		$th5	= "<th>Layanan Tambahan</th>";
		$th6	= "<th>Pembayaran</th>";

		$judul 	= 'Pembayaran';
		break;

	case 5:
		$th1	= "<th style='border-bottom: 5px solid #c5a430;'><a href='media.php?page=pemesanan&tahap=1'>Pilih Koran</a></th>";
		$th2	= "<th style='border-bottom: 5px solid #c5a430;'><a href='media.php?page=pemesanan&tahap=2'>Data Pelanggan</a></th>";
		$th3	= "<th style='border-bottom: 5px solid #c5a430;'><a href='media.php?page=pemesanan&tahap=3'>Metode Pembayaran</a></th>";
		$th4	= "<th style='border-bottom: 5px solid #c5a430;'><a href='media.php?page=pemesanan&tahap=4'>Pembayaran</a></th>";
		$th5	= "<th style='border-bottom: 5px solid #c5a430;'><a href='media.php?page=pemesanan&tahap=5'>Layanan Tambahan</a></th>";
		$th6	= "<th>Pembayaran</th>";

		$judul 	= 'Layanan Tambahan';
		break;

	case 6:
		$th1	= "<th style='border-bottom: 5px solid #c5a430;'><a href='media.php?page=pemesanan&tahap=1'>Pilih Koran</a></th>";
		$th2	= "<th style='border-bottom: 5px solid #c5a430;'><a href='media.php?page=pemesanan&tahap=2'>Data Pelanggan</a></th>";
		$th3	= "<th style='border-bottom: 5px solid #c5a430;'><a href='media.php?page=pemesanan&tahap=3'>Metode Pembayaran</a></th>";
		$th4	= "<th style='border-bottom: 5px solid #c5a430;'><a href='media.php?page=pemesanan&tahap=4'>Pembayaran</a></th>";
		$th5	= "<th style='border-bottom: 5px solid #c5a430;'><a href='media.php?page=pemesanan&tahap=5'>Layanan Tambahan</a></th>";
		$th6	= "<th style='border-bottom: 5px solid #c5a430;'><a href='media.php?page=pemesanan&tahap=6'>Pembayaran</a></th>";

		$judul 	= 'Pembayaran';
		break;
}
?>

<h1><?php echo $judul; ?></h1>
<hr color='#c5a430' size='1'>

<table width='670' border='0' cellpadding='0'>
<tbody>
<tr align='center'>
	<?php
		echo $th1;
		echo $th2;
		echo $th3;
		echo $th4;
		echo $th5;
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

	case 5:
		include 'tahap_5.php';
		break;

	case 6:
		include 'tahap_6.php';
		break;

}
?>
