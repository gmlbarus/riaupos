<?php
include 'tahap_0.php';
?>
<div class='div-shadow'></div>

<h1>Informasi Promo</h1>
<hr color='#c5a430' size='1'>

<?php
$sql=mysql_query("SELECT * FROM promo WHERE aktif='Y'");
$jumlah = mysql_num_rows($sql);

if ($jumlah > 0){
	while ($r=mysql_fetch_array($sql)){
		echo "<div class='prod_box'>
				<div class='center_prod_box'>            
					<div class='product_title'>$r[titel]</div>
					<div class='product_img'>
						<a href='media.php?page=promo&mode=detail&id=$r[id_promo]'><img src='foto_promo/$r[img]' border='0' height=110 width=114></a>
					</div>
				</div>
			  </div>";
	}
}  
?>