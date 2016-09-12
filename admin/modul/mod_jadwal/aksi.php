<?php
include "../../../config/koneksi.php";
include "../../../config/library.php";
include "../../../config/fungsi_thumb.php";

$module=$_GET[module];
$act=$_GET[act];

if ($module=='jadwal' AND $act=='update'){
    mysql_query("UPDATE konten SET deskripsi='$_POST[deskripsi]' WHERE grup='jadwal'");
	header('location:../../media.php?module='.$module);
}
?>
