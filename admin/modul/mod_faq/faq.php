<?php
session_start();
 if (empty($_SESSION['namauser']) AND empty($_SESSION['passuser'])){
  echo "<link href='style.css' rel='stylesheet' type='text/css'>
 <center>Untuk mengakses modul, Anda harus login <br>";
  echo "<a href=../../index.php><b>LOGIN</b></a></center>";
}
else{
$aksi="modul/mod_faq/aksi.php";
switch($_GET[act]){
  default:
    echo "<h2>Data FAQ</h2>
          <input type=button class=tombol value='Tambah Data' onclick=location.href='?module=faq&act=tambah'>
          <table width=650px>
          <tr><th>No</th><th>Pertanyaan</th><th>Jawaban</th><th>Aktif</th><th>Aksi</th></tr>";
    
	$tampil=mysql_query("SELECT * FROM faq");
    $no=1;
    while ($r=mysql_fetch_array($tampil)){
		echo "<tr><td align=left>$no</td>
              <td>$r[pertanyaan]</td>
			  <td>$r[jawaban]</td>
			  <td>$r[aktif]</td>
              <td align=left>
					<a href=?module=faq&act=edit&id=$r[id_faq]><b>Edit</b></a> | 
					<a href=$aksi?module=faq&act=hapus&id=$r[id_faq]><b>Hapus</b></a>
		      </tr>";
    $no++;
    }
	
    echo "</table>";
    break;
  
  case "tambah":
    echo "<h2>Tambah Data</h2>
          <form method=POST action='$aksi?module=faq&act=input' enctype='multipart/form-data'>
          <table>
          <tr><td>Pertanyaan</td>	<td>  : <textarea name='pertanyaan' style='width: 600px; height: 100px;'></textarea></td></tr>
		  <tr><td>Jawaban</td>		<td>  : <textarea name='jawaban' style='width: 600px; height: 100px;'></textarea></td></tr>
		  <tr><td>Aktif</td>      	<td>  : <input type=radio name='aktif' value='Y' checked>Y 
											<input type=radio name='aktif' value='N'>N  </td></tr>
          <tr><td colspan=2><input type=submit class=tombol value=Simpan>
                            <input type=button class=tombol value=Batal onclick=self.history.back()></td></tr>
          </table></form><br><br><br>";
     break;
    
  case "edit":
    $edit = mysql_query("SELECT * FROM faq WHERE id_faq='$_GET[id]'");
    $r    = mysql_fetch_array($edit);

    echo "<h2>Edit Data</h2>
          <form method=POST enctype='multipart/form-data' action=$aksi?module=faq&act=update>
          <input type=hidden name=id value=$r[id_faq]>
          <table>
          <tr><td>Pertanyaan</td>	<td>  : <textarea name='pertanyaan' style='width: 600px; height: 100px;'>$r[pertanyaan]</textarea></td></tr>
		  <tr><td>Jawaban</td>		<td>  : <textarea name='jawaban' style='width: 600px; height: 100px;'>$r[jawaban]</textarea></td></tr>";
			if ($r[aktif]=='Y'){
			  echo "<tr><td>Aktif</td> <td> : <input type=radio name='aktif' value='Y' checked>Y  
											  <input type=radio name='aktif' value='N'> N</td></tr>";
			}
			else{
			  echo "<tr><td>Aktif</td> <td> : <input type=radio name='aktif' value='Y'>Y  
											  <input type=radio name='aktif' value='N' checked>N</td></tr>";
			}
     echo "<tr><td colspan=2><input type=submit class=tombol value=Update>
                            <input type=button class=tombol value=Batal onclick=self.history.back()></td></tr>
          </table></form>";
    break;  
}
}
?>
