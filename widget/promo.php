<h3 class="orangetext" style="color: #000000; text-align: center;">PROMOSI</h3>
<hr color="#000000" size="1">
<div class="clear"></div>

<?php
$sql=mysql_query("SELECT * FROM promo WHERE aktif='Y' ORDER BY id_promo DESC LIMIT 1");
$jumlah = mysql_num_rows($sql);

if ($jumlah > 0){
	while ($r=mysql_fetch_array($sql)){
		echo "<div class='promo_box'>
				<div class='center_promo_box'>            
					<div class='product_title'>$r[titel]</div>
					<div class='promo_img'>
						<a href='media.php?page=promo&mode=detail&id=$r[id_promo]'><img src='foto_promo/$r[img]' border='0' height=110 width=114></a>
					</div>
				</div>
			  </div>";
	}
}  
else{
	echo "<p class='info'>Tidak ada promo.</p>";
}
?>
<div class="clear"></div>
<div class="div-shadow-short"></div>