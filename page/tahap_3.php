<?php
if($_SESSION[tahap]>=$_GET[tahap]){
	if($_POST[lanjut]!=''){
		$jml_penumpang = $_POST[jml_penumpang];
		unset($_SESSION[kategori_p],$_SESSION[nama_p],$_SESSION[jk_p]);
		for($p=1; $p<=$jml_penumpang; $p++){
			$_SESSION[kategori_p][] = $_POST['kategori_'.$p];
			$_SESSION[nama_p][] 	= $_POST['nama_'.$p];
			$_SESSION[jk_p][] 		= $_POST['jk_'.$p];
		}

		$_SESSION[tahap] = 4;
		echo "<script>window.location = 'media.php?page=pemesanan&tahap=4'</script>";
		//echo "<script>window.location = 'page/tahap_3.php'</script>";
	}
?>

<div class="register form">
	<form name="form" action="<?php $_SERVER[PHP_SELF]; ?>" class="standard" method="post" onSubmit="return validasi(this)">

	<div class="search-form-top">
		<?php
		function is_set($session, $default){
			return isset($_SESSION[$session]) ? $_SESSION[$session] : $default;
		}

		function is_selected($session, $opt){
			echo $_SESSION[$session] == $opt ? "value='{$opt}' selected" : "value='{$opt}'" ;
		}
			$invoice = is_set('invoice', bin2hex(openssl_random_pseudo_bytes(6)));
		?>
		<h3>Invoice # <?php echo $invoice ?></h3>
		<input type="hidden" name="invoice" value="<?php echo $invoice?>">
	</div>

	<div class="clear"></div>

	<hr color='#c5a430' size='1'>

	<div class="clear"></div>

	<!-- Pembayaran VIA -->
	<div class="clearfix">
		<div class="input text"><label for="pembayaran">Pembayaran via</label>
			<select class="" name="pembayaran" id="pembayaran">
				<option>-Metode Pembayaran-</option>
				<option <?php is_selected('pembayaran', 'atm') ?>>ATM</option>
				<option <?php is_selected('pembayaran', 'kartu_kredit') ?>>Kartu Kredit</option>
				<option <?php is_selected('pembayaran', 'promo') ?>>Promo</option>
			</select>
		</div>
	</div>

	<div class="clear"></div>

	<!-- Harga -->
	<div class="clearfix" style="margin-top: 10px;margin-bottom:10px">
		<div style="width:20%; float: left">harga</div>
		<div style="width:80%">: <b>79.000</b></div>
	</div>

	<div class="clear"></div>

	<!-- Sebanyak -->
	<div class="clearfix">
		<div class="input text"><label for="nama">Sebanyak</label>
			<select style="width:20%; float: left" name="sebanyak" id="sebanyak">
				<?php
				for ($i=1; $i < 99; $i++) {
					echo "<option ";
					is_selected('sebanyak', $i);
					echo ">{$i} x</option>";
				}
				?>
			</select>
	</div>

	<div class="clear"></div>

	<!-- Nominal Unik -->
	<div class="clearfix" style="margin-top: 10px;margin-bottom:10px">
		<div style="width:20%; float: left">Nominal Unik</div>
		<?php $unik = rand(11, 99); ?>
		<div style="width:80%">: <b><?php echo $unik ?></b></div>
		<input type="hidden" name="nominal_unik" value="<?php echo $unik; ?>"/>
	</div>

	<div class="clear"></div>

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
