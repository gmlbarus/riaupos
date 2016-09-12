<?php
include "../config/koneksi.php";

if ($_SESSION[leveluser]=='0'){
	echo "<li><a href='?module=header'><b>Header</b></a></li>";
	echo "<li><a href='?module=ym'><b>Yahoo Messenger</b></a></li>";
	echo "<li><a href='?module=bank'><b>Rekening Bank</b></a></li>";  
}
?>
