<?php
include "../../../config/koneksi.php";
include "../../../config/library.php";
include "../../../config/fungsi_thumb.php";

$module=$_GET[module];
$act=$_GET[act];

// Hapus banner
if ($module=='bank' AND $act=='hapus'){
  mysql_query("DELETE FROM bank WHERE id_bank='$_GET[id]'");
  header('location:../../media.php?module='.$module);
}

// Input bank
elseif ($module=='bank' AND $act=='input'){
    mysql_query("INSERT INTO bank (nama_bank,norek,nama_pemilik) 
                            VALUES ('$_POST[nama_bank]','$_POST[norek]','$_POST[nama_pemilik]')");
	header('location:../../media.php?module='.$module);
}

// Update banner
elseif ($module=='bank' AND $act=='update'){
    mysql_query("UPDATE bank SET nama_bank    = '$_POST[nama_bank]',
                                 norek        = '$_POST[norek]',
                                 nama_pemilik = '$_POST[nama_pemilik]'
                             WHERE id_bank = '$_POST[id]'");
  header('location:../../media.php?module='.$module);
}
?>
