<?php
session_start();
include "../../../config/koneksi.php";

$module=$_GET[module];
$act=$_GET[act];

// Hapus modul
if ($module=='konfirmasi' AND $act=='hapus'){
  mysql_query("DELETE FROM konfirmasi WHERE id_konfirmasi='$_GET[id]'");
  header('location:../../media.php?module='.$module);
}

// Input modul
elseif ($module=='konfirmasi' AND $act=='input'){  
  mysql_query("INSERT INTO konfirmasi(invoice,nama,pesan,img,tgl_input) VALUES('$_POST[invoice]','$_POST[nama]','$_POST[pesan]','$_POST[img]',now())");
  header('location:../../media.php?module='.$module);
}

// Update modul
elseif ($module=='konfirmasi' AND $act=='update'){
  mysql_query("UPDATE konfirmasi SET invoice   = '$_POST[invoice]',
                               nama = '$_POST[nama]',
                                pesan   = '$_POST[pesan]',
                                img    = '$_POST[img]'
                          WHERE id_konfirmasi = '$_POST[id]'");
  header('location:../../media.php?module='.$module);
}
?>
