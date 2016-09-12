<style type="text/css">
	.tg  {border-collapse:collapse;border-spacing:0;margin:0px auto;}
	.tg td{font-family:Arial, sans-serif;font-size:14px;padding:10px 5px;border-style:solid;border-width:1px;overflow:hidden;word-break:normal;}
	.tg th{font-family:Arial, sans-serif;font-size:14px;font-weight:normal;padding:10px 5px;border-style:solid;border-width:1px;overflow:hidden;word-break:normal;}
</style>
		
<?php
error_reporting(0);
session_start();
include "config/koneksi.php";
include "config/fungsi_indotgl.php";
include "config/library.php";
include "config/fungsi_rupiah.php";
  
if (isset($_SESSION[basyenkuser]) and isset($_SESSION[basyenkpassword]) and isset($_SESSION[basyenklevel])){
	$invoice	= $_GET[id];
	$query_t	= mysql_query("select * from tiket where invoice=(select invoice from `order` where id_order='$_GET[id]')");
	$jml		= mysql_num_rows($query_t);
	if($jml>0){	
		while($t = mysql_fetch_array($query_t)){
			$tiket[] = $t[kd_tiket];
		}
		
		$o = mysql_fetch_array(mysql_query("select o.*, k.kelas
											from `order` o
											inner join order_kelas k on k.id_order=o.id_order and k.aktif='Y'
											where o.id_order='$_GET[id]' and o.status='Lunas'"));
		$nama	= $o[nama];
		$kelas	= $o[kelas];
		
		$query_s = mysql_query("select * from order_seat where id_order='$_GET[id]'");
		while($s = mysql_fetch_array($query_s)){
			$kategori_p[] = $s[kategori];
			$nama_p[] 	  = $s[nama];
			$jk_p[] 	  = $s[jk];
			$seat[] 	  = $s[seat];
		}
		
		$query_p = mysql_query("select * from order_detail where id_order='$_GET[id]'");
		while($p = mysql_fetch_array($query_p)){
			for($i=0; $i<$p[qty]; $i++){
				$kategori[] = $p[kategori];
				$tarif[] 	= $p[tarif];
				$tgl[]		= $p[tgl_berangkat];
				$rute[]		= $p[rute];
			}
		}
		
		for($i=0; $i<count($tiket); $i++){
?>
			<table class='tg' width='600px'>
				<tr style='background-color: #c5a430'>
					<th style='text-align: center;' colspan='2'><b>PT. RIAU POS GROUP</b></th>
				</tr>
				<tr style='background-color: #c5a430'>
					<th style='text-align: left; width: 150'><b>NOMOR TIKET</b></th>
					<th style='text-align: right; font-weight: bold; font-size: 20px;'><?php echo $tiket[$i] ?></th>
				</tr>
				<tr>
					<th style='text-align: left;'>Nama</th>
					<th style='text-align: left;'><?php echo strtoupper($nama_p[$i]); ?></th>
				</tr>
				<tr>
					<th style='text-align: left;'>Rute</th>
					<th style='text-align: left;'><?php echo strtoupper($rute[$i]); ?></th>
				</tr>
				<tr>
					<th style='text-align: left;'>Kelas</th>
					<th style='text-align: left;'><?php echo strtoupper($kelas); ?></th>
				</tr>
				<tr>
					<th style='text-align: left;'>Nomor Kursi</th>
					<th style='text-align: left;'><?php echo $seat[$i] ?></th>
				</tr>
			</table>

			<table class='tg'  width='600px'>
				<tr>
					<th style='text-align: left; width: 300px;' rowspan=2><b>Perhatian :</b>
						<ul>
							<li>Tiket ini hanya berlaku untuk 1 (satu) kali perjalanan.</li>
							<li>Setiap penumpang tunduk pada peraturan yang berada di atas kapal.</li>
						</ul>
					</th>
					
					<th style='text-align: center; font-weight: bold;'>Tanggal Berangkat</th>
					<th style='text-align: left; font-weight: bold;'>Tarif</th>
				</tr>
				<tr>
					<th style='text-align: center;'><b><?php echo strtoupper(tgl_indo($tgl[$i])); ?></b><br><?php 
					if(strtoupper($rute[$i])=='PALEMBANG (BOOMBARU) - MUNTOK (TANJUNG KALIAN)') $jam = '07.00 WIB';
					if(strtoupper($rute[$i])=='MUNTOK (TANJUNG KALIAN) - PALEMBANG (BOOMBARU)') $jam = '10.30.00 WIB';
					echo $jam;
					?></th>
					<th style='text-align: left;'><?php echo 'Rp, '.format_rupiah($tarif[$i]) ?><br><b><?php echo strtoupper($kategori[$i]) ?></b></th>
				</tr>
			</table>
			<br>
<?php
		}
	}
}
?>