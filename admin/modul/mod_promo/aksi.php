<?php
include "../../../config/koneksi.php";
include "../../../config/library.php";
include "../../../config/fungsi_thumb.php";

$module=$_GET[module];
$act=$_GET[act];

if ($module=='promo' AND $act=='hapus'){
  mysql_query("DELETE FROM promo WHERE id_promo='$_GET[id]'");
  header('location:../../media.php?module='.$module);
}

elseif ($module=='promo' AND $act=='input'){
  $lokasi_file = $_FILES['fupload']['tmp_name'];
  $nama_file   = $_FILES['fupload']['name'];

  if (!empty($lokasi_file)){
    UploadPromo($nama_file);
    mysql_query("INSERT INTO promo(titel,
                                    deskripsi,
                                    img,
                                    aktif) 
                            VALUES('$_POST[titel]',
                                   '$_POST[deskripsi]',
								   '$nama_file',								   
                                   '$_POST[aktif]')");
  }
  else{
    mysql_query("INSERT INTO promo(titel,
                                    deskripsi,
                                    aktif) 
                            VALUES('$_POST[titel]',
                                   '$_POST[deskripsi]',
                                   '$_POST[aktif]')");
  }
  header('location:../../media.php?module='.$module);
}

elseif ($module=='promo' AND $act=='update'){
  $lokasi_file = $_FILES['fupload']['tmp_name'];
  $nama_file   = $_FILES['fupload']['name'];

  if (empty($lokasi_file)){
    mysql_query("UPDATE promo SET titel     = '$_POST[titel]', deskripsi = '$_POST[deskripsi]', aktif = '$_POST[aktif]'
                             WHERE id_promo = '$_POST[id]'");
  }
  else{
    UploadPromo($nama_file);
	mysql_query("UPDATE promo SET titel     = '$_POST[titel]', deskripsi = '$_POST[deskripsi]', aktif = '$_POST[aktif]', img       = '$nama_file'
                             WHERE id_promo = '$_POST[id]'");
  }
  header('location:../../media.php?module='.$module);
}
?>
