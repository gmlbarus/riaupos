<?php
echo "<h2>SMS Outbox</h2>
	  <table>
	  <tr><th>No</th><th>Tujuan</th><th>Pesan</th><th>Port</th><th>Tanggal Input</th></tr>";

$p      = new Paging;
$batas  = 10;
$posisi = $p->cariPosisi($batas);

$tampil=mysql_query("SELECT * FROM sms_outbox ORDER BY tgl_input DESC LIMIT $posisi, $batas");

$no = $posisi+1;
while ($r=mysql_fetch_array($tampil)){
  echo "<tr><td>$no</td>
			<td>$r[tujuan]</td>
			<td>$r[pesan]</td>
			<td>$r[port]</td>
			<td>$r[tgl_input]</a></td></tr>";
		   
$no++;
}
echo "</table>";
$jmldata=mysql_num_rows(mysql_query("SELECT * FROM sms_outbox"));
$jmlhalaman  = $p->jumlahHalaman($jmldata, $batas);
$linkHalaman = $p->navHalaman($_GET[halaman], $jmlhalaman);

echo "<div id=paging>Hal: $linkHalaman</div><br>";
?>
