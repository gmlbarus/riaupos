<?php
$aksi = "modul/mod_polling2/aksi.php";
switch($_GET[act]){
  // Tampil Modul
  default:
    echo "<h2>Data Polling</h2>
          <input type=button class='tombol' value='Tambah Data' onclick=\"window.location.href='?module=polling2&act=tambah';\">
          <table>
          <tr><th>No</th><th>Key</th><th>Jawaban</th><th>Tahun</th>";

$p      = new Paging;
$batas  = 10;
$posisi = $p->cariPosisi($batas);


    $tampil	= mysql_query("SELECT `id_polling`,`ip_1`, `jawaban`, `tahun` FROM `hasil_polling` UNION SELECT * from `hasil_polling_sms` LIMIT $posisi, $batas");
	  $no		= 1;
    while ($r=mysql_fetch_array($tampil)){
		echo "<tr>
			<td>$no</td>
      <td>$r[ip_1]</td>
			<td>$r[jawaban]</td>
			<td>$r[tahun]</a></td>
			</tr>";
		$no++;
    }
    echo "</table>";
    $jmldata=mysql_num_rows(mysql_query("SELECT * FROM hasil_polling"));
    $jmlhalaman  = $p->jumlahHalaman($jmldata, $batas);
    $linkHalaman = $p->navHalaman($_GET[halaman], $jmlhalaman);

echo "<div id=paging>Hal: $linkHalaman</div><br>";
    break;

  case "tambah":

  /**
   * @author ebenhezer
   * @copyright 2016
   */
  $query = mysql_query("select * from polling;");
  echo "<form action='{$aksi}' method='post'>";
  echo "<div style='width:20%; float:left'><b>No Handphone</b></div>";
  echo "<div style='width:70%'><input type='text' name='noHp' placeholder='ex. 62853641645'/></div>";
  $j=1;
  while ($data=mysql_fetch_array($query)) {
      echo "<div style='margin-bototm:30px'>";
      echo "<input type='hidden' name='id$j' value='".$data['id_polling']."'/>";
      echo "<b>".$data['pertanyaan']."</b><br />";
      echo "<div style='margin-top:20px'; margin-right:40px>";
      for ($i=1;$i<=10;$i++) {
          echo "<input style='margin-left: 13px; margin-right: 5px' type='radio' name='jawaban$j' value='".$data['jawaban'.$i]."' />".$data['jawaban'.$i];
      }
     $j++;
  }
  echo "</div><br>";
  echo "<input type='submit' class='btn btn-primary' value='Vote!' name='pollingSms'/><br>";
  echo "<br \>";
  echo "</form>";

     break;

}
?>
