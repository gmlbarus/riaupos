<?php
$server = "localhost";
$username = "root";
$password = "";
$database = "koran";

// Koneksi dan memilih database di server
mysql_connect($server,$username,$password) or die("Koneksi gagal");
mysql_select_db($database) or die("Database tidak bisa dibuka");

/*
$link_mysql = mysql_pconnect($server,$username,$password)or die
('Maaf tidak dapat melakukan koneksi ke database:'.mysql_error());
mysql_select_db($database,$link_mysql);
*/
?>
