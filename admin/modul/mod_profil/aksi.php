<?php
session_start();
include "../../../config/koneksi.php";
include "../../../config/fungsi_thumb.php";

$module=$_GET[module];
$act=$_GET[act];

if ($module=='profil' AND $act=='update'){
  mysql_query("UPDATE konten SET deskripsi = '$_POST[isi]' WHERE id_konten = '$_POST[id]' AND grup='profil'");
  
  header('location:../../media.php?module='.$module);
}
?>
