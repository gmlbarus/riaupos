<?php
session_start();
 if (empty($_SESSION['namauser']) AND empty($_SESSION['passuser'])){
  echo "<link href='style.css' rel='stylesheet' type='text/css'>
 <center>Untuk mengakses modul, Anda harus login <br>";
  echo "<a href=../../index.php><b>LOGIN</b></a></center>";
}
else{
$aksi="modul/mod_bank/aksi.php";
switch($_GET[act]){
  // Tampil Bank
  default:
    echo "<h2>Data Bank</h2>
          <input type=button class=tombol value='Tambah Data' onclick=location.href='?module=bank&act=tambah'>
          <table width=650px>
          <tr><th>No</th><th>Nama Bank</th><th>Nomor Rekening</th><th>Nama Pemilik</th><th>Aksi</th></tr>";
    $tampil=mysql_query("SELECT * FROM bank ORDER BY id_bank DESC");
    $no=1;
    while ($r=mysql_fetch_array($tampil)){
		echo "<tr><td align=left>$no</td>
              <td>$r[nama_bank]</td>
			  <td>$r[norek]</td>
              <td>$r[nama_pemilik]</td>
              <td align=left>
					<a href=?module=bank&act=edit&id=$r[id_bank]><b>Edit</b></a> | 
					<a href=$aksi?module=bank&act=hapus&id=$r[id_bank]><b>Hapus</b></a>
		      </tr>";
    $no++;
    }
	
    echo "</table>";
    break;
  
  case "tambah":
    echo "<h2>Tambah Data</h2>
          <form method=POST action='$aksi?module=bank&act=input' enctype='multipart/form-data'>
          <table>
          <tr><td>Nama Bank</td>	<td>  : <input type=text name='nama_bank' size=50></td></tr>
          <tr><td>No. Rekening</td>	<td>  : <input type=text name='norek' size='50'></td></tr>
          <tr><td>Nama Pemilik</td>	<td>  : <input type=text name='nama_pemilik' size='50'></td></tr>          
          <tr><td colspan=2><input type=submit class=tombol value=Simpan>
                            <input type=button class=tombol value=Batal onclick=self.history.back()></td></tr>
          </table></form><br><br><br>";
     break;
    
  case "edit":
    $edit = mysql_query("SELECT * FROM bank WHERE id_bank='$_GET[id]'");
    $r    = mysql_fetch_array($edit);

    echo "<h2>Edit Data</h2>
          <form method=POST enctype='multipart/form-data' action=$aksi?module=bank&act=update>
          <input type=hidden name=id value=$r[id_bank]>
          <table>
          <tr><td>Nama Bank</td><td>     : <input type=text name='nama_bank' size=50 value='$r[nama_bank]'></td></tr>
          <tr><td>No. Rekening</td><td>      : <input type=text name='norek' size=50 value='$r[norek]'></td></tr>
          <tr><td>Nama Pemilik</td><td>      : <input type=text name='nama_pemilik' size=50 value='$r[nama_pemilik]'></td></tr>
          <tr><td colspan=2><input type=submit class=tombol value=Update>
                            <input type=button class=tombol value=Batal onclick=self.history.back()></td></tr>
          </table></form>";
    break;  
}
}
?>
