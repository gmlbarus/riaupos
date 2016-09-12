<?php
include "../config/koneksi.php";
$query = mysql_query("select * from menu where aktif='Y' and grup='$_SESSION[leveluser]' order by menu");

while($r = mysql_fetch_array($query)){
	echo "<li><a href='$r[url]'><b>$r[menu]</b></a></li>";
}

?>
