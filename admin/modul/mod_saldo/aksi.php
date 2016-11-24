<?php
include "../../../config/koneksi.php";
include "../../../config/library.php";
include "../../../config/fungsi_thumb.php";

$module=$_GET[module];
$act=$_GET[act];

// Hapus banner
if ($module=='saldo' AND $act=='hapus'){
  mysql_query("DELETE FROM saldo WHERE id_saldo='$_GET[id]'");
  header('location:../../media.php?module='.$module);
}

// Input bank
elseif ($module=='saldo' AND $act=='input'){
    mysql_query("INSERT INTO saldo (username,saldo,tanggal_transfer) 
                            VALUES ('$_POST[username]','$_POST[saldo]','$_POST[tanggal_transfer]')");
	header('location:../../media.php?module='.$module);
}

// Update banner
elseif ($module=='saldo' AND $act=='update'){
    mysql_query("UPDATE saldo SET username    = '$_POST[username]',
                                  saldo        = '$_POST[saldo]',
                                  tanggal_transfer = '$_POST[tanggal_transfer]'
                             WHERE id_saldo = '$_POST[id]'");
  header('location:../../media.php?module='.$module);
}
?>
