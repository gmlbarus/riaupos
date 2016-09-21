<?php
session_start();
include "../../../config/koneksi.php";

$module=$_GET[module];
$act=$_GET[act];

if ($module=='jadwal' AND $act=='hapus'){
  mysql_query("DELETE FROM jadwal WHERE id_jadwal='$_GET[id]'");
  header('location:../../media.php?module='.$module);
}

elseif ($module=='jadwal' AND $act=='input'){  
  mysql_query("INSERT INTO jadwal(kode,daerah,jam_pengiriman,jam_tiba) 
	                       VALUES('$_POST[kode]',
                                '$_POST[daerah]',
                                '$_POST[jam_pengiriman]',
                                '$_POST[jam_tiba]')");
  header('location:../../media.php?module='.$module);
}

elseif ($module=='jadwal' AND $act=='update'){
  mysql_query("UPDATE jadwal SET kode 				= '$_POST[kode]',
                                 daerah				= '$_POST[daerah]',
                                 jam_pengiriman   	= '$_POST[jam_pengiriman]',
							     jam_tiba    		= '$_POST[jam_tiba]'
                          WHERE id_jadwal = '$_POST[id]'");
  header('location:../../media.php?module='.$module);
}
?>
