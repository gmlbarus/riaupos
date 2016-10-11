<?php
$aksi = "modul/mod_login/aksi.php";
switch($_GET[act]){
  // Tampil Modul
  default:
    echo "<h2>Data Polling</h2>
          <input type=button class='tombol' value='Tambah Data' onclick=\"window.location.href='?module=polling2&act=tambah';\">
          <table>
          <tr><th>No</th><th>Id Polling</th><th>Jawaban</th><th>IP 1</th><th>IP 2</th><th>Tahun</th>";
    
$p      = new Paging;
$batas  = 10;
$posisi = $p->cariPosisi($batas);


    $tampil	= mysql_query("SELECT * FROM hasil_polling");
	  $no		= 1;
    while ($r=mysql_fetch_array($tampil)){
		echo "<tr>
			<td>$no</td>
      <td>$r[id_polling]</td>
			<td>$r[jawaban]</td>
			<td>$r[ip_1]</a></td>
			<td>$r[ip_2]</a></td>
			<td>$r[tahun]</td>
			</td>
			</tr>";
		$no++;
    }
    echo "</table>";
    $jmldata=mysql_num_rows(mysql_query("SELECT * FROM hubungi"));
    $jmlhalaman  = $p->jumlahHalaman($jmldata, $batas);
    $linkHalaman = $p->navHalaman($_GET[halaman], $jmlhalaman);

echo "<div id=paging>Hal: $linkHalaman</div><br>";
    break;

  case "tambah":
    echo "<h2>Tambah Data</h2>
          <form method=POST action='$aksi?module=login&act=input'>
          <table>
          <tr><td>Email</td> 	<td> : <input type=text name='username' size='50'></td></tr>
          <tr><td>Password</td>       	<td> : <textarea name='pass' style='width: 375px; height: 50px;'></textarea></td></tr>
          <tr><td>Group</td>      <td> : <input type=radio name='grup' value='0'>0 
                                         <input type=radio name='grup' value='1'>1  
                                         <input type=radio name='grup' value='2'>2</td></tr>
           <tr><td>Status</td>   <td> : <input type=text name='status' size='50'></td></tr>

          <tr><td colspan=2><input type=submit class='tombol' value=Simpan>
                            <input type=button class='tombol' value=Batal onclick=self.history.back()></td></tr>
          </table></form>";
     break;
 
}
?>
