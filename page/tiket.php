<?php
if (isset($_SESSION[basyenkuser]) and isset($_SESSION[basyenkpassword]) and isset($_SESSION[basyenklevel])){
?>
	<script language="javascript">
	$(document).ready(function() {
		$('#tabel-tiket').dataTable( {
			"order": [[ 0, "asc" ]]
		} );
	} );</script>

	<h1>Koran</h1>
	<hr color='#c5a430' size='1'>

	<?php
	$query 	= mysql_query("	select o.*,k.kelas from `order` o
							inner join order_kelas k on k.id_order=o.id_order and k.aktif='Y'
							where o.email='$_SESSION[basyenkuser]' order by o.tgl_input desc");
	$jml	= mysql_num_rows($query);
	if($jml>0){
		echo '<table id="tabel-tiket" class="display" cellspacing="0" width="100%">
				<thead>
					<tr>
						<th>No.</th>
						<th>Kelas</th>
						<th>No. Invoice</th>
						<th>Jumlah Penumpang</th>
						<th>Status</th>
						<th>Detail</th>
					</tr>
				</thead>
				<tbody>';
		$no = 1;
		while($r=mysql_fetch_array($query)){
			$img	= "<a href='media.php?page=tiket&mode=detail&id=$r[id_order]' title='Lihat detail'><img src='images/detail.png'></a>";
			if($r[status]=='Belum Lunas') {
				$status = 'Pending';
			}
			else if($r[status]=='Lunas') {
				$status = 'Ready';
				$img 	.= "<a href=\"javascript:win = window.open('print.php?id=".$r['id_order']."');win.print()\" title=\"Cetak Tiket\"> <img src='images/print.png'></a>";
			}
			
			echo "<tr>
					<td width=20>$no</td>
					<td>".strtoupper($r[kelas])."</td>
					<td>".strtoupper($r[invoice])."</td>";
					$rp = mysql_fetch_array(mysql_query("select rute,sum(qty) as qty from order_detail where id_order='$r[id_order]' group by rute"));
					echo "		
					<td align='center'>".$rp[qty]." ORANG</td>
					<td>".$status."</td>
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
		
		if($_POST[simpan] != ''){
			$kelas_temp	= $_POST[kelas_temp];
			$kelas		= $_POST[kelas];
			
			if(index($kelas_temp) < index($kelas)){
				mysql_query("update `order` set pijat='Y' where id_order='$_GET[id]'");
				mysql_query("update order_kelas set aktif='N' where id_order='$_GET[id]'");
				mysql_query("insert into order_kelas (id_order,kelas) values ('$_GET[id]','$kelas')");
				
				$query_u = mysql_query("select * from order_detail where id_order='$_GET[id]'");
				while($u = mysql_fetch_array($query_u)){
					mysql_query("update order_detail set tarif=(select $_POST[trip] from tarif where kelas='$kelas' and kategori_penumpang='$u[kategori]')
								where tgl_berangkat='$u[tgl_berangkat]' and kategori='$u[kategori]' and id_order='$_GET[id]'");
				}
				
				mysql_query("update order_pijat set tarif='0' where id_order='$_GET[id]'");
				
				$cek_p = mysql_query("select * from order_seat where id_order='$_GET[id]'");
				while($p = mysql_fetch_array($cek_p)){
					$kat[] = $p[kategori];
					$nam[] = $p[nama];
					$jk[]  = $p[jk];
				}
				mysql_query("delete from order_seat where id_order='$_GET[id]'");
				
				$query_tgl = mysql_query("select * from order_detail where id_order='$_GET[id]' group by rute order by tgl_berangkat");
				for($t=0; $t<mysql_num_rows($query_tgl); $t++){
					for($u=0; $u<$_POST[jmlkursi]; $u++){
						mysql_query("insert into order_seat (id_order,seat,kategori,nama,jk,tgl_berangkat) 
						values ('$_GET[id]','".$_POST['seat_'.$u]."','".$kat[$u]."','".$nam[$u]."','".$jk[$u]."','".mysql_result($query_tgl,$t,'tgl_berangkat')."')");
					}
				}			
				
				echo "<script>alert('Proses upgrade class anda telah disimpan. Selamat anda mendapatkan promo pijat gratis. Terima kasih !'); 
				window.location = 'media.php?page=tiket'</script>";
			}
			else{
				echo "<script>alert('Maaf, proses downgrade class tidak diperbolehkan'); </script>";
			}
			
		}
	
		$query_o 	= mysql_query("select o.*,k.kelas
									from `order` o
									inner join order_kelas k on k.id_order=o.id_order and k.aktif='Y'
									where o.id_order='$_GET[id]'");
		$o			= mysql_fetch_array($query_o);
		
		if($_POST[kelas]==''){
			$kelas_temp1 = $o[kelas];
		}
		else{
			$kelas_temp1 = $_POST[kelas];
		}
		
		if($o[status]=='Belum Lunas'){
			$tombol = "<input type='submit' value='Upgrade Kelas' name='upgrade'>
						<br>Dapatkan layanan pijat <b>GRATIS</b> dengan mengupgrade kelas anda !!!<br>
						atau dengan menambahkan uang Rp50.000";
						
		}
		elseif($o[status]=='Lunas'){
			$tombol = "";
		}
		
		echo "
		<hr color='#c5a430' size='1'>
		<br><br>
		<h1>Detail Tiket</h1>
		<hr color='#c5a430' size='4'>
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
				<td width=150>Kelas</td>
				<td width=10>:</td>
				<td>
					<input type='hidden' name='kelas_temp' value='$o[kelas]'>
					<input type='hidden' name='trip' value='$o[trip]'>";
					if($o[status]=='Belum Lunas'){
						echo "<select name='kelas'>";
						$tampil=mysql_query("select * from konten where grup='kelas'");
						while($t=mysql_fetch_array($tampil)){
							if(strtoupper($t[deskripsi])==$kelas_temp1){
								echo "<option value='".strtoupper($t[deskripsi])."' selected>".strtoupper($t[deskripsi])."</option>";
							}
							else{
								echo "<option value='".strtoupper($t[deskripsi])."'>".strtoupper($t[deskripsi])."</option>";
							}
						}
						echo "	</select>";
					}
					else{
						echo "<b>".$kelas_temp1."</b>";
					}
					
			 echo "$tombol
				</td>
			</tr>
			<tr>
				<td width=150>Tipe Trip</td>
				<td width=10>:</td>
				<td><b>";
				if($o[trip]=='pp'){
					echo 'Pulang Pergi';
				}
				else if($o[trip]=='one_way'){
					echo 'Sekali Jalan';
				}
			echo "</b></td>
			</tr>
			<tr>
				<td width=150>Total Bayar</td>
				<td width=10>:</td>
				<td><b>";
		$pe = mysql_fetch_array(mysql_query("select coalesce(sum(((qty*tarif) - ((qty*tarif)*diskon))),0) as total from order_detail where id_order=$o[id_order]"));
		$m 	= mysql_fetch_array(mysql_query("select coalesce(sum(tarif),0) as total from order_meal where id_order=$o[id_order]"));
		$pi = mysql_fetch_array(mysql_query("select coalesce(sum(tarif),0) as total from order_pijat where id_order=$o[id_order]"));
		
		echo 'Rp. '.format_rupiah($pe[total]+$m[total]+$pi[total]);
		
		echo "</b></td>
			</tr>
			</tbody>
		</table>";
		
		if($_POST[upgrade] != ''){
			$jmlpenumpang = mysql_query("select rute,sum(qty) as qty from order_detail where id_order='$_GET[id]' group by rute");
			if(index($_POST[kelas_temp]) < index($_POST[kelas])){
				echo "<table cellpadding='0' border='1' width='670'>";
				
				if($_POST[kelas]=='EKSEKUTIF'){
					for($i=0; $i<=2; $i++){
						if($i==0) $var = 'A';
						if($i==1) $var = 'B';
						if($i==2) $var = 'C';
						$cektanggal = mysql_query("select * from order_detail where id_order='$_GET[id]'");
						$query_seat = mysql_query("select os.seat,os.tgl_berangkat,ok.kelas from order_seat os
												   inner join order_kelas ok on os.id_order=ok.id_order and ok.aktif='Y' and ok.kelas='$_POST[kelas]'
												   where os.tgl_berangkat='".mysql_result($cektanggal,0,'tgl_berangkat')."'");

						unset($seat_disable);
						while($s = mysql_fetch_array($query_seat)){
							$seat_disable[] = $s[seat];
						}
						
						echo "
						<tr>
							<td style='padding: 10px 0px 10px 0px; text-align:center'><b>EKSEKUTIF $var</b>";
							seat('eksekutif '.$var, $seat_disable);
						echo "</td>
						</tr>";
					}
				}
				else{
					echo "<tr>
						<td style='padding: 10px 0px 10px 0px; text-align:center'> <b>$_POST[kelas]</b>";
						$cektanggal = mysql_query("select * from order_detail where id_order='$_GET[id]'");
						$query_seat = mysql_query("select os.seat,os.tgl_berangkat,ok.kelas from order_seat os
												   inner join order_kelas ok on os.id_order=ok.id_order and ok.aktif='Y' and ok.kelas='$_POST[kelas]'
												   where os.tgl_berangkat='".mysql_result($cektanggal,0,'tgl_berangkat')."'");
						unset($seat_disable);
						while($s = mysql_fetch_array($query_seat)){
							$seat_disable[] = $s[seat];
						}
				
						seat($_POST[kelas], $seat_disable);
					echo "</td>
					</tr>";
				}
				echo "<tr>
					<td style='padding: 10px 0px 10px 0px; text-align:center'>
						<input name='jmlkursi' id='jmlkursi' type='hidden' value='".mysql_result($jmlpenumpang,0,'qty')."' />
						<input type='submit' value='Simpan' name='simpan' onclick=\"return validasi()\">
					</td>
				</tr>";
				echo "</table>";
				for($i=0;$i<mysql_result($jmlpenumpang,0,'qty');$i++){
					echo "<input name='seat_$i' id='seat_$i' type='hidden'/>";	
				}
			}
			else{
				echo "<script>alert('Maaf, proses downgrade class tidak diperbolehkan'); </script>";
			}
		}
		
		echo "</form>
		<br>";
		
		echo "
		<table cellpadding='0' border='0' width='670'>
			<tbody>
			<tr style='border-bottom: 1px solid #c5a430; text-align:left;'>
				<th>No.</th>
				<th>Rute & Tanggal Keberangkatan</th>
				<th>Kategori</th>
				<th>Jumlah</th>
				<th>Tarif</th>
				<th>Diskon</th>
				<th>Total</th>
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
			
			$query_r = mysql_query("select rute,tgl_berangkat from order_detail where id_order='$_GET[id]' group by rute order by tgl_berangkat");
			$jml_r	 = mysql_num_rows($query_r);
			if($jml_r == 1) $trip = 'oneway';
			if($jml_r == 2) $trip = 'return';
			while($r = mysql_fetch_array($query_r)){
				$rute[]	= $r[rute];
				$tgl[]	= $r[tgl_berangkat];
			}
			
			//if($trip=='oneway') $rowspan = 1;
			//($trip=='return') $rowspan = (count($kategori)/$jml_r);
			$rowspan = (count($kategori)/$jml_r);
			
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
				<td colspan='6'><b>SUB TOTAL</b></td>
				<td><b>Rp. ".format_rupiah($total_tarif)."</b></td>
			</tr>
			";
			
			$query_m  = mysql_query("select o.*,m.nama from order_meal o inner join makanan m on m.id_makanan=o.id_makanan where o.id_order='$_GET[id]'");
			$query_pi = mysql_query("select * from order_pijat where id_order='$_GET[id]'");
			
			$jml_m	  = mysql_num_rows($query_m);
			$jml_pi	  = mysql_num_rows($query_pi);
			
			if($jml_m > 0 or $jml_pi>0){
				echo "<tr style='border-bottom: 1px solid #c5a430; text-align:left;'>
						<th>No.</th>
						<th colspan=5>Layanan Ekstra</th>
						<th>Total</th>
					</tr>";
			
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
						<td colspan='6'><b>SUB TOTAL</b></td>
						<td><b>Rp. ".format_rupiah($total_ekstra)."</b></td>
					</tr>";
			}
			
		echo "<tr>
				<td colspan='6'><b>TOTAL</b></td>
				<td><b>Rp. ".format_rupiah($total_tarif+$total_ekstra)."</b></td>
			</tr>
			</tbody>
		</table>";
	}
}
?>


<script language="javascript">
function validasi(){
	$jmlkursi	= document.getElementById('jmlkursi').value;
	for ($i=0; $i<$jmlkursi; $i++) {
		if (document.getElementById('seat_'+$i).value == ''){
			alert("Pilihan kursi belum lengkap");
			return (false);
		}
	}
	return (true);
}

function cek(id){
	$hijau		= 'rgb(51, 204, 51)';
	$kuning		= 'rgb(255, 215, 0)';
	$jmlkursi	= document.getElementById('jmlkursi').value;
	
	if(document.getElementById(id).style.backgroundColor == $hijau){
		document.getElementById(id).style.backgroundColor = $kuning;
		for ($i=0; $i<$jmlkursi; $i++){	
			if(document.getElementById('seat_' + $i).value==''){
				document.getElementById('seat_' + $i).value=document.getElementById(id).id;
				return;
			}
		}
		
		$cek=1;
		for ($i=0; $i<=$jmlkursi-1; $i++){
			if(document.getElementById('seat_' + $i).value==''){
				$cek=0;
			}
		}
		if($cek==1){
			document.getElementById(id).style.backgroundColor = $hijau;
			return;
		}
	} 
	else if(document.getElementById(id).style.backgroundColor == $kuning){
		document.getElementById(id).style.backgroundColor = $hijau;
		for ($i=0; $i<$jmlkursi; $i++){	
			if(document.getElementById('seat_' + $i).value == document.getElementById(id).id){
				document.getElementById('seat_' + $i).value='';
				return;
			}
		}
	}
}
</script>