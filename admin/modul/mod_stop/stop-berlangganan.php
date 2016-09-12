<?php

echo "<h2>Data Stop berlangganan</h2>
	  <table>
	  <tr><th>No</th><th>Nama</th><th>Tanggal Lahir</th><th>Alamat</th><th>Email</th><th>No. HP</th><th>";

$p      = new Paging;
$batas  = 10;
$posisi = $p->cariPosisi($batas);

$tampil=mysql_query("select p.*, pr.nama as provinsi, k.nama as kota
from profil p 
inner join provinsi pr on p.id_provinsi=pr.id_provinsi
inner join kota k on p.id_kota=k.id_kota 
inner join login l on l.username=p.email WHERE l.status='T'
order by p.tgl_input DESC LIMIT $posisi, $batas");

$no = $posisi+1;
while ($r=mysql_fetch_array($tampil)){
  $tgl_lahir = tgl_indo($r[tgl_lahir]);
  $tgl_reg 	 = tgl_indo($r[tgl_input]);
  
  echo "<tr><td>$no</td>
			<td>$r[nama]</td>
			<td>$tgl_lahir</td>
			<td>$r[alamat] <br>Kota : $r[kota]<br>Provinsi : $r[provinsi]<br>Kode Pos : $r[kode_pos]</td>
			<td>$r[email]</td>
			<td>$r[hp]</td>
			";
		   
$no++;
}
echo "</table>";
$jmldata=mysql_num_rows(mysql_query("SELECT * FROM hubungi"));
$jmlhalaman  = $p->jumlahHalaman($jmldata, $batas);
$linkHalaman = $p->navHalaman($_GET[halaman], $jmlhalaman);

echo "<div id=paging>Hal: $linkHalaman</div><br>";

?>
