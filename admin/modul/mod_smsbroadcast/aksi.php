<?php
ini_set('display_errors', 0);
ini_set('display_startup_errors', 1);
error_reporting(E_ALL);

include "../../../config/koneksi.php";
include "../../../config/library.php";
include "../../../config/fungsi_thumb.php";

function sendSMS($recipient, $msg){
  $msgLen = strlen($msg);
  $result = "";
  $output = '';
  $command = "../../../gammu/bin/gammu-smsd-inject.exe TEXT $recipient -len $msgLen -text '$msg'";

  $result .= "executing command: $command \n";

  passthru($command, $output);

  $result .= ' (out) ' . $output." \n";

  return $output;
}

$module=$_GET[module];
$act=$_GET[act];

if ($module=='smsbroadcast' AND $act=='update'){
  $query_port	= mysql_query("select * from konten where grup='port'");
	$port		= mysql_result($query_port,0,'deskripsi');

	$query = mysql_query("select * from profil");
  $message = '';
	while($r = mysql_fetch_array($query)){
		mysql_query("insert into sms_outbox (tujuan,pesan,port,tgl_input) values ('$r[hp]','$_POST[pesan]','$port',now())");
    $message .= sendSMS($r['hp'], $_POST['pesan']);
	}

	echo "<script>alert('SMS telah dikirim'); window.location = '../../media.php?module=$module'</script>";
	//header('location:../../media.php?module='.$module);
}
?>
