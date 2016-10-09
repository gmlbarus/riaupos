<?php
session_start();
if (empty($_SESSION['namauser']) AND empty($_SESSION['passuser'])){
	echo "<link href='style.css' rel='stylesheet' type='text/css'>
	<center>Untuk mengakses modul, Anda harus login <br>";
	echo "<a href=../../index.php><b>LOGIN</b></a></center>";
}
else{
	?>

	<script language="javascript">
	$(document).ready(function() {
		$('#tabel-order').dataTable( {
			"order": [[ 0, "asc" ]]
		} );
	} );</script>

	<h1>Data Berlangganan</h1>
	<hr color='#000000' size='1'>

	<?php
	$query 	= mysql_query("SELECT `a`.*, `b`.`nama` FROM `order` `a` JOIN `profil` `b`
		ON `a`.`username`=`b`.`email`");
	$jml	= mysql_num_rows($query);
	if($jml>0){
		echo '<table id="tabel-order" class="display" cellspacing="0" width="100%">
				<thead>
					<tr>
						<th>No.</th>
						<th>Nama</th>
						<th>No. Invoice</th>
						<th>Tanggal Jatuh Tempo</th>
						<th>Status</th>
						<th>Detail</th>
					</tr>
				</thead>
				<tbody>';
		$no = 1;
		while($r=mysql_fetch_array($query)){
			$img	= "<a href='media.php?module=pemesanan&page=koran&mode=detail&id=$r[invoice]' title='Lihat detail'><img src='../images/detail.png'></a>
      <a href='media.php?module=pemesanan&page=koran&mode=validate&id=$r[invoice]'><b>| validasi </b></a>";
			if($r[status]=='Belum Lunas') {
				$status = 'Pending';
			}
			else if($r[status]=='Lunas') {
				$status = 'Ready';
				$img 	.= "<a href=\"javascript:win = window.open('print.php?id=".$r['invoice']."');win.print()\" title=\"Cetak Tiket\"> <img src='images/print.png'></a>";
			}

			echo "<tr>
					<td width=20>$no</td>
					<td>".strtoupper($r[nama])."</td>
					<td>".strtoupper($r[invoice])."</td>";
					echo "
					<td align='center'>".$r[jatuh_tempo]."</td>
					<td>".strtoupper($r[konfirmasi])."</td>
					<td align='center'>$img</td>
				</tr>";

			$no++;
		}
		echo '	</tbody></table>';
	}
	else{
		echo "<p>Tidak ada data yang ditampilkan.</p>";
	}

	if ($_GET[mode] == 'validate'){
		$invoice = $_GET['id'];
		$query = "UPDATE `order` SET `konfirmasi` = 'lunas' WHERE `invoice` = '{$invoice}'";
		mysql_query($query);
		echo "<script>alert('pembayaran invoice #{$_GET[id]} telah divalidasi');</script>";
	}
	if($_GET[mode]=='detail'){
		function index($teks){
			switch($teks){

			}
			return $string;
		}

		if($_POST[simpan] != ''){
			$kelas_temp	= $_POST[kelas_temp];
			$kelas		= $_POST[kelas];

			if(index($kelas_temp) < index($kelas)){
				mysql_query("update `order` set pijat='Y' where id_order='$_GET[id]'");
				mysql_query("update order_kelas set aktif='N' where id_order='$_GET[id]'");
				mysql_query("insert into order_kelas (id_order,kelas) values ('$_GET[id]','$kelas')");

				$query_u = mysql_query("select * from order_detail where id_order='$_GET[id]'");
				while($u = mysql_fetch_array($query_u)){
					mysql_query("update order_detail set tarif=(select $_POST[trip] from tarif where kelas='$kelas' and kategori_penumpang='$u[kategori]')
								where tgl_berangkat='$u[tgl_berangkat]' and kategori='$u[kategori]' and id_order='$_GET[id]'");
				}

				mysql_query("update order_pijat set tarif='0' where id_order='$_GET[id]'");

				$cek_p = mysql_query("select * from order_seat where id_order='$_GET[id]'");
				while($p = mysql_fetch_array($cek_p)){
					$kat[] = $p[kategori];
					$nam[] = $p[nama];
					$jk[]  = $p[jk];
				}
				mysql_query("delete from order_seat where id_order='$_GET[id]'");

				echo "<script>alert('Proses upgrade class anda telah disimpan. Selamat anda mendapatkan promo pijat gratis. Terima kasih !');
				window.location = 'media.php?page=tiket'</script>";
			}
			else{
				echo "<script>alert('Maaf, proses downgrade class tidak diperbolehkan'); </script>";
			}

		}

		$query_o 	= mysql_query("SELECT `a`.*, `b`.`nama` FROM `order` `a` JOIN `profil` `b`
			ON `a`.`username`=`b`.`email`	WHERE `invoice` = '{$_GET[id]}'");
		$o			= mysql_fetch_array($query_o);

		if($_POST[kelas]==''){
			$kelas_temp1 = $o[kelas];
		}
		else{
			$kelas_temp1 = $_POST[kelas];
		}

		if($o[status]=='Belum Lunas'){
			$tombol = "<input type='submit' value='Upgrade Kelas' name='upgrade'>
						<br>Dapatkan layanan pijat <b>GRATIS</b> dengan mengupgrade kelas anda !!!<br>
						atau dengan menambahkan uang Rp50.000";

		}
		elseif($o[status]=='Lunas'){
			$tombol = "";
		}

		echo "
		<hr color='#000000' size='1'>
		<br><br>
		<h1>Detail</h1>
		<hr color='#000000' size='4'>
		<form name='form' action='' method='post'>
		<table cellpadding=0 border=0 width=670>
			<tbody>
			<tr>
				<td width=150>Nama Pelanggan</td>
				<td width=10>:</td>
				<td><b>".strtoupper($o[nama])."</b></td>
			</tr>
			<tr>
				<td width=150>Nomor Invoice</td>
				<td width=10>:</td>
				<td><b>$o[invoice]</b></td>
			</tr>
			<tr>
				<td width=150>Koran Utama</td>
				<td width=10>:</td>
				<td><b>RIAU POS</b></td>
			</tr>
			<tr>
				<td width=150>Koran Tambahan 1</td>
				<td width=10>:</td>
				<td><b>".strtoupper($o[koran_1])."</b></td>
			</tr>
			<tr>
				<td width=150>Koran Tambahan 2</td>
				<td width=10>:</td>
				<td><b>".strtoupper($o[koran_2])."</b></td>
			</tr>
			<tr>
				<td width=150>Pembayaran Via</td>
				<td width=10>:</td>
				<td><b>".strtoupper($o[pembayaran_via])."</b></td>
			</tr>
			<tr>
				<td width=150>Sebanyak</td>
				<td width=10>:</td>
				<td><b>$o[sebanyak] x</b></td>
			</tr>
			<tr>
				<td width=150>Masa Aktif</td>
				<td width=10>:</td>
				<td><b>$o[masa_aktif] hari</b></td>
			</tr>
			<tr>
				<td width=150>Jatuh Tempo</td>
				<td width=10>:</td>
				<td><b>$o[jatuh_tempo]</b></td>
			</tr>
			<tr>
				<td width=150>Status Pembayaran</td>
				<td width=10>:</td>
				<td><b>".strtoupper($o[konfirmasi])."</b></td>
			</tr>

					<input type='hidden' name='kelas_temp' value='$o[kelas]'>
					<input type='hidden' name='trip' value='$o[trip]'>";
					if($o[status]=='Belum Lunas'){
					}

			echo "</b></td>
			</tr-->
			<tr>
				<td width=150>Total Bayar</td>
				<td width=10>:</td>
				<td><b>";
		$pe = mysql_fetch_array(mysql_query("select coalesce(sum(((qty*tarif) - ((qty*tarif)*diskon))),0) as total from order_detail where id_order=$o[id_order]"));
		$m 	= mysql_fetch_array(mysql_query("select coalesce(sum(tarif),0) as total from order_meal where id_order=$o[id_order]"));
		$pi = mysql_fetch_array(mysql_query("select coalesce(sum(tarif),0) as total from order_pijat where id_order=$o[id_order]"));

		echo 'Rp. '.format_rupiah($o[harga]);

		echo "</b></td>
			</tr>
			</tbody>
		</table>";

	}
}
?>
