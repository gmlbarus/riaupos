<?php
/*
if (isset($_POST[submit])) {
	# code...
	$query 	= mysql_query("INSERT INTO detail_order(invoice,koran_1,koran_2,sebanyak,hari,harga,nominal_unik,status)
						VALUES (
						'".$_SESSION[invoice]."',
						'".$_SESSION[koran_1]."',
						'".$_SESSION[koran_2]."',
						'".$_SESSION[sebanyak]."',
						'".$_SESSION[hari]."',
						'".$_SESSION[harga]."',
						'".$_SESSION[nominal_unik]."',
						'"Belum lunas"',
						now())");

	if($query){
		echo '<div id="status_message" class="status_success">Data anda telah kami terima. Terima kasih</div>';
	}
	else{
		echo '<div id="status_message" class="status_error">Gagal mengirim data</div>';
	}
}
*/
if($_SESSION[tahap]>=$_GET[tahap]){
	if($_POST[lanjut]!=''){

				$_SESSION[tahap] 	= 6;
				echo '<div id="status_message" class="status_success">Data anda telah kami terima. Terima kasih</div>';
				echo "<script>window.location = 'media.php?page=pemesanan&tahap=6'</script>";
		}
	else if($_POST[batalkan]){
				echo "<script>window.location = 'media.php?page=pemesanan&tahap=1'</script>";
	}

	?>

	<div class="register form">
		<form name="form" action="<?php $_SERVER[PHP_SELF]; ?>" class="standard" method="post">
		<div class="clearfix">
		<h3 class="orangetext" style="color: #000000">Nama Pelanggan &nbsp&nbsp&nbsp&nbsp: <?php echo strtoupper($_SESSION[profil][0]); ?><br>
			<h3>Invoice # <?php echo $_SESSION['invoice'] ?></h3>
			<input type="hidden" name="invoice" value="<?php echo $_SESSION['invoice']?>">
			<?php echo $_SESSION['namauser']; ?>
		</div>

		<div class="clear"></div>

		<hr color='#000000' size='1'>

		<!-- Koran Utama -->
		<div class="clearfix" style="margin-top: 10px;margin-bottom:10px">
			<div style="width:20%; float: left">Koran Utama</div>
			<div style="width:80%">: <b>Riau Pos</b></div>
		</div>

		<div class="clear"></div>

		<!-- Koran Tambahan 1 -->
		<div class="clearfix" style="margin-top: 10px;margin-bottom:10px">
			<div style="width:20%; float: left">Koran Tambahan 1</div>
			<div style="width:80%">: <b><?php echo $_SESSION['koran_1'] ?></b></div>
		</div>

		<div class="clear"></div>

		<!-- Koran Tambahan 2 -->
		<div class="clearfix" style="margin-top: 10px;margin-bottom:10px">
			<div style="width:20%; float: left">Koran Tambahan 2</div>
			<div style="width:80%">: <b><?php echo $_SESSION['koran_2'] ?></b></div>
		</div>

		<div class="clear"></div>

		<!-- Via Pembayaran -->
		<div class="clearfix" style="margin-top: 10px;margin-bottom:10px">
			<div style="width:20%; float: left">Pembayaran Via</div>
			<div style="width:80%">: <b><?php echo $_SESSION['pembayaran'] ?></b></div>
		</div>

		<div class="clear"></div>

		<!-- Harga -->
		<div class="clearfix" style="margin-top: 10px;margin-bottom:10px">
			<div style="width:20%; float: left">Harga</div>
			<div style="width:80%">: <b>Rp. 79 000</b></div>
		</div>

		<div class="clear"></div>

		<!-- Sebanyak -->
		<div class="clearfix" style="margin-top: 10px;margin-bottom:10px">
			<div style="width:20%; float: left">Sebanyak</div>
			<div style="width:80%">: <b><?php echo $_SESSION['sebanyak'] ?> x</b></div>
		</div>

		<div class="clear"></div>

		<!-- Masa Aktif -->
		<div class="clearfix" style="margin-top: 10px;margin-bottom:10px">
			<div style="width:20%; float: left">Masa Aktif</div>
			<div style="width:80%">: <b><?php echo $_SESSION['hari'] ?> hari</b></div>
		</div>

		<div class="clear"></div>

		<!-- Total -->
		<div class="clearfix" style="margin-top: 10px;margin-bottom:10px">
			<div style="width:20%; float: left">Total</div>
			<div style="width:80%">: <b>Rp. <?php echo $_SESSION['harga'] - $_SESSION['nominal_unik'] ?></b></div>
		</div>


				<div class="clear"></div>


		<!-- angka unik -->
		<div class="clearfix" style="margin-top: 10px;margin-bottom:10px">
			<div style="width:20%; float: left">Nominal Unik</div>
			<div style="width:80%">: <b><?php echo $_SESSION['nominal_unik'] ?></b></div>
		</div>

				<div class="clear"></div>
		<!-- Total yang harus dibayar -->
		<div class="clearfix" style="padding:15px; background-color:#125e9d">
			<div style="width:30%; float: left;"><b style="color:#fefffc">Total yang harus dibayar</b></div>
			<div style="width:70%"><b style="color:#fefffc">: Rp. <?php echo $_SESSION['harga'] ?></b></div>
		</div>
		<br \>
		<p>Silahkan transfer pemesanan anda sesuai dengan nominal yang tercantum diatas ke rekening berikut :</p>
		<table cellpadding="0" border="0" width="670">
			<tbody>
			<tr>
				<th>Nama Bank</th>
				<th>Nomor Rekening</th>
				<th>Atas Nama</th>
			</tr>
			<?php
			$bank = mysql_query("select * from bank order by nama_bank");
			while($b = mysql_fetch_array($bank)){
				echo "<tr>
						<td>".strtoupper($b[nama_bank])."</td>
						<td>$b[norek]</td>
						<td>".strtoupper($b[nama_pemilik])."</td>
					</tr>";
			}
			?>
			</tbody>
		</table>
		<p>Pastikan anda menyertakan kode unik berikut : <b><?php echo $_SESSION['nominal_unik'] ?></b> pada berita transfer anda.</p>
		
		<div class="clearfix" style="padding:15px; background-color:#125e9d">
			<div style="width:50%; float: left;"><b style="color:#fefffc">Segera Melakukan Pembayaran Sebelum :</b></div>
			<div style="width:65%"><b style="color:#fefffc"><?php $date = time(); 
			$newdate = $date + (60 * 24 * 365); // 60 detik x 60 menit x 24 jam x 365 hari = 1 taun 
			echo date ('Y-m-j' , $newdate ); ?></b></div>
		</div>
		<div class="clear"></div>

		<div class="clear"></div>

			<div class="submit" style="width:30%; float: left"><input type="submit" value="Batalkan Order" name="batalkan"/></div>
			<div class="submit"><input type="submit" value="Order" name="lanjut" onclick="return validasi()"/></div>
		</form>
	</div>

	<?php
}
else{
	echo "<script>history.back();</script>";
}

?>


