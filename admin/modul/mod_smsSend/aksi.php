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
  $command = "../../../gammu/bin/gammu-smsd-inject.exe -c ../../../gammu/bin/.gammurc TEXT $recipient -len $msgLen -text '$msg'";
  $altCommand = "../../../gammu/gammu.exe --sendsms TEXT {$recipient} -text '{$msg}'";
  $result .= "executing command: $command \n";

  $query = "INSERT INTO `gammu`.`outbox` (`TextDecoded`, `DestinationNumber`, `CreatorID`) VALUES ('{$msg}', '{$recipient}', 'gammu')";

  $output = mysql_query($query) ? TRUE : FALSE;

  // passthru($command, $output);

  $result .= ' (out) ' . $output." \n";

  return $output;
}

$module=$_GET[module];
$act=$_GET[act];

if ($module=='smsSend' AND $act=='update'){
  $query_port    = mysql_query("select * from konten where grup='port'");
  $port        = mysql_result($query_port,0,'deskripsi');

  mysql_query("insert into sms_outbox (tujuan,pesan,port,tgl_input) values ('$_POST[hp]','$_POST[pesan]','$port',now())");
  $message .= sendSMS($_POST['hp'], $_POST['pesan']);

  echo "<script>alert('SMS telah dikirim'); window.location = '../../media.php?module=$module'</script>";
}

if ($module=='smsSend' AND $act=='broadcast'){
  $query_port    = mysql_query("select * from konten where grup='port'");
  $port        = mysql_result($query_port,0,'deskripsi');

  $query = mysql_query("SELECT `hp` FROM `profil` WHERE `hp` != ''");
  $message = '';
  while($r = mysql_fetch_array($query)){
		mysql_query("insert into sms_outbox (tujuan,pesan,port,tgl_input) values ('$r[hp]','$_POST[pesan]','$port',now())");
    $message &= sendSMS($r['hp'], $_POST['pesan']);
	}

  echo "<script>alert('SMS Broadcast telah dikirim'); window.location = '../../media.php?module=smsbroadcast'</script>";
}

?>
