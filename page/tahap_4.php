<?php
if($_SESSION[tahap]>=$_GET[tahap]){
	if($_POST[lanjut]!=''){
		if($_SESSION[trip] == 'return' && $_POST[kelas]=='EKONOMI'){
			echo "<script>alert('Maaf promo kelas EKONOMI untuk trip Pulang Pergi tidak tersedia. Silahkan pilih kelas EKSEKUTIF atau VIP'); </script>";
		}
		else{
			for($i=0; $i<$_POST[jmlkursi]; $i++){
				$kursi[] = $_POST['seat_'.$i];
			}
			
			$_SESSION[seat]		= $kursi;
			$_SESSION[kelas] 	= $_POST[kelas];
			if(left(strtolower($_POST[kelas]),9) == 'eksekutif'){
				$_SESSION[kelas] 		= 'EKSEKUTIF';
				$_SESSION[sub_kelas] 	= right($_POST[kelas],1);
			}
			
			$lanjut 	= 'N';
			$lanjut1 	= 'N';
			for($i=0; $i<count($kursi); $i++){
				$cek = mysql_query("select * 
									from order_seat os
									inner join order_kelas ok on ok.id_order=os.id_order
									where ok.kelas='$_SESSION[kelas]' and os.seat='".$kursi[$i]."' and os.tgl_berangkat='$_SESSION[pergi]'");
				$jml_cek = mysql_num_rows($cek);
				if($jml_cek>0){
					echo "<script>alert('Maaf seat ".$kursi[$i]." pada keberangkatan $_SESSION[pergi] tidak tersedia'); </script>";
				}
				else{
					$lanjut = 'Y';
				}
			}
			
			if($lanjut=='Y' and $_SESSION[trip]=='return'){
				for($i=0; $i<count($kursi); $i++){
					$cek = mysql_query("select * 
										from order_seat os
										inner join order_kelas ok on ok.id_order=os.id_order
										where ok.kelas='$_SESSION[kelas]' and os.seat='".$kursi[$i]."' and os.tgl_berangkat='$_SESSION[pulang]'");
					$jml_cek = mysql_num_rows($cek);
					if($jml_cek>0){
						echo "<script>alert('Maaf seat ".$kursi[$i]." pada kepulangan $_SESSION[pulang] tidak tersedia'); </script>";
					}
					else{
						$lanjut1 = 'Y';
					}
				}
			}
			
			if($lanjut=='Y' or $lanjut1=='Y'){
				$_SESSION[tahap] 	= 5;
				echo "<script>window.location = 'media.php?page=pemesanan&tahap=5'</script>";
			}
		}
	}

	if($_POST[tampilkan]!=''){
		$class = $_POST[kelas];
	}
	else{
		$class = 'ekonomi';
	}
	?>

	<div class="register form">
		<form name="form" action="<?php $_SERVER[PHP_SELF]; ?>" class="standard" method="post">
			<div class="input textarea" align="center">
				<select name="kelas" id="kelas">
					<?php
					$tampil=mysql_query("select distinct `kelas` as nama from seat order by kelas desc");
					while($r=mysql_fetch_array($tampil)){
						if($class == $r[nama]){
							echo "<option value='$r[nama]' selected>$r[nama]</option>";
						}
						else{
							echo "<option value='$r[nama]'>$r[nama]</option>";
						}
					}
					?>
				</select>
				<input type="submit" value="Tampilkan" name="tampilkan"/>
			</div>

			<div class="seat-grid" style="width: 100%;">
				<script language="php">
				$kelas = $class;
				if(left($kelas,9)=='EKSEKUTIF') $kelas = 'EKSEKUTIF'; $subkelas = right($class,1);
				
				$query_seat = mysql_query("select os.seat,os.tgl_berangkat,ok.kelas from order_seat os
										   inner join order_kelas ok on os.id_order=ok.id_order and ok.aktif='Y' and ok.kelas='$kelas'
										   where os.tgl_berangkat='$_SESSION[pergi]'");
				unset($seat_disable);
				while($s = mysql_fetch_array($query_seat)){
					$seat_disable[] = $s[seat];
				}
				
				seat($class, $seat_disable);
				</script>
			</div>		
			
			<div class="clear"></div>
			
		<?php
		$penumpang = $_SESSION[dewasa]+$_SESSION[anak]+$_SESSION[bayi];
		echo "<input name='jmlkursi' id='jmlkursi' type='hidden' value='$penumpang' />";
		for($i=0;$i<$penumpang;$i++){
			echo "<input name='seat_$i' id='seat_$i' type='hidden'/>";	
		}
		?>
			<div class='div-shadow'></div>
			<div class="submit"><input type="submit" value="Lanjutkan" name="lanjut" onclick="return validasi()"/></div>
		</form>
	</div>

	<?php 
}
else{
	echo "<script>history.back();</script>";
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