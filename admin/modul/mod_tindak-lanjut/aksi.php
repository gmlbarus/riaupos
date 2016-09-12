<?php
include "../../../config/koneksi.php";
include "../../../config/library.php";
include "../../../config/fungsi_thumb.php";

$module=$_GET[module];
$act=$_GET[act];

if ($module=='tindak-lanjut' AND $act=='hapus'){
  mysql_query("DELETE FROM makanan WHERE id_tindak='$_GET[id]'");
  header('location:../../media.php?module='.$module);
}

elseif ($module=='tindak-lanjut' AND $act=='input'){
  $lokasi_file = $_FILES['fupload']['tmp_name'];
  $nama_file   = $_FILES['fupload']['name'];

  if (!empty($lokasi_file)){
    UploadMakanan($nama_file);
    mysql_query("INSERT INTO makanan(nama,
                                    img,
                                    hasil_tindakan,
                                    tgl_input) 
                            VALUES('$_POST[nama]',
                                   '$nama_file',
								   '$_POST[hasil_tindakan]',
                                   now())");
  }
  else{
    mysql_query("INSERT INTO makanan(nama,
                                    hasil_tindakan,
                                    tgl_input) 
                            VALUES('$_POST[nama]',
								   '$_POST[hasil_tindakan]',
                                   now())");
  }
  header('location:../../media.php?module='.$module);
}

elseif ($module=='tindak-lanjut' AND $act=='update'){
  $lokasi_file = $_FILES['fupload']['tmp_name'];
  $nama_file   = $_FILES['fupload']['name'];

  // Apabila gambar tidak diganti
  if (empty($lokasi_file)){
    mysql_query("UPDATE makanan SET nama     = '$_POST[nama]',
                                   hasil_tindakan     = '$_POST[hasil_tindakan]'
                             WHERE id_tindak = '$_POST[id]'");
  }
  else{
    UploadMakanan($nama_file);	
	mysql_query("UPDATE makanan SET nama     = '$_POST[nama]',
                                   hasil_tindakan     = '$_POST[hasil_tindakan]',
								   img       = '$nama_file'
                             WHERE id_tindak = '$_POST[id]'");
  }
  header('location:../../media.php?module='.$module);
}
?>
