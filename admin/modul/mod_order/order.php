<?php
session_start();
if (empty($_SESSION['namauser']) AND empty($_SESSION['passuser'])){
	echo "<link href='style.css' rel='stylesheet' type='text/css'>
	<center>Untuk mengakses modul, Anda harus login <br>";
	echo "<a href=../../index.php><b>LOGIN</b></a></center>";
}
else{
	$aksi="modul/mod_order/aksi.php";
	switch($_GET[act]){
	// Tampil Order
	default:
		echo "<h2>Data Pemesanan</h2>
			  <table>
			  <tr><th>#</th><th>No. Invoice</th><th>Nama Pelanggan</th><th>Trip</th><th>Kelas</th><th>Tanggal Order</th><th>Jumlah Penumpang</th><th>Status</th><th>Aksi</th></tr>";

		$p      = new Paging;
		$batas  = 10;
		$posisi = $p->cariPosisi($batas);

		$query = mysql_query("select *,
							  (select sum(qty) from order_detail where id_order=o.id_order) as jml,
							  k.kelas
							  from `order` o 
							  inner join order_kelas k on k.id_order=o.id_order and k.aktif='Y'
							  order by o.tgl_input desc limit $posisi,$batas");

		$no = 1;
		while($q = mysql_fetch_array($query)){
			if($q[trip]=='pp') $trip = 'Pulang Pergi';
			if($q[trip]=='one_way') $trip = 'Sekali Jalan';
			
			$jml = $q[jml];
			if($trip=='Pulang Pergi') $jml = ($q[jml])/2;
			echo "
				<tr>
					<td>$no</td>
					<td>$q[invoice]</td>
					<td>$q[nama]</td>
					<td>$trip</td>
					<td>$q[kelas]</td>
					<td>$q[tgl_input]</td>
					<td>$jml Orang</td>
					<td>$q[status]</td>
					<td><a href='?module=pemesanan&act=detail&id=$q[id_order]'><b>Baca</b></a></td>
				</tr>
			";
			$no++;
		}
		
		echo "</table>";

		$jmldata = mysql_num_rows(mysql_query("SELECT * FROM `order`"));
		$jmlhalaman  = $p->jumlahHalaman($jmldata, $batas);
		$linkHalaman = $p->navHalaman($_GET[halaman], $jmlhalaman);

		echo "<div class=paging>Hal: $linkHalaman</div><br>";
	break;


	case "detail":		
		$edit 		= mysql_query("SELECT * FROM `order` WHERE id_order='$_GET[id]'");
		$r    		= mysql_fetch_array($edit);

		$pilihan_status = array('Belum Lunas','Lunas');
		$pilihan_order = '';
		foreach ($pilihan_status as $status) {
		   $pilihan_order .= "<option value=$status";
		   if ($status == $r[status]) {
				$pilihan_order .= " selected";
		   }
		   $pilihan_order .= ">$status</option>\r\n";
		}
		if($r[trip]=='pp') $trip = 'Pulang Pergi';
		if($r[trip]=='one_way') $trip = 'Sekali Jalan';
		if($r[status]=='Belum Lunas') $tombol = "<input type='submit' value='Ubah Status' name='ubah_status'>";
		
		$query_k	= mysql_query("select * from order_seat where id_order='$_GET[id]' group by seat");
		$jml_k = 0;
		while($k = mysql_fetch_array($query_k)){
			$kursi .= $k[seat].' | ';
			$jml_k++;
		}

		echo "<h2>Detail Pemesanan</h2>
			  <form method='POST' action='$aksi?module=pemesanan&act=update'>
			  <input type='hidden' name='id' value='$r[id_order]'>
			  <input type='hidden' name='invoice' value='$r[invoice]'>
			  <table>
			  <tr><td width=150>No. Invoice</td><td> : $r[invoice]</td></tr>
			  <tr><td>Tanggal Order</td> 		<td> : $r[tgl_input]</td></tr>
			  <tr><td>Tipe Trip</td> 			<td> : $trip</td></tr>
			  <tr><td>Nomor Kursi</td> 			<td> : <b>$kursi</b></td></tr>
			  <tr><td>Status</td>				<td> : <select name='status'>$pilihan_order</select> $tombol</br>
													 * Setelah order ini dinyatakan LUNAS, anda tidak dapat mengubah statusnya kembali.<br>
													 * Sistem akan mengirim kode tiket via sms dan email kepada pelanggan.<br>
					</td></tr>
			  </table></form>";
		
			//Tampilkan detail
			echo "
			<table>
			<tbody>
			<tr>
				<th>No.</th>
				<th>Rute & Tanggal Keberangkatan</th>
				<th>Kategori</th>
				<th>Jumlah</th>
				<th>Tarif</th>
				<th>Diskon</th>
				<th>Jumlah</th>
			</tr>";
			
			$query_p = mysql_query("select * from order_detail where id_order='$_GET[id]'");
			while($p = mysql_fetch_array($query_p)){
				$param[]	= $p[rute];
				$kategori[]	= $p[kategori];
				$qty[]		= $p[qty];
				$tarif[]	= $p[tarif];
				$diskon[]	= $p[diskon];
				$total[]	= (($p[qty]*$p[tarif])-($p[qty]*$p[tarif])*$p[diskon]);
			}
			
			$query_d = mysql_query("select rute,tgl_berangkat from order_detail where id_order='$_GET[id]' group by rute order by tgl_berangkat");
			$jml_d	 = mysql_num_rows($query_d);
			
			while($d = mysql_fetch_array($query_d)){
				$rute[]	= $d[rute];
				$tgl[]	= $d[tgl_berangkat];
			}
			
			if($trip=='Sekali Jalan') $rowspan = 0;
			if($trip=='Pulang Pergi') $rowspan = count($kategori)/$jml_d;
			$rowspan = "rowspan='".$rowspan."'";
			
			$urut = 0;
			for($i=0; $i<count($kategori); $i++){
				if($diskon[$i]=='0') $teks_diskon = '0';
				if($diskon[$i]=='0.1') $teks_diskon = '10%';
				
				echo "<tr>";
				if($param[$i] != $param[($i-1)]){
					echo "<td width='30' $rowspan>".($urut+1)."</td>";
					echo "<td $rowspan><b>".$rute[$urut]."</b><br><i>".tgl_indo($tgl[$urut])."</i></td>";
					$urut++;
				}					
				echo "
					<td>".$kategori[$i]."</td>
					<td>".$qty[$i]." Orang</td>
					<td>Rp. ".format_rupiah($tarif[$i])."</td>
					<td>".$teks_diskon."</td>
					<td>Rp. ".format_rupiah($total[$i])."</td>
				</tr>
				";
				$total_tarif = ($total_tarif + $total[$i]);
			}
			
			echo "
			<tr>
				<td colspan='6' align='right'><b>SUB TOTAL : </b></td>
				<td><b>Rp. ".format_rupiah($total_tarif)."</b></td>
			</tr>
			<tr style='border-bottom: 1px solid #c5a430; text-align:left;'>
				<th>No.</th>
				<th colspan=5>Layanan Ekstra</th>
				<th>Jumlah</th>
			</tr>
			";
			$query_m = mysql_query("select o.*,m.nama from order_meal o inner join makanan m on m.id_makanan=o.id_makanan where o.id_order='$_GET[id]'");
			$no = 1;
			while($m = mysql_fetch_array($query_m)){
				echo "
				<tr>
					<td>$no</td>
					<td colspan=5>$m[nama]</td>
					<td>Rp. ".format_rupiah($m[tarif])."</td>
				</tr>";
				$total_ekstra = ($total_ekstra + $m[tarif]);
				$no++;
			}
			
			$query_pi = mysql_query("select * from order_pijat where id_order='$_GET[id]'");
			while($pi = mysql_fetch_array($query_pi)){
				$tarif_pi = $pi[tarif];
				echo "
				<tr>
					<td>$no</td>
					<td colspan=5>Pijat</td>
					<td>Rp. ".format_rupiah($tarif_pi)."</td>
				</tr>";
				$total_ekstra = ($total_ekstra + $tarif_pi);
				$no++;
			}
			
			echo "
				<tr>
					<td colspan='6' align='right'><b>SUB TOTAL : </b></td>
					<td><b>Rp. ".format_rupiah($total_ekstra)."</b></td>
				</tr>
				<tr>
					<td colspan='6' align='right'><b>GRAND TOTAL : </b></td>
					<td><b>Rp. ".format_rupiah($total_tarif+$total_ekstra)."</b></td>
				</tr>
				</tbody>
			</table>";
		break;

	case "kirimemail":
		mail($_POST[email],$_POST[subjek],$_POST[pesan],"From: email@artfurniture.com");
		echo "<h2>Status Email</h2>
			  <p>Email telah sukses terkirim ke tujuan</p>
			  <p>[ <a href=javascript:history.go(-2)>Kembali</a> ]</p>";	 		  
		break;  
	}
}
?>
