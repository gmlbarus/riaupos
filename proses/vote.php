<?php
session_start();
include "../config/koneksi.php";
$tahun = date('Y');
$ip_1 = $_SERVER['REMOTE_ADDR'];
$ip_2 = $_SERVER['HTTP_X_FORWARDED_FOR'];
$query = mysql_query("SELECT `id_polling` FROM `hasil_polling` WHERE `ip_1` = '{$ip_1}' AND `ip_2` = '{$ip_2}' AND `tahun` = '{$tahun}'");

if (mysql_num_rows($query)){
	echo "<script>alert('IP sudah digunakan');
	window.location=('../index.php');</script>";
}
else{
	$q = mysql_query("SELECT * FROM polling");
	$i=1;
	while ($d=mysql_fetch_array($q)) {
		$tahun = date('Y');
		$query = mysql_query("insert into hasil_polling values ('".$_POST['id'.$i]."','".$_POST['jawaban'.$i]."', '{$ip_1}', '{$ip_2}', '{$tahun}')");

		$i++;
	}

	if ($query) {
			echo "<script>alert('Terima kasih telah memberikan suara anda');
			window.location=('../index.php');</script>";
	}
	else {
			echo "<script>alert('Gagal memasukan data');
			window.location=('../index.php?act=polling');</script>";
	}
}
?>
