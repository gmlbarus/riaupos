<?php
session_start();
include "../../../config/koneksi.php";

$module=$_GET[module];
$act=$_GET[act];

if ($module=='ongkos' AND $act=='hapus'){
  mysql_query("DELETE FROM tarif WHERE id_tarif='$_GET[id]'");
  header('location:../../media.php?module='.$module);
}

elseif ($module=='ongkos' AND $act=='input'){  
  mysql_query("INSERT INTO tarif(kelas,sebulan,setahun) 
	                       VALUES('$_POST[kelas]',
                                '$_POST[sebulan]',
                                '$_POST[setahun]')");
  header('location:../../media.php?module='.$module);
}

elseif ($module=='ongkos' AND $act=='update'){
  mysql_query("UPDATE tarif SET kelas 				= '$_POST[kelas]',
                                sebulan    			= '$_POST[sebulan]',
							                  setahun    				= '$_POST[setahun]'
                          WHERE id_tarif = '$_POST[id]'");
  header('location:../../media.php?module='.$module);
}
?>
