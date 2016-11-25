<?php
if (isset($_SESSION[basyenkuser]) and isset($_SESSION[basyenkpassword]) and isset($_SESSION[basyenklevel])){
?>
	<script language="javascript">
	$(document).ready(function() {
		$('#tabel-order').dataTable( {
			"order": [[ 0, "asc" ]]
		} );
	} );</script>

	<h1>Data Koran</h1>
	<hr color='#000000' size='1'>

	<?php
	$query 	= mysql_query("	SELECT `a`.*, `b`.`nama` FROM `order` `a` JOIN `profil` `b`
		ON `a`.`username`=`b`.`email`	WHERE `username` = '{$_SESSION[basyenkuser]}'");
	$jml	= mysql_num_rows($query);
	if($jml>0){
		echo '<table id="tabel-order" class="display" cellspacing="0" width="100%">
				<thead>
					<tr>
						<th>No.</th>
						<th>Nama</th>
						<th>No. Invoice</th>
						<th>Tanggal Jatuh Tempo</th>
						<th>Status</th>
						<th>Detail</th>
					</tr>
				</thead>
				<tbody>';
		$no = 1;
		while($r=mysql_fetch_array($query)){
			$img	= "<a href='media.php?page=koran&mode=detail&id=$r[invoice]' title='Lihat detail'><img src='images/detail.png'></a>";
			if($r[status]=='Belum Lunas') {
				$status = 'Pending';
			}
			else if($r[status]=='Lunas') {
				$status = 'Ready';
				$img 	.= "<a href=\"javascript:win = window.open('print.php?id=".$r['invoice']."');win.print()\" title=\"Cetak \"> <img src='images/print.png'></a>";
			}

			echo "<tr>
					<td width=20>$no</td>
					<td>".strtoupper($r[nama])."</td>
					<td>".strtoupper($r[invoice])."</td>";
					echo "
					<td align='center'>".$r[jatuh_tempo]."</td>
					<td>".strtoupper($r[konfirmasi])."</td>
					<td align='center'>$img</td>
				</tr>";

			$no++;
		}
		echo '	</tbody></table>';
	}
	else{
		echo "<p>Tidak ada data yang ditampilkan.</p>";
	}


	if($_GET[mode]=='detail'){
		function index($teks){
			switch($teks){
				case 'EKONOMI':
					$string = 1;
					break;
				case 'EKSEKUTIF':
					$string = 2;
					break;
				case 'VIP':
					$string = 3;
					break;
			}
			return $string;
		}
		$query_o 	= mysql_query("SELECT `a`.*, `b`.`nama` FROM `order` `a` JOIN `profil` `b`
			ON `a`.`username`=`b`.`email`	WHERE `invoice` = '{$_GET[id]}'");
		$o			= mysql_fetch_array($query_o);

		if($_POST[kelas]==''){
			$kelas_temp1 = $o[kelas];
		}
		else{
			$kelas_temp1 = $_POST[kelas];
		}

		if($o[status]=='Belum Lunas'){

		}
		elseif($o[status]=='Lunas'){
			$tombol = "";
		}

		$query = "SELECT SUM(`saldo`) as `sisa_saldo` FROM `saldo` WHERE `invoice` = '{$o['invoice']}'";

		$result = mysql_query($query);
		$r = mysql_fetch_array($result);

		$saldo = ($r['sisa_saldo'] === NULL) ? 0 : $r['sisa_saldo'];
		mysql_free_result($result);

		echo "
		<hr color='#000000' size='1'>
		<br><br>
		<h1>Detail Order</h1>
		<hr color='#000000' size='4'>
		<form name='form' action='' method='post'>
		<table cellpadding=0 border=0 width=670>
			<tbody>
			<tr>
				<td width=150>Nama Pelanggan</td>
				<td width=10>:</td>
				<td><b>".strtoupper($o[nama])."</b></td>
			</tr>
			<tr>
				<td width=150>Nomor Invoice</td>
				<td width=10>:</td>
				<td><b>$o[invoice]</b></td>
			</tr>
			<tr>
				<td width=150>Koran Utama</td>
				<td width=10>:</td>
				<td><b>RIAU POS</b></td>
			</tr>
			<tr>
				<td width=150>Koran Tambahan 1</td>
				<td width=10>:</td>
				<td><b>".strtoupper($o[koran_1])."</b></td>
			</tr>
			<tr>
				<td width=150>Koran Tambahan 2</td>
				<td width=10>:</td>
				<td><b>".strtoupper($o[koran_2])."</b></td>
			</tr>
			<tr>
				<td width=150>Sebanyak</td>
				<td width=10>:</td>
				<td><b>$o[sebanyak] x</b></td>
			</tr>
			<tr>
				<td width=150>Masa Aktif</td>
				<td width=10>:</td>
				<td><b>$o[masa_aktif] hari</b></td>
			</tr>
			<tr>
				<td width=150>Jatuh Tempo</td>
				<td width=10>:</td>
				<td><b>$o[jatuh_tempo]</b></td>
			</tr>
			<tr>
				<td width=150>Status Pembayaran</td>
				<td width=10>:</td>
				<td><b>".strtoupper($o[konfirmasi])."</b></td>
			</tr>
			<tr>
				<td width=150>Total Bayar</td>
				<td width=10>:</td>
				<td><b>";
		$pe = mysql_fetch_array(mysql_query("select coalesce(sum(((qty*tarif) - ((qty*tarif)*diskon))),0) as total from order_detail where id_order=$o[id_order]"));
		$m 	= mysql_fetch_array(mysql_query("select coalesce(sum(tarif),0) as total from order_meal where id_order=$o[id_order]"));
		$pi = mysql_fetch_array(mysql_query("select coalesce(sum(tarif),0) as total from order_pijat where id_order=$o[id_order]"));

		echo 'Rp. '.format_rupiah($o[harga]);

		echo "</b></td>
			</tr>
			</tbody>
		</table></br>";

		/* Sisa Saldo */
		echo '<div class="clearfix" style="padding:15px; background-color:#125e9d">
			<div style="width:30%; float: left;"><b style="color:#fefffc">Sisa Saldo Anda</b></div>
			<div style="width:70%"><b style="color:#fefffc">Rp.'. $saldo .'</b></div>
		</div>';

		echo "</form>
		<br>";

	}
}
?>
</script>
