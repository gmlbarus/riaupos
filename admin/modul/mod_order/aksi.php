<?php
session_start();
include "../../../config/koneksi.php";
include "../../../config/library.php";

$module	=$_GET[module];
$act	=$_GET[act];

if($module=='pemesanan' AND $act=='update'){
	$kursi = right($thn_sekarang,2).right('0'.$bln_sekarang,2).right('0'.$tgl_skrg,2);
	mysql_query("update `order` set status='Lunas' where id_order='$_POST[id]'");
	
	$query = mysql_query("select * from order_detail where id_order='$_POST[id]'");
	while($r = mysql_fetch_array($query)){
		for($i=0; $i<$r[qty]; $i++){
			$c = mysql_fetch_array(mysql_query("select max(kd_tiket) as jml from tiket where kd_tiket like '$kursi%'"));
			$urut = $c[jml]+1;
			$urut = right('0000'.$urut,4);
			$tiket = $kursi.$urut;
			mysql_query("insert into tiket(kd_tiket,invoice,tgl_input) values('$tiket','$_POST[invoice]',now())");
			$arrtiket[] = $kursi.$urut;
		}
	}
	
	for($j=0; $j<count($arrtiket); $j++){
		$seat .= $arrtiket[$j].' | ';
	}
	$pesan = 'Nomor Tiket Anda adalah = '.$seat. 'PT. Pelayaran Sakti Inti Makmur Palembang. Terima Kasih';
	
	$query_p = mysql_query("select * from konten where grup='port' limit 1");
	$port	 = mysql_result($query_p,0,'deskripsi');
	
	mysql_query("insert into sms_outbox(tujuan,pesan,port,tgl_input) values((select hp from `order` where id_order='$_POST[id]'),'$pesan','$port',now())");
	header('location:../../media.php?module='.$module);
}
?>


