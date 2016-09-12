<?php
function UploadMakanan($fupload_name){
  $vdir_upload = "../../../foto_makanan/";
  $vfile_upload = $vdir_upload . $fupload_name;
  $tipe_file   = $_FILES['fupload']['type'];
  move_uploaded_file($_FILES["fupload"]["tmp_name"], $vfile_upload);
}

function UploadPromo($fupload_name){
  $vdir_upload = "../../../foto_promo/";
  $vfile_upload = $vdir_upload . $fupload_name;
  $tipe_file   = $_FILES['fupload']['type'];
  move_uploaded_file($_FILES["fupload"]["tmp_name"], $vfile_upload);
}
?>
