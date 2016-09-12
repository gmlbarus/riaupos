<?php
$batas = 5; //Satuan jam

$cek = mysql_query("SELECT o.id_order,o.tgl_input,
	TIMESTAMPDIFF( HOUR,o.tgl_input,now()) as 'selisih'
	FROM `order` o
	WHERE status = 'Belum Lunas' AND TIMESTAMPDIFF(HOUR,o.tgl_input,now()) > $batas");

while($c = mysql_fetch_array($cek)){
	mysql_query("delete from `order` where id_order=$c[id_order]");
	mysql_query("delete from order_detail where id_order=$c[id_order]");
	mysql_query("delete from order_kelas where id_order=$c[id_order]");
	mysql_query("delete from order_meal where id_order=$c[id_order]");
	mysql_query("delete from order_pijat where id_order=$c[id_order]");
	mysql_query("delete from order_seat where id_order=$c[id_order]");
}
?>