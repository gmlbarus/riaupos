<?php
session_start();
include "../../../config/koneksi.php";

$module=$_GET[module];
$act=$_GET[act];

// Hapus modul
if ($module=='agen' AND $act=='hapus'){
  mysql_query("DELETE FROM agen WHERE id_agen='$_GET[id]'");
  header('location:../../media.php?module='.$module);
}

// Input modul
elseif ($module=='agen' AND $act=='input'){  
  mysql_query("INSERT INTO agen(nama,alamat,hp,aktif,tgl_input) VALUES('$_POST[nama]','$_POST[alamat]','$_POST[hp]','$_POST[aktif]',now())");
  header('location:../../media.php?module='.$module);
}

// Update modul
elseif ($module=='agen' AND $act=='update'){
  mysql_query("UPDATE agen SET nama 	= '$_POST[nama]',
                               alamat	= '$_POST[alamat]',
							   hp		= '$_POST[hp]',
                               aktif    = '$_POST[aktif]'
                          WHERE id_agen = '$_POST[id]'");
  header('location:../../media.php?module='.$module);
}
?>
