<?php
session_start();
include "../../../config/koneksi.php";

$module=$_GET[module];
$act=$_GET[act];

// Hapus modul
if ($module=='login' AND $act=='hapus'){
  mysql_query("DELETE FROM login WHERE id_login='$_GET[id]'");
  header('location:../../media.php?module='.$module);
}

// Input modul
elseif ($module=='login' AND $act=='input'){  
  mysql_query("INSERT INTO login(username,pass,grup,status) VALUES('$_POST[username]','$_POST[pass]','$_POST[grup]','$_POST[status]',now())");
  header('location:../../media.php?module='.$module);
}

// Update modul
elseif ($module=='login' AND $act=='update'){
  mysql_query("UPDATE login SET username 	= '$_POST[username]',
                               pass	= '$_POST[pass]',
							   hp		= '$_POST[grup]',
                               status    = '$_POST[status]'
                          WHERE username = '$_POST[username]'");
  header('location:../../media.php?module='.$module);
}
?>
