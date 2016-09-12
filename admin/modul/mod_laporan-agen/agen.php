<?php
$aksi = "modul/mod_agen/aksi.php";
switch($_GET[act]){
  // Tampil Modul
  default:
    echo "<h2>Data Agen</h2>
          <table>
          <tr><th>No</th><th>Nama Perusahaan</th><th>Alamat</th><th>Telepon</th><th>Aktif</th>";
    $tampil	= mysql_query("SELECT * FROM agen");
	$no		= 1;
    while ($r=mysql_fetch_array($tampil)){
		echo "<tr>
			<td>$no</td>
			<td>$r[nama]</td>
			<td>$r[alamat]</a></td>
			<td>$r[hp]</a></td>
			<td>$r[aktif]</td>
			</tr>";
		$no++;
    }
    echo "</table>";
    break;

  case "tambah":
    echo "<h2>Tambah Data</h2>
          <form method=POST action='$aksi?module=agen&act=input'>
          <table>
          <tr><td>Nama Perusahaan</td> 	<td> : <input type=text name='nama' size='50'></td></tr>
          <tr><td>Alamat</td>       	<td> : <textarea name='alamat' style='width: 375px; height: 50px;'></textarea></td></tr>
		  <tr><td>Nomor Ponsel</td> 	<td> : <input type=text name='hp' size='50'></td></tr>
          <tr><td>Aktif</td>      <td> : <input type=radio name='aktif' value='Y' checked>Y 
                                         <input type=radio name='aktif' value='N'>N  </td></tr>
          <tr><td colspan=2><input type=submit class='tombol' value=Simpan>
                            <input type=button class='tombol' value=Batal onclick=self.history.back()></td></tr>
          </table></form>";
     break;
 
  case "edit":
    $edit = mysql_query("SELECT * FROM agen WHERE id_agen='$_GET[id]'");
    $r    = mysql_fetch_array($edit);

    echo "<h2>Edit Data</h2>
          <form method=POST action=$aksi?module=agen&act=update>
          <input type=hidden name=id value='$r[id_agen]'>
          <table>
          <tr><td>Nama Perusahaan</td>  <td> : <input type=text name='nama' size='50' value='$r[nama]'></td></tr>
		  <tr><td>Alamat</td>       	<td> : <textarea name='alamat' style='width: 375px; height: 50px;'>$r[alamat]</textarea></td></tr>
		  <tr><td>Nomor Ponsel</td> 	<td> : <input type=text name='hp' size='50' value='$r[hp]'></td></tr>";
    if ($r[aktif]=='Y'){
      echo "<tr><td>Aktif</td> <td> : <input type=radio name='aktif' value='Y' checked>Y  
                                      <input type=radio name='aktif' value='N'> N</td></tr>";
    }
    else{
      echo "<tr><td>Aktif</td> <td> : <input type=radio name='aktif' value='Y'>Y  
                                      <input type=radio name='aktif' value='N' checked>N</td></tr>";
    }
    echo "<tr><td colspan=2><input type=submit class='tombol' value=Update>
                            <input type=button class='tombol' value=Batal onclick=self.history.back()></td></tr>
          </table></form>";
    break;  
}
?>
