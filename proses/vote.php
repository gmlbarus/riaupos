<?php
session_start();
var_dump($_SESSION);
include "../config/koneksi.php";
$tahun = date('Y');
$ip_1 = $_SERVER['REMOTE_ADDR'];
$ip_2 = $_SERVER['HTTP_X_FORWARDED_FOR'];

/* if user has login, add username to polling, otherwise set it NULL */
if ( isset($_SESSION['basyenkuser'])){
	$username = $_SESSION['basyenkuser'];

	/* cek if username is already exist, drop polling result if it is */
	$query = mysql_query("SELECT `id_polling` FROM `hasil_polling` WHERE `username` = '{$username}' AND `tahun` = '{$tahun}'");
	if (mysql_num_rows($query)){
		echo "<script>alert('username ini  sudah pernah melakukan polling');
		window.location=('../index.php');</script>";
	}
}
/* set username = NULL */
else{
	$username = NULL;
}

/* do INSERT query */
if (true){
	$q = mysql_query("SELECT * FROM polling");
	$i=1;
	while ($d=mysql_fetch_array($q)) {
		$tahun = date('Y');
		$query = mysql_query("insert into hasil_polling values ('".$_POST['id'.$i]."','".$_POST['jawaban'.$i]."', '{$tahun}', '{$username}')");

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
