<?php
include "../../../config/koneksi.php";
include "../../../config/library.php";
include "../../../config/fungsi_thumb.php";

$module=$_GET[module];
$act=$_GET[act];

if ($module=='rute' AND $act=='hapus'){
  mysql_query("DELETE FROM konten WHERE grup='rute' AND id_konten='$_GET[id]'");
  header('location:../../media.php?module='.$module);
}

elseif ($module=='rute' AND $act=='input'){
    mysql_query("INSERT INTO konten (deskripsi,grup) 
                            VALUES ('$_POST[deskripsi]','rute')");
	header('location:../../media.php?module='.$module);
}

elseif ($module=='rute' AND $act=='update'){
    mysql_query("UPDATE konten SET deskripsi = '$_POST[deskripsi]' WHERE grup='rute' AND id_konten='$_POST[id]'");
  header('location:../../media.php?module='.$module);
}
?>
