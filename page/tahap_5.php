<?php
if($_SESSION[tahap]>=$_GET[tahap]){
	if($_POST[lanjut]!=''){
		$_SESSION[pesan]	= $_POST[pesan];
		$_SESSION[pijat]	= $_POST[pijat];
		
		$_SESSION[tahap] 	= 6;
		echo "<script>window.location = 'media.php?page=pemesanan&tahap=6'</script>";
	}
	?>

	<form name="form" action="<?php $_SERVER[PHP_SELF]; ?>" class="standard" method="post">
		<h3 class="orangetext" style="color: #000000">Atau anda juga mau menikmati layanan pijat (Rp. 25.000) ?</h3>
		<div class="search-form-top">
			<div class="search-form-top-items-1">
				<input id="tidak" type="radio" name="pijat" value="N" checked="">
				<label for="tidak">TIDAK</label>
			</div>
			
			<div class="search-form-top-items-2">
				<input id="ya" type="radio" name="pijat" value="Y">
				<label for="ya">YA</label>
			</div>
		</div>

		<div class="clear"></div>
		<hr color='#c5a430' size='1'>
		<div class="submit"><input type="submit" value="Lanjutkan" name="lanjut"/></div>
	</form>
<?php
}
else{
	echo "<script>history.back();</script>";
}
?>