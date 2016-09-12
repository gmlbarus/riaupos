<?php
session_start();
 if (empty($_SESSION['namauser']) AND empty($_SESSION['passuser'])){
  echo "<link href='style.css' rel='stylesheet' type='text/css'>
 <center>Untuk mengakses modul, Anda harus login <br>";
  echo "<a href=../../index.php><b>LOGIN</b></a></center>";
}
else{
$aksi="modul/mod_rute/aksi.php";
switch($_GET[act]){
  default:
    echo "<h2>Data Rute</h2>
          <input type=button class=tombol value='Tambah Data' onclick=location.href='?module=rute&act=tambah'>
          <table width=650px>
          <tr><th>No</th><th>Nama Rute</th><th>Aksi</th></tr>";
    $tampil=mysql_query("SELECT * FROM konten WHERE grup='rute'");
    $no=1;
    while ($r=mysql_fetch_array($tampil)){
		echo "<tr><td align=left>$no</td>
              <td>$r[deskripsi]</td>
              <td align=left>
					<a href=?module=rute&act=edit&id=$r[id_konten]><b>Edit</b></a> | 
					<a href=$aksi?module=rute&act=hapus&id=$r[id_konten]><b>Hapus</b></a>
		      </tr>";
    $no++;
    }
	
    echo "</table>";
    break;
  
  case "tambah":
    echo "<h2>Tambah Data</h2>
          <form method=POST action='$aksi?module=rute&act=input' enctype='multipart/form-data'>
          <table>
          <tr><td>Nama Rute</td>	<td>  : <input type=text name='deskripsi' size=50></td></tr>
          <tr><td colspan=2><input type=submit class=tombol value=Simpan>
                            <input type=button class=tombol value=Batal onclick=self.history.back()></td></tr>
          </table></form><br><br><br>";
     break;
    
  case "edit":
    $edit = mysql_query("SELECT * FROM konten WHERE id_konten='$_GET[id]'");
    $r    = mysql_fetch_array($edit);

    echo "<h2>Edit Data</h2>
          <form method=POST enctype='multipart/form-data' action=$aksi?module=rute&act=update>
          <input type=hidden name=id value=$r[id_konten]>
          <table>
          <tr><td>Nama Rute</td><td>     : <input type=text name='deskripsi' size=50 value='$r[deskripsi]'></td></tr>
          <tr><td colspan=2><input type=submit class=tombol value=Update>
                            <input type=button class=tombol value=Batal onclick=self.history.back()></td></tr>
          </table></form>";
    break;  
}
}
?>
