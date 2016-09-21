<?php
if($_POST[selesai]!=''){
	$kategori	= array('dewasa','anak','bayi');

	mysql_query("insert into `order`(nama,tgl_lahir,id_provinsi,id_kota,alamat,kode_pos,hp,email,pijat,invoice,trip,tgl_input)
				 values ('".$_SESSION[profil][0]."',
						 '".$_SESSION[profil][1]."',
						 '".$_SESSION[profil][2]."',
						 '".$_SESSION[profil][3]."',
						 '".$_SESSION[profil][4]."',
						 '".$_SESSION[profil][5]."',
						 '".$_SESSION[profil][6]."',
						 '".$_SESSION[profil][7]."',
						 '".$_SESSION[pijat]."',
						 '".strtoupper($_POST[guid])."',
						 '$_POST[trip]',
						 now())");

	$diskon_s = '0.1';
	if($_POST[diskon]=='-') $diskon_s = '0';
	for($i=0; $i<3; $i++){
		if($_SESSION[$kategori[$i]]>0){
			mysql_query("insert into order_detail (id_order,rute,tgl_berangkat,kategori,qty,tarif,diskon) values
						 (last_insert_id(),
						 '$_SESSION[rute]',
						 '$_SESSION[pergi]',
						 '".$kategori[$i]."',
						 '".$_SESSION[$kategori[$i]]."',
						 coalesce((select $_POST[trip] from tarif where kelas='$_SESSION[kelas]' and kategori_penumpang='".$kategori[$i]."'),0),
						 '$diskon_s');");
		}
	}

	mysql_query("insert into order_kelas (id_order,kelas) values (last_insert_id(),'$_SESSION[kelas]')");

	for($i=0; $i<count($_SESSION[pesan]); $i++){
		mysql_query("insert into order_meal (id_order,id_makanan,tarif)
					 values (last_insert_id(),
					 '".$_SESSION[pesan][$i]."',
					 (select harga from makanan where id_makanan='".$_SESSION[pesan][$i]."'))");
	}


	if($_SESSION[pijat]=='Y') mysql_query("insert into order_pijat (id_order,tarif) values (last_insert_id(),25000)");

	for($i=0; $i<count($_SESSION[seat]); $i++){
		$kursi = $_SESSION[seat][$i];
		mysql_query("insert into order_seat (id_order,seat,kategori,nama,jk,tgl_berangkat)
		values (last_insert_id(),'$kursi','".$_SESSION[kategori_p][$i]."','".$_SESSION[nama_p][$i]."','".$_SESSION[jk_p][$i]."','$_SESSION[pergi]')");
	}

	if($_POST[trip]=='pp'){
		$diskon1_s = '0.1';
		if($_POST[diskon1]=='-') $diskon1_s = '0';
		for($i=0; $i<3; $i++){
			if($_SESSION[$kategori[$i]]>0){
				mysql_query("insert into order_detail (id_order,rute,tgl_berangkat,kategori,qty,tarif,diskon) values
							 (last_insert_id(),
							 '$_POST[rute]',
							 '$_SESSION[pulang]',
							 '".$kategori[$i]."',
							 '".$_SESSION[$kategori[$i]]."',
							 coalesce((select $_POST[trip] from tarif where kelas='$_SESSION[kelas]' and kategori_penumpang='".$kategori[$i]."'),0),
							 '$diskon1_s');");
			}
		}

		for($i=0; $i<count($_SESSION[seat]); $i++){
			$kursi = $_SESSION[seat][$i];
			mysql_query("insert into order_seat (id_order,seat,kategori,nama,jk,tgl_berangkat)
			values (last_insert_id(),'$kursi','".$_SESSION[kategori_p][$i]."','".$_SESSION[nama_p][$i]."','".$_SESSION[jk_p][$i]."','$_SESSION[pulang]')");
		}
	}

	unset(	$_SESSION[tahap],
			$_SESSION[trip],
			$_SESSION[rute],
			$_SESSION[pergi],
			$_SESSION[dewasa],
			$_SESSION[anak],
			$_SESSION[bayi],
			$_SESSION[pulang],
			$_SESSION[rute],
			$_SESSION[seat],
			$_SESSION[kelas],
			$_SESSION[pesan],
			$_SESSION[pijat],
			$_SESSION[sub_kelas],
			$_SESSION[profil],
			$_SESSION[kategori_p],
			$_SESSION[nama_p],
			$_SESSION[jk_p] );

	echo "<script>alert('Data pemesanan tiket anda telah kami terima, Setelah ini anda akan kami arahkan ke halaman tiket. Terima kasih !');
			window.location = 'media.php?page=survey'</script>";
}

if($_SESSION[trip]=='oneway') $trip = 'one_way';
if($_SESSION[trip]=='return') $trip = 'pp';

if($_SESSION[pijat]=='Y') $pilihan = 'YA';
if($_SESSION[pijat]=='N') $pilihan = 'TIDAK';

?>

<div class="register form">
	<form name="form" action="<?php $_SERVER[PHP_SELF]; ?>" class="standard" method="post">
		<h3 class="orangetext" style="color: #000000">Nama Pelanggan &nbsp&nbsp&nbsp&nbsp: <?php echo strtoupper($_SESSION[profil][0]); ?><br>
		Rincian Pemesanan : #<?php
		$guid = left(session_id(),6).acak_karakter(6);
		echo "<input type='hidden' value='$guid' name='guid'>";
		echo strtoupper($guid);

		?>
		</h3>
		<hr color='#000000' size='1'>

		<p><b><?php echo $_SESSION[rute]." - ".$_SESSION[kelas]." Class"; ?></b></p>
		<table cellpadding="0" border="0" width="670">
			<tbody>
			<tr style="border-bottom: 1px solid #c5a430;">
				<th>No.</th>
				<th>Tanggal Keberangkatan</th>
				<th>Kategori Penumpang</th>
				<th align="center">Jumlah</th>
				<th>Tarif</th>
				<th>Diskon</th>
				<th>Total</th>
			</tr>
			<?php
			$no 			= 1;
			$jml_penumpang 	= 0;
			$total 			= 0;

			if (strtolower(date('l',strtotime($_SESSION[pergi])))=='friday'){
				$diskon = '10%';
			}
			else{
				$diskon = '-';
			}

			for($i=1;$i<=3;$i++){
				switch($i){
					case 1:
						$penumpang = 'Dewasa';
						break;
					case 2:
						$penumpang = 'Anak';
						break;
					case 3:
						$penumpang = 'Bayi';
						break;
				}

				if($_SESSION[strtolower($penumpang)]>0){
					$t 				= mysql_fetch_array(mysql_query("select * from tarif where kelas='$_SESSION[kelas]' and kategori_penumpang='$penumpang'"));
					$tarif_diskon 	= ($_SESSION[strtolower($penumpang)] * $t[$trip]);
					if($diskon=='10%') $tarif_diskon = $tarif_diskon-(($_SESSION[strtolower($penumpang)] * $t[$trip])*10)/100;

					echo "<tr>
						<td width=40>$no</td>
						<td>".tgl_indo($_SESSION[pergi])."</td>
						<td>$penumpang</td>
						<td align='center'>".$_SESSION[strtolower($penumpang)]."</td>
						<td>Rp. ".format_rupiah($t[$trip])."</td>
						<td>$diskon</td>
						<td width=150>Rp. ".format_rupiah($tarif_diskon)."</td>
					</tr>";

					$no++;
					$jml_penumpang 	= $jml_penumpang+$_SESSION[strtolower($penumpang)];
					$total			= $total + $tarif_diskon;
				}
			}
			?>
			<tr style="border-top: 1px solid #c5a430;">
				<td colspan='3' align='right'>TOTAL : &nbsp&nbsp</td>
				<td align='center'><?php echo $jml_penumpang;?></td>
				<td></td>
				<td></td>
				<td><?php echo 'Rp. '.format_rupiah($total);?></td>
			</tr>

			</tbody>
		</table>
		<input type="hidden" value="<?php echo $diskon ?>" name="diskon">
		<input type="hidden" value="<?php echo $trip ?>" name="trip">
		<p>NOMOR KURSI :
		<b>
		<?php
		for($i=0; $i<count($_SESSION[seat]); $i++){
			echo "[".$_SESSION[seat][$i]."] ";
		}
		?></b></p>

		<?php if($trip=='pp'){ ?>
		<br>
		<p><b>
		<?php
		$c = mysql_fetch_array(mysql_query("select * from konten where grup='rute' and deskripsi not like '$_SESSION[rute]'"));
		echo $c[deskripsi]." - ".$_SESSION[kelas]." Class";
		?></b></p>

		<input type="hidden" value="<?php echo $c[deskripsi] ?>" name="rute">
		<table cellpadding="0" border="0" width="670">
			<tbody>
			<tr style="border-bottom: 1px solid #c5a430;">
				<th>No.</th>
				<th>Tanggal Kepulangan</th>
				<th>Kategori Penumpang</th>
				<th align="center">Jumlah</th>
				<th>Tarif</th>
				<th>Diskon</th>
				<th>Total</th>
			</tr>
			<?php
			$no 			= 1;
			$jml_penumpang 	= 0;
			$total1 		= 0;
			if (strtolower(date('l',strtotime($_SESSION[pulang])))=='friday'){
				$diskon = '10%';
			}
			else{
				$diskon = '-';
			}

			for($i=1;$i<=3;$i++){
				switch($i){
					case 1:
						$penumpang = 'Dewasa';
						break;
					case 2:
						$penumpang = 'Anak';
						break;
					case 3:
						$penumpang = 'Bayi';
						break;
				}

				if($_SESSION[strtolower($penumpang)]>0){
					$t = mysql_fetch_array(mysql_query("select * from tarif where kelas='$_SESSION[kelas]' and kategori_penumpang='$penumpang'"));
					$tarif_diskon = ($_SESSION[strtolower($penumpang)] * $t[$trip]);
					if($diskon=='10%') $tarif_diskon = $tarif_diskon-(($_SESSION[strtolower($penumpang)] * $t[$trip])*10)/100;

					echo "<tr>
						<td width=40>$no</td>
						<td>".tgl_indo($_SESSION[pulang])."</td>
						<td>$penumpang</td>
						<td align='center'>".$_SESSION[strtolower($penumpang)]."</td>
						<td>Rp. ".format_rupiah($t[$trip])."</td>
						<td>$diskon</td>
						<td width=150>Rp. ".format_rupiah($tarif_diskon)."</td>
					</tr>";

					$no++;
					$jml_penumpang 	= $jml_penumpang+$_SESSION[strtolower($penumpang)];
					$total1			= $total1 + $tarif_diskon;
				}
			}
			?>
			<tr style="border-top: 1px solid #c5a430;">
				<td colspan='3' align='right'>TOTAL : &nbsp&nbsp</td>
				<td align='center'><?php echo $jml_penumpang;?></td>
				<td></td>
				<td></td>
				<td><?php echo 'Rp. '.format_rupiah($total1);?></td>
			</tr>

			</tbody>
		</table>
		<input type="hidden" value="<?php echo $diskon ?>" name="diskon1">

		<p>NOMOR KURSI :
		<b>
		<?php
		for($i=0; $i<count($_SESSION[seat]); $i++){
			echo "[".$_SESSION[seat][$i]."] ";
		}
		?></b></p>
		<?php
		}
		?>

		<?php
		if(count($_SESSION[pesan])>0 or $pilihan=='YA'){
		?>
			</br>
			<p><b>LAYANAN EKSTRA</b></p>
			<table cellpadding="0" border="0" width="670">
				<tbody>
				<tr style="border-bottom: 1px solid #c5a430;">
					<th>No.</th><th>Menu</th><th>Harga</th>
				</tr>
				<?php
				if($_SESSION[pesan]>0){
					$total_makanan = 0;
					$urut		   = 1;
					for($i=0; $i<count($_SESSION[pesan]); $i++){
						$m = mysql_fetch_array(mysql_query("select * from makanan where id_makanan='".$_SESSION[pesan][$i]."'"));
						echo "<tr>
								<td width=40>".($i+1)."</td>
								<td>$m[nama]</td>
								<td width=150>Rp. ".format_rupiah($m[harga])."</td>
							</tr>";

						$total_makanan 	= $total_makanan + $m[harga];
						$urut			= $urut++;
					}
				}
				if($pilihan=='YA'){
					$total_pijat	= 25000;
					echo "<tr>
							<td width=40>".($urut+1)."</td>
							<td>Pijat</td>
							<td width=150>Rp. 25.000</td>
						</tr>";
				}
				?>
				<tr style="border-top: 1px solid #c5a430;">
					<td colspan='2' align='right'>TOTAL : &nbsp&nbsp</td>
					<td><?php echo 'Rp. '.format_rupiah($total_makanan+$total_pijat);?></td>
				</tr>

				</tbody>
			</table>
			<div class="clear"></div>
			<p>Catatan : Layanan Ekstra ini hanya berlaku untuk keberangkatan.</p>
		<?php
		}
		?>

		<div class="clear"></div>
		<div class='div-shadow'></div>

		<h3 class="orangetext" style="color: #000000"><?php echo '# Total Bayar : Rp. '.format_rupiah($total+$total1+$total_makanan+$total_pijat).',-'; ?></h3>

		<p>Silahkan transfer pemesanan anda sesuai dengan nominal yang tercantum diatas ke rekening berikut :</p>
		<table cellpadding="0" border="0" width="670">
			<tbody>
			<tr>
				<th>Nama Bank</th>
				<th>Nomor Rekening</th>
				<th>Atas Nama</th>
			</tr>
			<?php
			$bank = mysql_query("select * from bank order by nama_bank");
			while($b = mysql_fetch_array($bank)){
				echo "<tr>
						<td>".strtoupper($b[nama_bank])."</td>
						<td>$b[norek]</td>
						<td>".strtoupper($b[nama_pemilik])."</td>
					</tr>";
			}
			?>
			</tbody>
		</table>
		<p>Pastikan anda menyertakan kode unik berikut : <b><?php echo strtoupper($guid); ?></b> pada berita transfer anda.</p>

		<div class="clear"></div>
		<hr color='#000000' size='1'>
		<div class="submit"><input type="submit" value="Selesai" name="selesai"/></div>
	</form>
</div>
