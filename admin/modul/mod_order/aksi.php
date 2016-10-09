<?php
session_start();
include "../../../config/koneksi.php";

$module=$_GET[module];
$act=$_GET[act];

// Update modul
elseif ($module=='order' AND $act=='update'){
  mysql_query("UPDATE order SET invoice 	= '$_POST[invoice]',
                               username	= '$_POST[username]',
							   koran_1		= '$_POST[koran_1]',
							   koran_2		= '$_POST[koran_2]',
							   pembayaran_via		= '$_POST[pembayaran_via]',
                               harga    = '$_POST[harga]'
                          sebanyak		= '$_POST[sebanyak]',
								jatuh_tempo		= '$_POST[jatuh_tempo]',
								masa_aktif		= '$_POST[masa_aktif]',
								konfirmasi		= '$_POST[konfirmasi]',
                          WHERE invoice = '$_POST[id]'");
  header('location:../../media.php?module='.$module);
}
?>
