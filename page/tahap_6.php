<?php
if($_POST[selesai]!=""){
	$query 	= mysql_query("INSERT INTO Konfirmasi(invoice,pembayaran,total,tanggal_bayar,pemilik_rek,images,pesan,tgl_input)
						VALUES (
						'".mysql_real_escape_string($_POST[invoice])."',
						'".mysql_real_escape_string($_POST[pembayaran])."',
						'".mysql_real_escape_string($_POST[bank])."',
						'".mysql_real_escape_string($_POST[total])."',
						'".mysql_real_escape_string($_POST[tanggal_bayar])."',
						'".mysql_real_escape_string($_POST[pemilik_rek])."',
						'".mysql_real_escape_string($_POST[images])."',
						'".mysql_real_escape_string($_POST[pesan])."',
						now())");

	if($query){
		echo '<div id="status_message" class="status_success">Data anda telah kami terima. Terima kasih</div>';
	}
	else{
		echo '<div id="status_message" class="status_error">Gagal mengirim data</div>';
	}	
}
?>

<h1>Konfirmasi</h1>
<hr color='#000000' size='1'>

<div class="register form">
	<form name="form" action="<?php $_SERVER[PHP_SELF]; ?>" class="standard" method="post" onSubmit="return validasi(this)">

	<div class="input text"><label for="invoice">Invoice :</label><input name="invoice" required="required" size="30" type="text" id="invoice"/></div>
	
	<div class="input text"><label for="pembayaran">Pembayaran Via :</label><input name="pembayaran" required="required" size="30" type="text" id="pembayaran"/></div>

    <div class="input textarea"><label for="negara">Bayar kerekening :</label>
    	<select name="tipe" id="tipe">
			<?php
			echo "<option value='0' selected='selected'>-- Rekening --</option>";
			$tampil=mysql_query("SELECT nama_bank FROM bank ");
          	while($r=mysql_fetch_array($tampil)){
				echo "<option value='$r[nama_bank]'>$r[nama_bank]</option>";
          	}
			?>
        </select>
    </div>

    <div class="input text"><label for="total"> Total transfer :</label><input name="total" required="required" size="30" type="text" id="total"/></div>

<div class="r">
					<div class="c1">Tanggal bayar / transfer</div>
					<div class="c2">
												<select name="tgl">
						<option value=1>1</option><option value=2>2</option><option value=3>3</option><option value=4>4</option><option value=5>5</option><option value=6>6</option><option value=7>7</option><option value=8>8</option><option value=9>9</option><option value=10>10</option><option value=11>11</option><option value=12>12</option><option value=13>13</option><option value=14>14</option><option value=15>15</option><option value=16>16</option><option value=17>17</option><option value=18>18</option><option value=19>19</option><option value=20>20</option><option value=21>21</option><option value=22 selected>22</option><option value=23>23</option><option value=24>24</option><option value=25>25</option><option value=26>26</option><option value=27>27</option><option value=28>28</option><option value=29>29</option><option value=30>30</option><option value=31>31</option>						</select>
						<select name="bln">
						<option value=1>Januari</option><option value=2>Februari</option><option value=3>Maret</option><option value=4>April</option><option value=5>Mei</option><option value=6>Juni</option><option value=7>Juli</option><option value=8>Agustus</option><option value=9 selected>September</option><option value=10>Oktober</option><option value=11>November</option><option value=12>Desember</option>						</select>
						<select name="thn">
						<option value=2016>2016</option><option value=2015>2015</option>						</select>
					</div>
				</div>

    <div class="input text"><label for="pemilik_rek"> Nama pemilik rekening :</label><input name="pemilik_rek" required="required" size="30" type="text" id="pemilik_rek"/></div>

	<div class="input-group"><label for="images">Upload gambar :</label><input name="nama" required="required" size="90" type="file" id="images"/></div>
	
	<div class="input textarea"><label for="pesan">Pesan :</label><textarea name="pesan" required="required" style="height:50px" cols="30" rows="6" id="pesan"></textarea></div>
    
	<div class="clear"></div>
	<div class="submit"><input type="submit" value="Kirim" name="kirim"/></div></form>
</div>

</script>