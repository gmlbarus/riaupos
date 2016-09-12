<?php
$aksi = "modul/mod_ongkos/aksi.php";
switch($_GET[act]){
  default:
    echo "<h2>Ongkos Tarif</h2>
          <input type=button class='tombol' value='Tambah Data' onclick=\"window.location.href='?module=ongkos&act=tambah';\">
          <table>
          <tr><th>No</th><th>Kelas</th><th>Kategori Penumpang</th><th>Sekali Jalan</th><th>Pulang Pergi</th><th>Aksi</th></tr>";
    $tampil	= mysql_query("SELECT * FROM tarif ORDER BY kelas");
	$no		= 1;
    while ($r=mysql_fetch_array($tampil)){
		$one_way = format_rupiah($r[one_way]);
		$pp = format_rupiah($r[pp]);
		echo "<tr>
			<td>$no</td>
			<td>$r[kelas]</td>
			<td>$r[kategori_penumpang]</a></td>
			<td>Rp. $one_way</td>
			<td>Rp. $pp</td>
			<td><a href=?module=ongkos&act=edit&id=$r[id_tarif]><b>Edit</b></a> | 
				  <a href=$aksi?module=ongkos&act=hapus&id=$r[id_tarif]><b>Hapus</b></a>
			</td>
			</tr>";
		$no++;
    }
    echo "</table>";
    break;

  case "tambah":
    echo "<h2>Tambah Data</h2>
          <form method=POST action='$aksi?module=ongkos&act=input'>
          <table>
          <tr><td width='150'>Kelas</td>	 			<td> : 
		  <select name='kelas'>
            <option value=0 selected>- Pilih Kelas -</option>";
            $tampil=mysql_query("SELECT deskripsi FROM konten WHERE grup='kelas' ORDER BY deskripsi");
            while($r=mysql_fetch_array($tampil)){
              echo "<option value=$r[deskripsi]>$r[deskripsi]</option>";
            }
    echo "</select>
		  </td></tr>
          <tr><td>Kategori Penumpang</td>	<td> : 
		  <select name='kategori_penumpang'>
            <option value=0 selected>- Pilih Kategori Penumpang -</option>";
            $tampil=mysql_query("SELECT deskripsi FROM konten WHERE grup='penumpang'");
            while($r=mysql_fetch_array($tampil)){
              echo "<option value=$r[deskripsi]>$r[deskripsi]</option>";
            }
    echo "</select>
		  </td></tr>
		  <tr><td>Sekali Jalan</td> 		<td> : <input type=text name='one_way' size='10'></td></tr>
		  <tr><td>Pulang Pergi</td> 		<td> : <input type=text name='pp' size='10'></td></tr>
          <tr><td colspan=2><input type=submit class='tombol' value=Simpan>
                            <input type=button class='tombol' value=Batal onclick=self.history.back()></td></tr>
          </table></form>";
     break;
 
  case "edit":
    $edit = mysql_query("SELECT * FROM tarif WHERE id_tarif='$_GET[id]'");
    $r    = mysql_fetch_array($edit);

    echo "<h2>Edit Data</h2>
          <form method=POST action=$aksi?module=ongkos&act=update>
          <input type=hidden name=id value='$r[id_tarif]'>
          <table>
          <tr><td width='150'>Kelas</td>	 			<td> : 
		  <select name='kelas'>
            <option value=0 selected>- Pilih Kelas -</option>";
            $tampil=mysql_query("SELECT deskripsi FROM konten WHERE grup='kelas' ORDER BY deskripsi");
            while($k=mysql_fetch_array($tampil)){
              if($k[deskripsi]==$r[kelas]){
				echo "<option value=$k[deskripsi] selected>$k[deskripsi]</option>";
			  }
			  else{
				echo "<option value=$k[deskripsi]>$k[deskripsi]</option>";
			  }
            }
    echo "</select>
		  </td></tr>
          <tr><td>Kategori Penumpang</td>	<td> : 
		  <select name='kategori_penumpang'>
            <option value=0 selected>- Pilih Kategori Penumpang -</option>";
            $tampil=mysql_query("SELECT deskripsi FROM konten WHERE grup='penumpang'");
            while($p=mysql_fetch_array($tampil)){
              if($p[deskripsi]==$r[kategori_penumpang]){
				echo "<option value=$p[deskripsi] selected>$p[deskripsi]</option>";
			  }
			  else{
				echo "<option value=$p[deskripsi]>$p[deskripsi]</option>";
			  }
            }
    echo "</select>
		  </td></tr>
		  <tr><td>Sekali Jalan</td> 		<td> : <input type=text name='one_way' size='10' value='$r[one_way]'></td></tr>
		  <tr><td>Pulang Pergi</td> 		<td> : <input type=text name='pp' size='10' value='$r[pp]'></td></tr>
          <tr><td colspan=2><input type=submit class='tombol' value=Simpan>
                            <input type=button class='tombol' value=Batal onclick=self.history.back()></td></tr>
          </table></form>";
    break;  
}
?>
