<?php
$aksi = "modul/mod_jadwal/aksi.php";
switch($_GET[act]){
  default:
    echo "<h2>Jadwal Pengiriman</h2>
          <input type=button class='tombol' value='Tambah Data' onclick=\"window.location.href='?module=jadwal&act=tambah';\">
          <table>
          <tr><th>No</th><th>Kode</th><th>daerah</th><th>Jam Kirim</th><th>Jam Tiba</th><th>Aksi</th></tr>";
    $tampil = mysql_query("SELECT * FROM jadwal ORDER BY kode");
  $no   = 1;
    while ($r=mysql_fetch_array($tampil)){
    echo "<tr>
      <td>$no</td>
      <td>$r[kode]</td>
      <td>$r[daerah]</a></td>
      <td>$r[jam_pengiriman]</a></td>
      <td>$r[jam_tiba]</a></td>
      <td><a href=?module=jadwal&act=edit&id=$r[id_jadwal]><b>Edit</b></a> | 
          <a href=$aksi?module=jadwal&act=hapus&id=$r[id_jadwal]><b>Hapus</b></a>
      </td>
      </tr>";
    $no++;
    }
    echo "</table>";
    break;

  case "tambah":
    echo "<h2>Tambah Data</h2>
          <form method=POST action='$aksi?module=jadwal&act=input'>
          <table>
          <tr><td>Kode</td>     <td> : <input type=text name='kode' size='10'></td></tr>
          <tr><td>Daerah</td>     <td> : <input type=text name='daerah' size='10'></td></tr>
          <tr><td>Jam Kirim</td>     <td> : <input type=text name='jam_pengiriman' size='10'></td></tr>
          <tr><td>Jam Tiba</td>     <td> : <input type=text name='jam_tiba' size='10'></td></tr>
          <tr><td colspan=2><input type=submit class='tombol' value=Simpan>
                            <input type=button class='tombol' value=Batal onclick=self.history.back()></td></tr>
          </table></form>";
     break;
 
  case "edit":
    $edit = mysql_query("SELECT * FROM jadwal WHERE id_jadwal='$_GET[id]'");
    $r    = mysql_fetch_array($edit);

    echo "<h2>Edit Data</h2>
          <form method=POST action=$aksi?module=jadwal&act=update>
          <input type=hidden name=id value='$r[id_jadwal]'>
          <table>
          <tr><td>Kode</td>     <td> : <input type=text name='kode' size='10' value='$r[kode]'></td></tr>
          <tr><td>Daerah</td>     <td> : <input type=text name='daerah' size='10' value='$r[daerah]'></td></tr>
          <tr><td>Jam Kirim</td>     <td> : <input type=text name='jam_pengiriman' size='10' value='$r[jam_pengiriman]'></td></tr>
          <tr><td>Jam Tiba</td>     <td> : <input type=text name='jam_tiba' size='10' value='$r[jam_tiba]'></td></tr>
          <tr><td colspan=2><input type=submit class='tombol' value=Simpan>
                            <input type=button class='tombol' value=Batal onclick=self.history.back()></td></tr>
          </table></form>";
    break;  
}
?>
