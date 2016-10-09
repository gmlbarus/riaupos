<?php
session_start();
if (empty($_SESSION['namauser']) AND empty($_SESSION['passuser'])){
	echo "<link href='style.css' rel='stylesheet' type='text/css'>
	<center>Untuk mengakses modul, Anda harus login <br>";
	echo "<a href=../../index.php><b>LOGIN</b></a></center>";
}
else{
	$aksi="modul/mod_konfirmasi/aksi.php";
	switch($_GET[act]){
	  default:
		echo "<h2>Konfirmasi Pembayaran</h2>
			  <table width=650px>
			  <tr><th>No</th><th>Invoice</th><th>Gambar</th><th>nama</th><th>pesan</th><th>Tgl_Input</th><th>Aksi</th></tr>";
		
		$tampil=mysql_query("SELECT * FROM Konfirmasi");
		$no=1;
		while ($r=mysql_fetch_array($tampil)){
		  echo "<tr><td align=left>$no</td>
					<td>$r[invoice]</td>
					<td align=left><img src='../foto_konfirmasi/$r[img]' height='50px'></td>
					<td>$r[nama]</td>
		     		<td>$r[pesan]</td>
		     		<td>$r[tgl_input]</td>		
					<td align=left><a href=$aksi?module=Konfirmasi&act=hapus&id=$r[id_konfirmasi]><b>Hapus</b></a>
					</tr>";
		$no++;
		}
		echo "</table>";
		break;
		
	}
}
?>
