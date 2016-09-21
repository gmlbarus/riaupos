<?php
if($_SESSION[tahap]>=$_GET[tahap]){
	if($_POST[lanjut]!=''){

				$_SESSION[tahap] 	= 6;
				echo "<script>window.location = 'media.php?page=pemesanan&tahap=6'</script>";
		}
	else if($_POST[batalkan]){
				echo "<script>window.location = 'media.php?page=pemesanan&tahap=1'</script>";
	}

	?>

	<div class="register form">
		<form name="form" action="<?php $_SERVER[PHP_SELF]; ?>" class="standard" method="post">
		<div class="clearfix">
			<h3>Invoice # <?php echo $_SESSION['invoice'] ?></h3>
			<input type="hidden" name="invoice" value="<?php echo $_SESSION['invoice']?>">
		</div>

		<div class="clear"></div>

		<hr color='#c5a430' size='1'>

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


		<div class="clear"></div>

		<div class="clear"></div>

			<div class='div-shadow'></div>
			<div class="submit" style="width:20%; float: left"><input type="submit" value="Batalkan Order" name="batalkan"/></div>
			<div class="submit"><input type="submit" value="Konfirmasi Pembayaran" name="lanjut" onclick="return validasi()"/></div>
		</form>
	</div>

	<?php
}
else{
	echo "<script>history.back();</script>";
}
?>

<script language="javascript">
function validasi(){
	$jmlkursi	= document.getElementById('jmlkursi').value;
	for ($i=0; $i<$jmlkursi; $i++) {
		if (document.getElementById('seat_'+$i).value == ''){
			alert("Pilihan kursi belum lengkap");
			return (false);
		}
	}
	return (true);
}

function cek(id){
	$hijau		= 'rgb(51, 204, 51)';
	$kuning		= 'rgb(255, 215, 0)';
	$jmlkursi	= document.getElementById('jmlkursi').value;

	if(document.getElementById(id).style.backgroundColor == $hijau){
		document.getElementById(id).style.backgroundColor = $kuning;
		for ($i=0; $i<$jmlkursi; $i++){
			if(document.getElementById('seat_' + $i).value==''){
				document.getElementById('seat_' + $i).value=document.getElementById(id).id;
				return;
			}
		}

		$cek=1;
		for ($i=0; $i<=$jmlkursi-1; $i++){
			if(document.getElementById('seat_' + $i).value==''){
				$cek=0;
			}
		}
		if($cek==1){
			document.getElementById(id).style.backgroundColor = $hijau;
			return;
		}
	}
	else if(document.getElementById(id).style.backgroundColor == $kuning){
		document.getElementById(id).style.backgroundColor = $hijau;
		for ($i=0; $i<$jmlkursi; $i++){
			if(document.getElementById('seat_' + $i).value == document.getElementById(id).id){
				document.getElementById('seat_' + $i).value='';
				return;
			}
		}
	}
}
</script>
