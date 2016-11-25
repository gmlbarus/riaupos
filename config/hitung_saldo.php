<?php
/* evaluate saldo */
$query = "SELECT `a`.`invoice`, `saldo`, `tanggal_transfer`, `harga` FROM `saldo` `a` LEFT JOIN `order` `b` ON `a`.`invoice` = `b`.`invoice`";
$result = mysql_query($query);

while ($r = mysql_fetch_array($result)){
  $now = date('Y-m-d');
  $dateDiff = date_diff(date_create($now), date_create($r['tanggal_transfer']), TRUE);

  $harga_perHari = $r['harga'] / 30;
  $saldo = round ($r['saldo'] - $dateDiff->days * $harga_perHari);

  $query = "UPDATE `saldo` SET `saldo` = '{$saldo}' WHERE `invoice` = '{$r['invoice']}'";
  mysql_query($query);
}

mysql_free_result($result);
