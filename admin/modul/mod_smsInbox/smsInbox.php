<?php
echo "<h2>SMS Outbox</h2>
	  <table>
	  <tr><th>No</th><th>Tujuan</th><th>Pesan</th><th>Tanggal Input</th></tr>";

$p      = new Paging;
$batas  = 10;
$posisi = $p->cariPosisi($batas);

$tampil=mysql_query("SELECT * FROM `gammu`.`inbox` ORDER BY ReceivingDateTime DESC LIMIT $posisi, $batas");

$no = $posisi+1;
while ($r=mysql_fetch_array($tampil)){
  $text = explode('#', $r[Text]);
  $tipe = $text[1];
  $pesan = $text[2];
  echo "<tr><td>$no</td>
			<td>$r[DestinationNumber]</td>
			<td>{$pesan}</td>
			<td>$r[ReceivingDateTime]</a></td>
			<td>{$tipe}</td>
		</tr>";
		   	
$no++;
}
echo "</table>";
$jmldata=mysql_num_rows(mysql_query("SELECT * FROM `gammu`.`inbox`"));
$jmlhalaman  = $p->jumlahHalaman($jmldata, $batas);
$linkHalaman = $p->navHalaman($_GET[halaman], $jmlhalaman);

echo "<div id=paging>Hal: $linkHalaman</div><br>";
?>
