<?php
error_reporting(0);
session_start();
if (empty($_SESSION['namauser']) AND empty($_SESSION['passuser'])){
	echo "<link href='style.css' rel='stylesheet' type='text/css'>
	<center>Untuk mengakses modul, Anda harus login <br>";
	echo "<a href=../../index.php><b>LOGIN</b></a></center>";
}
else{
	$aksi="modul/mod_smsbroadcast/aksi.php";
    $daftar_hp = mysql_query("SELECT `hp` FROM profil");
    $jml  = mysql_num_rows($edit);



    echo "<h2>SMS Broadcast</h2>
          <form method=POST enctype='multipart/form-data' action=$aksi?module=smsbroadcast&act=update>
          <table>
          <tr><td>Jumlah Pelanggan</td>	<td>  : $jml</td></tr>
		  <tr><td>Isi Pesan</td>		<td>  : <textarea name='pesan' style='width: 600px; height: 50px;'></textarea></td></tr>
		  <tr><td colspan=2><input type=submit class=tombol value='Kirim'></td></tr>
          </table></form>";
}
?>
