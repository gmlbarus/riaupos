<?php
session_start();
if (empty($_SESSION['namauser']) AND empty($_SESSION['passuser'])){
	echo "<link href='style.css' rel='stylesheet' type='text/css'>
	<center>Untuk mengakses modul, Anda harus login <br>";
	echo "<a href=../../index.php><b>LOGIN</b></a></center>";
}
else{
	$aksi="modul/mod_tindak-lanjut/aksi.php";
	switch($_GET[act]){
	  default:
		echo "<h2>Tindak Lanjut</h2>
			  <input type=button class=tombol value='Tambah Data' onclick=location.href='?module=tindak-lanjut&act=tambah'>
			  <table width=650px>
			  <tr><th>No</th><th>Keterangan</th><th>Validasi</th><th>Hasil Tindakan</th><th>Aksi</th></tr>";
		
		$tampil=mysql_query("SELECT * FROM tindaklanjut");
		$no=1;
		while ($r=mysql_fetch_array($tampil)){
		  $hasil_tindakan = ($r[hasil_tindakan]);
		  echo "<tr><td align=left>$no</td>
					<td>$r[nama]</td>
					<td align=left><img src='../foto_tindaklanjut/$r[img]' height='50px'></td>
					<td>$hasil_tindakan</td>
					<td align=left><a href=?module=tindak-lanjut&act=edit&id=$r[id_tindak]><b>Detail</b></a> | 
						  <a href=$aksi?module=tindak-lanjut&act=hapus&id=$r[id_tindak]><b>Hapus</b></a>
					</tr>";
		$no++;
		}
		echo "</table>";
		break;
	  
	  case "tambah":
		echo "<h2>Tambah Data</h2>
			  <form method=POST action='$aksi?module=tindak-lanjut&act=input' enctype='multipart/form-data'>
			  <table>
			  <tr><td>Keterangan</td>	<td>  : <input type=text name='nama' size=50></td></tr>
			  <tr><td>Hasil Tindakan</td>		<td>  : <input type=text name='hasil_tindakan' size='20'></td></tr>
			  <tr><td>Gambar</td>		<td>  : <input type=file name='fupload' size=40></td></tr>
			  
			  <tr><td colspan=2><input type=submit class=tombol value=Simpan>
								<input type=button class=tombol value=Batal onclick=self.history.back()></td></tr>
			  </table></form><br><br><br>";
		 break;
		
	  case "edit":
		$edit = mysql_query("SELECT * FROM tindaklanjut WHERE id_tindak='$_GET[id]'");
		$r    = mysql_fetch_array($edit);

		echo "<h2>Edit Data</h2>
			  <form method=POST enctype='multipart/form-data' action=$aksi?module=tindak-lanjut&act=update>
			  <input type=hidden name=id value=$r[id_tindak]>
			  <table>
			  <tr><td>Keterangan</td>	<td> : <input type=text name='nama' size=50 value='$r[nama]'></td></tr>
			  <tr><td>Hasil Tindakan</td>		<td> : <input type=text name='hasil_tindakan' size=20 value='$r[hasil_tindakan]'></td></tr>
			  <tr><td>Gambar</td>		<td> : <img src='../foto_tindaklanjut/$r[img]'></td></tr>
			  <tr><td>Ganti Gambar</td>	<td> : <input type=file name='fupload' size=30></td></tr>
			  
			  <tr><td colspan=2>*) Apabila gambar tidak diubah, dikosongkan saja.</td></tr>
			  <tr><td colspan=2><input type=submit class=tombol value=Update>
								<input type=button class=tombol value=Batal onclick=self.history.back()></td></tr>
			  </table></form>";
		break;  
	}
}
?>
