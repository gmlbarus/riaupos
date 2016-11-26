<?php
// mysql_query(" UPDATE login
// 				SET status='T'
// 				WHERE username='$_SESSION[basyenkuser]'
// 			");

/* ambil saldo */
$username = $_SESSION['basyenkuser'];
$query = "SELECT sum(`saldo`) as `sisa_saldo` FROM `saldo` WHERE `username` = '{$username}'";
$result = mysql_query($query);
$r = mysql_fetch_array($result);
$saldo = (int) $r['sisa_saldo'];
if ($saldo){
	$message = "Total sisa saldo anda adalah Rp. {$saldo}. Sisa saldo akan kami transfer kembali ke rekening Anda.";
}
else{
	$message = "Saat ini anda tidak sedang berlangganan dan tidak memiliki sisa saldo.";
}



echo "<script>alert('Terima kasih telah berlangganan dengan kami. {$message}');
window.location=('media.php?page=logout');</script>";
?>
