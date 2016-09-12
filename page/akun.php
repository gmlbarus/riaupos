<?php
if($_POST[ubah]!=''){
	$tgl_lahir 	= $_POST[thn_lahir].'-'.$_POST[bln_lahir].'-'.$_POST[tgl_lahir];
	$telepon	= right(mysql_real_escape_string($_POST[telepon]), strlen(mysql_real_escape_string($_POST[telepon]))-3);
	
	$c = mysql_fetch_array(mysql_query("SELECT * from profil 
										WHERE hp LIKE '%$telepon' AND email NOT LIKE '$_SESSION[basyenkuser]'"));
	
	if(right(mysql_real_escape_string($c[hp]), strlen(mysql_real_escape_string($c[hp]))-3)==right(mysql_real_escape_string($_POST[telepon]), strlen(mysql_real_escape_string($_POST[telepon]))-3)){
		echo '
		<div id="status_message" class="status_error">Nomor Telepon ini sudah teregistrasi. Silakan masukkan data anda dengan benar</div>';
	}
	else{
		$query = mysql_query("UPDATE profil SET
							  nama			='".mysql_real_escape_string($_POST[nama])."',
							  tgl_lahir		='$tgl_lahir',
							  alamat		='".mysql_real_escape_string($_POST[alamat])."',
							  id_provinsi	='".mysql_real_escape_string($_POST[provinsi])."',
							  id_kota		='".mysql_real_escape_string($_POST[kota])."',
							  kode_pos		='".mysql_real_escape_string($_POST[kode_pos])."',
							  hp			='".mysql_real_escape_string($_POST[telepon])."'
							  WHERE email='$_SESSION[basyenkuser]'");
		if($query){
			echo '<div id="status_message" class="status_success">Data anda telah kami terima. Silahkan login untuk memudahkan transaksi anda</div>';
		}
		else{
			echo '<div id="status_message" class="status_error">Gagal menyimpan data</div>';
		}
	}
}


$query	= mysql_query("select *,day(tgl_lahir) as tgl, month(tgl_lahir) as bln, year(tgl_lahir) as thn from profil where email='".$_SESSION[basyenkuser]."'");
$jml	= mysql_num_rows($query);
$r		= mysql_fetch_array($query);

if($jml>0){
?>

<h1>Akun Saya</h1>
<hr color='#c5a430' size='1'>

<div class="register form">
	<form name="form" action="<?php $_SERVER[PHP_SELF]; ?>" class="standard" method="post" onSubmit="return validasi(this)">

	<div class="input text"><label for="nama">Nama :</label><input name="nama" required="required" size="64" maxlength="125" type="text" id="nama" value="<?php echo $r[nama] ?>"/></div>
    	
	<div class="clearfix">
		<div class="left">
        	<div class="input date"><label for="tanggal_lahir">Tanggal Lahir :</label>
            	<?php
				combotgl(1,31,'tgl_lahir', $r[tgl]);
          		combonamabln(1,12,'bln_lahir',$r[bln]);
          		combothn(1900,$thn_sekarang,'thn_lahir',$r[thn]);
				?>
			</div>
		</div>
	</div>
	
	<div class="input textarea"><label for="negara">Provinsi :</label>
    	<select name="provinsi" id="provinsi">
			<?php
			echo "<option value='0' selected='selected'>-- Pilih Provinsi --</option>";
			$tampil=mysql_query("SELECT * FROM provinsi ORDER BY id_provinsi");
          	while($p=mysql_fetch_array($tampil)){
				if($p[id_provinsi]==$r[id_provinsi]){
					echo "<option value='$p[id_provinsi]' selected>$p[nama]</option>";
				}
				else{
					echo "<option value='$p[id_provinsi]'>$p[nama]</option>";
				}
          	}
			?>
        </select>
    </div>

	<div class="input text"><label for="kota">Kabupaten / Kota :</label>
    	<select name="kota" id="kota">
			<?php
			echo "<option value='0' selected='selected'>-- Pilih Kabupaten/Kota --</option>";
			$tampil=mysql_query("SELECT * FROM kota WHERE id_provinsi=$r[id_provinsi] ORDER BY id_kota");
          	while($p=mysql_fetch_array($tampil)){
				if($p[id_kota]==$r[id_kota]){
					echo "<option value='$p[id_kota]' selected>$p[nama]</option>";
				}
				else{
					echo "<option value='$p[id_kota]'>$p[nama]</option>";
				}
          	}
			?>
        </select>
    </div>
	<div class="input textarea"><label for="alamat">Alamat :</label><textarea name="alamat" required="required" style="height:50px" cols="30" rows="6" id="alamat"><?php echo $r[alamat]?></textarea></div>
    
	<div class="input text"><div class="input text"><label for="kode_pos">Kode Pos :</label><input name="kode_pos" required="required" maxlength="5" type="text" id="kode_pos" onKeyPress="return goodchars(event,'1234567890',this)" value="<?php echo $r[kode_pos]?>"/></div></div>
	
	<div class="input text"><div class="input text"><label for="telepon">Nomor Telepon :</label><input name="telepon" required="required" maxlength="14" type="text" id="telepon" onKeyPress="return goodchars(event,'1234567890+',this)" value="<?php echo $r[hp]?>"/></div></div>
    
	<div class="clear"></div>
	<div class="submit"><input type="submit" value="Ubah Profil" name="ubah"/></div></form>
</div>

<?php
}
?>


<script language="javascript">
function validasi(form){
  if (form.password_1.value != form.password_2.value){
    alert("Password tidak cocok...");
    form.password_1.focus();
    return (false);
  }
  if (form.provinsi.value == 0){
    alert("Provinsi belum dipilih...");
    form.provinsi.focus();
    return (false);
  }
  if (form.kota.value == 0){
    alert("Kabupaten/Kota belum dipilih...");
    form.kota.focus();
    return (false);
  }
  return (true);
}


function harusangka(jumlah){
  var karakter = (jumlah.which) ? jumlah.which : event.keyCode
  if (karakter > 31 && (karakter < 48 || karakter > 57))
    return false;

  return true;
}

$(document).ready(function() {
	$('#provinsi').change(function() { 
		var category = $(this).val();
		$.ajax({
			type: 'GET',
			url: 'config/provinsi.php',
			data: 'provinsi=' + category,
			dataType: 'html',
			beforeSend: function() {
				$('#kota').html('<tr><td colspan=2>Memuat data....</td></tr>');
			},
			success: function(response) {
				$('#kota').html(response);
			}
		});
    });
});
</script>