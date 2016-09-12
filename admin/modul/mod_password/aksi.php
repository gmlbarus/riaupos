<?php
include "../../../config/koneksi.php";

$r=mysql_fetch_array(mysql_query("SELECT * FROM login WHERE username='$_POST[user]'"));

$pass_lama=md5($_POST[pass_lama]);
$pass_baru=md5($_POST[pass_baru]);

if (empty($_POST[pass_baru]) OR empty($_POST[pass_lama]) OR empty($_POST[pass_ulangi])){
	echo "<script>alert('Anda harus mengisikan semua data pada form Ganti Password...'); history.back();</script>";
}
else{ 
	// Apabila password lama cocok dengan password admin di database
	if ($pass_lama==$r[pass]){
	  // Pastikan bahwa password baru yang dimasukkan sebanyak dua kali sudah cocok
	  if ($_POST[pass_baru]==$_POST[pass_ulangi]){
		mysql_query("UPDATE login SET pass = '$pass_baru' WHERE username=$_SESSION[namauser]");
		echo "<script>alert('Password anda telah diubah...'); history.back();</script>";
	  }
	  else{
		echo "<script>alert('Password anda tidak cocok...'); history.back();</script>";
	  }
	}
	else{
	  echo "<script>alert('Password lama anda salah...'); history.back();</script>";
	}
}
?>
