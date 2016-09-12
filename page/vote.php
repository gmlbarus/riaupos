<?php
// File koneksi ke database SQL Server 2005 Express Edition
include "koneksi.php";
 
		//Untuk memeriksa apakah option sudah di pilih jika sudah maka akan di insert ke database 
		$query=mysql_query("SELECT * FROM setting WHERE id='".intval($_POST["poll"])."'");
		if(mysql_num_rows($query)){
			$query="INSERT INTO votes(option_id, voted_tgl, ip) VALUES('".$_POST["poll"]."', '".date('Y-m-d H:i:s')."', '".$_SERVER['REMOTE_ADDR']."')";   // yang akan di insert ke database adalah pilihan jawaban, tanggal dan ip addreess nya