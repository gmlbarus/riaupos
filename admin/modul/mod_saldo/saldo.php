<?php
session_start();
 if (empty($_SESSION['namauser']) AND empty($_SESSION['passuser'])){
  echo "<link href='style.css' rel='stylesheet' type='text/css'>
 <center>Untuk mengakses modul, Anda harus login <br>";
  echo "<a href=../../index.php><b>LOGIN</b></a></center>";
}
else{
$aksi="modul/mod_saldo/aksi.php";
switch($_GET[act]){
  // Tampil Bank
  default:

    echo "<h2>Data Saldo</h2>
          <input type=button class=tombol value='Tambah Data' onclick=location.href='?module=saldo&act=tambah'>
          <table width=650px>
          <tr><th>No</th><th>Username</th><th> Invoice </th><th> Saldo </th><th> Tanggal Transfer </th><th>Aksi</th></tr>";
    $tampil=mysql_query("SELECT * FROM saldo ORDER BY id_saldo DESC");
    $no=1;
    while ($r=mysql_fetch_array($tampil)){
      $saldo = format_rupiah($r[saldo]);

      $date = date('Y-m-d');
      $dateDiff = date_diff(date_create($date), date_create($r['tanggal_transfer']), TRUE);

		echo "<tr><td align=left>$no</td>
              <td>$r[username]</td>
			        <td>$r[invoice]</td>
              <td>Rp.$r[saldo]</td>
              <td>$r[tanggal_transfer]</td>
              <td align=left>
					<a href=?module=saldo&act=edit&id=$r[id_saldo]><b>Edit</b></a> |
					<a href=$aksi?module=saldo&act=hapus&id=$r[id_saldo]><b>Hapus</b></a>
		      </tr>";
    $no++;
    }

    echo "</table>";
    break;

  case "tambah":
    echo "<h2>Tambah Data</h2>
          <form method=POST action='$aksi?module=saldo&act=input' enctype='multipart/form-data'>
          <table>
          <tr><td>User Name</td>	<td>  : <input type=text name='username' size=50></td></tr>
          <tr><td>Invoice</td>  <td>  : <input type=text name='invoice' size='50'></td></tr>
          <tr><td>Saldo</td>	<td>  : <input type=text name='saldo' size='50'></td></tr>
          <tr><td>Tanggal Transfer</td>	<td>  : <input type=text name='tanggal_transfer' size='50'></td></tr>
          <tr><td colspan=2><input type=submit class=tombol value=Simpan>
                            <input type=button class=tombol value=Batal onclick=self.history.back()></td></tr>
          </table></form><br><br><br>";
     break;

  case "edit":
    $edit = mysql_query("SELECT * FROM saldo WHERE id_saldo='$_GET[id]'");
    $r    = mysql_fetch_array($edit);

    echo "<h2>Edit Data</h2>
          <form method=POST enctype='multipart/form-data' action=$aksi?module=saldo&act=update>
          <input type=hidden name=id value=$r[id_saldo]>
          <table>
          <tr><td>User Name</td><td>     : <input type=text name='username' size=50 value='$r[username]'></td></tr>
          <tr><td>Invoice</td><td>     : <input type=text name='invoice' size=50 value='$r[invoice]'></td></tr>
          <tr><td>Saldo</td><td>      : <input type=text name='saldo' size=50 value='$r[saldo]'></td></tr>
          <tr><td>Tanggal Transfer</td><td>      : <input type=text name='tanggal_transfer' size=50 value='$r[tanggal_transfer]'></td></tr>
          <tr><td colspan=2><input type=submit class=tombol value=Update>
                            <input type=button class=tombol value=Batal onclick=self.history.back()></td></tr>
          </table></form>";
    break;
}
}
?>
