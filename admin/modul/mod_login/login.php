<?php
$aksi = "modul/mod_login/aksi.php";
switch($_GET[act]){
  // Tampil Modul
  default:
    echo "<h2>Data User</h2>
          <table>
          <tr><th>No</th><th>Username</th><th>Password</th><th>Grup</th><th>Status</th>";
    $tampil	= mysql_query("SELECT * FROM login");
	$no		= 1;
    while ($r=mysql_fetch_array($tampil)){
		echo "<tr>
			<td>$no</td>
			<td>$r[username]</td>
			<td>$r[pass]</a></td>
			<td>$r[grup]</a></td>
			<td>$r[status]</td>
			</td>
			</tr>";
		$no++;
    }
    echo "</table>";
    break;  
}
?>
