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
  mysql_query("INSERT INTO tarif(kelas,kategori_penumpang,one_way,pp) 
	                       VALUES('$_POST[kelas]',
                                '$_POST[kategori_penumpang]',
                                '$_POST[one_way]',
                                '$_POST[pp]')");
  header('location:../../media.php?module='.$module);
}

elseif ($module=='ongkos' AND $act=='update'){
  mysql_query("UPDATE tarif SET kelas 				= '$_POST[kelas]',
                                kategori_penumpang	= '$_POST[kategori_penumpang]',
                                one_way    			= '$_POST[one_way]',
							    pp    				= '$_POST[pp]'
                          WHERE id_tarif = '$_POST[id]'");
  header('location:../../media.php?module='.$module);
}
?>
