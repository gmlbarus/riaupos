<?php
if($_SESSION[tahap]>=$_GET[tahap]){
	if($_POST[lanjut]!=''){
		$_SESSION['order'] = array_replace_recursive($_SESSION['order'], $_POST);

		if (isset($_SESSION[tahap]))
			$_SESSION[tahap] = $_SESSION[tahap] > 4 ? $_SESSION[tahap] : 4;
		echo "<script>window.location = 'media.php?page=pemesanan&tahap=4'</script>";
		//echo "<script>window.location = 'page/tahap_3.php'</script>";
	}

	$query = "SELECT `sebulan` FROM `tarif` LIMIT 1";
	$result = mysql_query($query);

	// retrieve harga from database or 79000 as default
	$harga = (mysql_num_rows($res)) ? mysql_fetch_array($result)[0] : 79000;
?>
<script type="text/javascript">
	function hitung_harga(elem){
		var sebanyak = elem.value;
		// sebanyak = sebanyak.replace(/[^\d.]/g, "");
		var hari = sebanyak * 30;
		document.getElementById('hari').innerHTML = hari;
		document.getElementById('hari_form').value = hari;
		var unik = document.getElementById('nominal_unik').innerHTML;
		var status = document.getElementById('status_pembayaran').innerHTML;
		var harga = <?php echo $harga ?> * sebanyak + parseInt(unik);
		document.getElementById('total_harga').innerHTML = harga;
		document.getElementById('total_harga_form').value = harga;

		// alert(harga);
	}
</script>

<div class="register form">
	<form name="form" action="<?php $_SERVER[PHP_SELF]; ?>" class="standard" method="post" onSubmit="return validasi(this)">

	<div class="search-form-top">
		<?php
			$invoice = is_set('invoice', bin2hex(openssl_random_pseudo_bytes(6)));
		?>
		<h3>Invoice # <?php echo $invoice ?></h3>
		<input type="hidden" name="invoice" value="<?php echo $invoice?>">
	</div>

	<div class="clear"></div>

	<hr color='#000000' size='1'>

	<div class="clear"></div>

	<!-- Pembayaran VIA -->
	<div class="clearfix">
		<div class="input text"><label for="pembayaran">Pembayaran via</label>
			<select class="" name="pembayaran" id="pembayaran">
				<option>-Metode Pembayaran-</option>
				<option <?php is_selected('pembayaran', 'internet_banking') ?>>Internet Banking</option>
				<option <?php is_selected('pembayaran', 'mobile_banking') ?>>Mobile Banking</option>
				<option <?php is_selected('pembayaran', 'setoran_tunai') ?>>Setoran Tunai</option>
				<option <?php is_selected('pembayaran', 'atm') ?>>ATM</option>
				<option <?php is_selected('pembayaran', 'kartu_kredit') ?>>Kartu Kredit</option>
			</select>
		</div>
	</div>

	<div class="clear"></div>

	<!-- Harga -->
	<div class="clearfix" style="margin-top: 10px;margin-bottom:10px">
		<div style="width:20%; float: left">harga</div>
		<div style="width:80%">: <b><?php echo $harga?></b></div>
	</div>

	<div class="clear"></div>

	<!-- Sebanyak -->
	<div class="clearfix">
		<div class="input text"><label for="nama">Sebanyak</label>
			<select style="width:20%; float: left" name="sebanyak" id="sebanyak" onclick="hitung_harga(this)">
				<?php
				for ($i=1; $i < 13; $i++) {
					echo "<option ";
					is_selected('sebanyak', $i);
					echo ">{$i} x</option>";
				}
				?>
			</select>
			<?php $hari = is_set('hari', "30") ?>
			<div style="width:80%; padding:10px"><b>/ </b><b id="hari"><?php echo $hari ?></b><b> hari</b></div>
			<input type="hidden" name="hari" id="hari_form" value="<?php echo $hari ?>">
	</div>

	<div class="clear"></div>

	<!-- Nominal Unik -->
	<div class="clearfix" style="margin-top: 10px;margin-bottom:10px">
		<div style="width:20%; float: left">Nominal Unik</div>
		<?php $unik = is_set('nominal_unik',rand(11, 99)); ?>
		<div style="width:80%">: <b id="nominal_unik"><?php echo $unik; ?></b></div>
		<input type="hidden" name="nominal_unik" value="<?php echo $unik; ?>">
	</div>

	<div class="clear"></div>

<!-- Status Pembayaran -->
	<div class="clearfix" style="margin-top: 10px;margin-bottom:10px">
		<div style="width:20%; float: left">Status Pembayaran</div>
		<?php $status = is_set('status_pembayaran','belum lunas'); ?>
		<div style="width:80%">: <b id="status_pembayaran"><?php echo $status; ?></b></div>
		<input type="hidden" name="status_pembayaran" value="<?php echo $status; ?>">
	</div>


	<div class="clear"></div>

	<!-- Total Harga -->
	<div class="clearfix" style="padding-top: 10px;padding-bottom:10px; background-color: #f0f0f0;">
		<div style="width:30%; float: left">Total yang harus dibayar</div>
		<?php $harga = is_set('harga', '') ?>
		<div style="width:70%">: <b>Rp. </b><b id='total_harga'><?php echo $harga; ?></b></div>
		<input type="hidden" name="harga" id="total_harga_form" value="<?php echo $harga; ?>"/>
	</div>

	<div class="clear"></div>

	<div class="clear"></div>
	<div class="submit"><input type="submit" value="Order" name="lanjut"/></div></form>
</div>

<?php
}
else{
	echo "<script>history.back();</script>";
}
?>
