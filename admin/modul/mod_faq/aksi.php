<?php
include "../../../config/koneksi.php";
include "../../../config/library.php";
include "../../../config/fungsi_thumb.php";

$module=$_GET[module];
$act=$_GET[act];

if ($module=='faq' AND $act=='hapus'){
  mysql_query("DELETE FROM faq WHERE id_faq='$_GET[id]'");
  header('location:../../media.php?module='.$module);
}

elseif ($module=='faq' AND $act=='input'){
    mysql_query("INSERT INTO faq (pertanyaan,jawaban,aktif,tgl_input) 
                            VALUES ('$_POST[pertanyaan]','$_POST[jawaban]','$_POST[aktif]',now())");
	header('location:../../media.php?module='.$module);
}

elseif ($module=='faq' AND $act=='update'){
    mysql_query("UPDATE faq SET pertanyaan='$_POST[pertanyaan]',jawaban='$_POST[jawaban]',aktif='$_POST[aktif]' WHERE id_faq='$_POST[id]'");
  header('location:../../media.php?module='.$module);
}
?>
