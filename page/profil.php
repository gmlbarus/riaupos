<h1>Profil</h1>
<hr color='#c5a430' size='1'>
				  
<?php
$query 	= mysql_query("SELECT * FROM konten WHERE grup='profil'");
$r		= mysql_fetch_array($query);

echo "<p>$r[deskripsi]</p>";
?>