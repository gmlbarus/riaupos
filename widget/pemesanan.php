<?php
if($_SESSION[tahap]!=""){
	$url = "&tahap=".$_SESSION[tahap];
}
else{
	$url = "";
}
?>
<h3 class="orangetext" style="color: #000000; text-align: center;">REGISTRASI</h3>
<hr color="#000000" size="1">
<div class="clear"></div>
<div class="block-content">
	<div class="summary">
		<a href="media.php?page=pemesanan<?php echo $url; ?>" title="Berlangganan Sekarang"><p class="amount"><span>Berlangganan Sekarang</span></p></a>
	</div>            
</div>

<div class="div-shadow-short"></div>