<?php
ini_set('display_errors', 0);
ini_set('display_startup_errors', 1);
error_reporting(E_ALL);

include "../../../config/koneksi.php";
include "../../../config/library.php";
include "../../../config/fungsi_thumb.php";
include "../mod_smsSend/aksi.php"

$module=$_GET[module];
$act=$_GET[act];

var_dump($_GET);

if ($module=='smsbroadcast' AND $act=='update'){
  $query_port	= mysql_query("select * from konten where grup='port'");
	$port		= mysql_result($query_port,0,'deskripsi');

	$query = mysql_query("SELECT `hp` FROM `profil` WHERE `hp` != ''");
  $message = '';
  var_dump($query);
	while($r = mysql_fetch_array($query)){
		// mysql_query("insert into sms_outbox (tujuan,pesan,port,tgl_input) values ('$r[hp]','$_POST[pesan]','$port',now())");
    // $message &= sendSMS($r['hp'], $_POST['pesan']);
	}

	echo "<script>alert('SMS telah dikirim'); window.location = '../../media.php?module=$module'</script>";
	//header('location:../../media.php?module='.$module);
}
?>
