<?php
session_start();
 if (empty($_SESSION['namauser']) AND empty($_SESSION['passuser'])){
  echo "<link href='style.css' rel='stylesheet' type='text/css'>
 <center>Untuk mengakses modul, Anda harus login <br>";
  echo "<a href=../../index.php><b>LOGIN</b></a></center>";
}
else{
	$aksi="modul/mod_jadwal/aksi.php";
    $edit = mysql_query("SELECT * FROM konten WHERE grup='jadwal'");
    $r    = mysql_fetch_array($edit);

    echo "<h2>Jadwal Pengiriman</h2>
          <form method=POST enctype='multipart/form-data' action=$aksi?module=jadwal&act=update>
          <input type=hidden name=id value=$r[id_konten]>
          <table>
          <tr><td>Jadwal</td>	<td>  : <textarea name='deskripsi' style='width: 600px; height: 100px;'>$r[deskripsi]</textarea></td></tr>
		  <tr><td colspan=2><input type=submit class=tombol value=Update></td></tr>
          </table></form>";
}
?>
