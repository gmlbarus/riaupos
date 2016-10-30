<?php
ini_set('display_errors', 1);
ini_set('display_startup_errors', 1);
error_reporting(E_ALL);
session_start();
include "../../../config/koneksi.php";

$module=$_GET['module'];
$act=$_GET['act'];

if ($_POST['pollingSms'] == 'Vote!')
    if ($_POST['noHp'] != ''){
      $noHp = $_POST['noHp'];

      if (! is_numeric($noHp))
          echo "<script>alert('No HP tidak valid');history.back();</script>";

      $tahun = date('Y');

      $query = "SELECT * FROM `hasil_polling_sms` WHERE `noHp` = '{$noHp}' and `tahun` = '{$tahun}'";
      $hasVoted = mysql_num_rows(mysql_query($query));

      if ($hasVoted){
        echo "<script>alert('Voting sudah pernah dilakukan sebelumnya untuk nomor ini');history.back()</script>";
      }

      else {
        $q = mysql_query("SELECT * FROM polling");
      	$i=1;
      	while ($d=mysql_fetch_array($q)) {
      		$tahun = date('Y');
      		$query = mysql_query("INSERT INTO `hasil_polling_sms` VALUES ('{$noHp}','".$_POST['jawaban'.$i]."', '{$tahun}')");

      		$i++;
        }

    	}
      echo "<script>alert('Data polling tersimpan');history.back();location.reload(true)</script>";
    }
    else
      echo "<script>alert('masukkan No Handphone');history.back()</script>";
else
    echo "<script>history.back()</script>";
?>
