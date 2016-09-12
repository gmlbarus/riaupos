<?php
if($_SESSION[tahap]>=$_GET[tahap]){
	if($_POST[lanjut]!=''){
		$jml_penumpang = $_POST[jml_penumpang];
		unset($_SESSION[kategori_p],$_SESSION[nama_p],$_SESSION[jk_p]);
		for($p=1; $p<=$jml_penumpang; $p++){
			$_SESSION[kategori_p][] = $_POST['kategori_'.$p];
			$_SESSION[nama_p][] 	= $_POST['nama_'.$p];
			$_SESSION[jk_p][] 		= $_POST['jk_'.$p];
		}
		
		$_SESSION[tahap] = 4;
		echo "<script>window.location = 'media.php?page=pemesanan&tahap=4'</script>";
		//echo "<script>window.location = 'page/tahap_3.php'</script>";
	}
?>
	
<div class="register form">
	<form name="form" action="<?php $_SERVER[PHP_SELF]; ?>" class="standard" method="post">
		<?php
		for($d=0; $d<$_SESSION[dewasa]; $d++) $pelanggan[] = 'dewasa';
		for($a=0; $a<$_SESSION[anak]; $a++) $pelanggan[] = 'anak';
		for($b=0; $b<$_SESSION[bayi]; $b++) $pelanggan[] = 'bayi';
		
		$jml_penumpang = $_SESSION[dewasa]+$_SESSION[anak]+$_SESSION[bayi];
		for($i=1; $i<=$jml_penumpang; $i++){
		echo "
		<input name='kategori_$i' type='hidden' id='kategori_$i' value='".$pelanggan[$i-1]."'/>
		<h3 class='orangetext' style='color: #000000'>pelanggan $i - ".strtoupper($pelanggan[$i-1])."</h3>
		<hr color='#c5a430' size='1'>
		<div class='clearfix'>
			<div class='left'>
				<div class='input text'>
					<div class='input text'>
						<label for='nama_$i'>Nama :</label>
						<input name='nama_$i' required='required' size='30' type='text' id='nama_$i'/>
					</div>
				</div>
			</div>
			
			<div class='left'>
				<div class='input textarea'>
					<label for='jk_$i'>Jenis Kelamin :</label>
					<select name='jk_$i' id='jk_$i'>";
						$tampil=mysql_query("SELECT * FROM konten WHERE grup='jk'");
						while($p=mysql_fetch_array($tampil)){
							echo "<option value='$p[deskripsi]'>$p[deskripsi]</option>";
						}
		echo "				
					</select>
				</div>
			</div>
		</div>
		<br>
		";
		}
		?>
		
		<input name='jml_penumpang' type='hidden' id='jml_penumpang' value='<?php echo $jml_penumpang; ?>'/>
		<div class="clear"></div>
		<div class="submit"><input type="submit" value="Lanjutkan" name="lanjut"/></div>
	</form>
</div>
<div class="clear"></div>
<div class='div-shadow'></div>
	
<?php
}
?>