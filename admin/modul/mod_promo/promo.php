<?php
session_start();
if (empty($_SESSION['namauser']) AND empty($_SESSION['passuser'])){
	echo "<link href='style.css' rel='stylesheet' type='text/css'>
	<center>Untuk mengakses modul, Anda harus login <br>";
	echo "<a href=../../index.php><b>LOGIN</b></a></center>";
}
else{
	$aksi="modul/mod_promo/aksi.php";
	switch($_GET[act]){
	  default:
		echo "<h2>Promo</h2>
			  <input type=button class=tombol value='Tambah Data' onclick=location.href='?module=promo&act=tambah'>
			  <table width=650px>
			  <tr><th>No</th><th>Judul</th><th>Deskripsi</th><th>Gambar</th><th>Aktif</th><th>Aksi</th></tr>";
		
		$tampil=mysql_query("SELECT * FROM promo ORDER BY id_promo DESC");
		$no=1;
		while ($r=mysql_fetch_array($tampil)){
		  echo "<tr><td align=left>$no</td>
					<td>$r[titel]</td>
					<td>$r[deskripsi]</td>
					<td align=left><img src='../foto_promo/$r[img]' height='50px'></td>
					<td>$r[aktif]</td>
					<td align=left><a href=?module=promo&act=edit&id=$r[id_promo]><b>Edit</b></a> | 
						  <a href=$aksi?module=promo&act=hapus&id=$r[id_promo]><b>Hapus</b></a>
					</tr>";
		$no++;
		}
		echo "</table>";
		break;
	  
	  case "tambah":
		echo "<h2>Tambah Data</h2>
			  <form method=POST action='$aksi?module=promo&act=input' enctype='multipart/form-data'>
			  <table>
			  <tr><td>Judul</td>		<td>  : <input type=text name='titel' size=50></td></tr>
			  <tr><td>Deskripsi</td>	<td>  : <textarea name='deskripsi' style='width: 600px; height: 100px;'></textarea></td></tr>
			  <tr><td>Gambar</td>		<td>  : <input type=file name='fupload' size=40></td></tr>
			  <tr><td>Aktif</td>      	<td>  : <input type=radio name='aktif' value='Y' checked>Y 
                                         <input type=radio name='aktif' value='N'>N  </td></tr>
										 
			  <tr><td colspan=2><input type=submit class=tombol value=Simpan>
								<input type=button class=tombol value=Batal onclick=self.history.back()></td></tr>
			  </table></form><br><br><br>";
		 break;
		
	  case "edit":
		$edit = mysql_query("SELECT * FROM promo WHERE id_promo='$_GET[id]'");
		$r    = mysql_fetch_array($edit);

		echo "<h2>Edit Data</h2>
			  <form method=POST enctype='multipart/form-data' action=$aksi?module=promo&act=update>
			  <input type=hidden name=id value=$r[id_promo]>
			  <table>
			  <tr><td>Judul</td>		<td> : <input type=text name='titel' size=50 value='$r[titel]'></td></tr>
			  <tr><td>Deskripsi</td>	<td> : <textarea name='deskripsi' style='width: 600px; height: 100px;'>$r[deskripsi]</textarea></td></tr>
			  <tr><td>Gambar</td>		<td> : <img src='../foto_promo/$r[img]'></td></tr>
			  <tr><td>Ganti Gambar</td>	<td> : <input type=file name='fupload' size=30></td></tr>
			  <tr><td colspan=2>*) Apabila gambar tidak diubah, dikosongkan saja.</td></tr>";
    if ($r[aktif]=='Y'){
      echo "<tr><td>Aktif</td> <td> : <input type=radio name='aktif' value='Y' checked>Y  
                                      <input type=radio name='aktif' value='N'> N</td></tr>";
    }
    else{
      echo "<tr><td>Aktif</td> <td> : <input type=radio name='aktif' value='Y'>Y  
                                      <input type=radio name='aktif' value='N' checked>N</td></tr>";
    }
    echo "	  <tr><td colspan=2><input type=submit class=tombol value=Update>
								<input type=button class=tombol value=Batal onclick=self.history.back()></td></tr>
			  </table></form>";
		break;  
	}
}
?>
