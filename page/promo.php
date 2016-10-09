<?php
echo "	<h1>Promo</h1>
		<hr color='#00000' size='1'>";

if($_GET[mode]=='detail'){
	$query 	= mysql_query("select * from promo where aktif='Y' and id_promo='$_GET[id]'");
	$d		= mysql_fetch_array($query);
	echo"<div class='feat_prod_box_details'>";
 	if ($d[img]!=''){
		echo "<div class='prod_img3'><img src='foto_promo/$d[img]' border='0'/></div>";
	}
	
	echo"<div class='details_big_box'>
			<div class='product_title_big'>$d[titel]</div>
			<div class='details'>$d[deskripsi]</div>
		</div>
		<div class='clear'></div>
		<div class='div-shadow'></div>";
}

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
else{
	echo "<p class='info'>Tidak ada promo.</p>";
}
?>