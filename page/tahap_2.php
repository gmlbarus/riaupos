<?php
if($_SESSION[tahap]>=$_GET[tahap]){
	if($_POST[lanjut]!=''){
		$tgl_lahir			= $_POST[thn_lahir].'-'.$_POST[bln_lahir].'-'.$_POST[tgl_lahir];
		$_SESSION[profil] 	= array($_POST[nama],$tgl_lahir,$_POST[provinsi],$_POST[kota],$_POST[alamat],$_POST[kode_pos],$_POST[telepon],$_POST[email]);

		if (isset($_SESSION[tahap]))
			$_SESSION[tahap] = $_SESSION[tahap] > 3 ? $_SESSION[tahap] : 3;

		echo "<script>window.location = 'media.php?page=pemesanan&tahap=3'</script>";
		//echo "<script>window.location = 'page/tahap_3.php'</script>";
	}

	if($_POST[login2]!=""){
		function antiinjection($data){
			$filter_sql = mysql_real_escape_string(stripslashes(strip_tags(htmlspecialchars($data,ENT_QUOTES))));
			return $filter_sql;
		}

		$username 	= antiinjection($_POST[username]);
		$password 	= antiinjection($_POST[password]);

		$query		= mysql_query("SELECT l.*,p.nama from login l
								   JOIN profil p ON l.username=p.email
								   WHERE l.username='$username' AND l.pass=md5('$password') AND l.grup='2'");
		$jml		= mysql_num_rows($query);
		$r			= mysql_fetch_array($query);

		if($jml > 0){
			$_SESSION[basyenkuser]   	= $r[username];
			$_SESSION[basyenkpassword]  = $r[pass];
			$_SESSION[basyenklevel]   	= $r[grup];
			$_SESSION[basyenknama]   	= $r[nama];
		}
		else{
			echo "<script>alert('Autentikasi user gagal...');</script>";
		}
	}

	if ($_SESSION[basyenkuser]=="" and $_SESSION[basyenkpassword]=="" and $_SESSION[basyenklevel]==""){
	?>

	<div class="register form">
		<form name="form" action="<?php $_SERVER[PHP_SELF]; ?>" class="standard" method="post">
			<h3 class="orangetext" style="color: #000000">Sudah punya akun ? silahkan login disini</h3>
			<hr color='#000000' size='1'>
			<div class="clearfix">
				<div class="left">
					<div class="input email"><label for="email">Email :</label><input name="username" size="25" required="required" type="email" id="UserEmail"/></div>
				</div>
				<div class="left">
					<div class="input password"><label for="password">Password :</label><input name="password" size="25" required="required" type="password" id="password_1"/></div>
				</div>

				<div class="clear"></div>
				<div class="submit"><input type="submit" value="Login" name="login2"/></div>
			</div>
		</form>
	</div>
	<div class="clear"></div>
    <div class='div-shadow'></div>

	<?php
	}

	$query	= mysql_query("select *,day(tgl_lahir) as tgl, month(tgl_lahir) as bln, year(tgl_lahir) as thn from profil where email='".$_SESSION[basyenkuser]."'");
	$jml	= mysql_num_rows($query);
	$r		= mysql_fetch_array($query);
	?>

	<div class="register form">
		<form name="form" action="<?php $_SERVER[PHP_SELF]; ?>" class="standard" method="post" onSubmit="return validasi(this)">
		<h3 class="orangetext" style="color: #000000">Data Pelanggan</h3>
		<hr color='#000000' size='1'>
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

		<div class="input email"><label for="email">Email :</label><input name="email" size="40" required="required" type="email" id="UserEmail" value="<?php echo $_SESSION[basyenkuser]?>"/></div>

		<div class="clear"></div>
		<div class="submit">
			<input type="submit" value="Lanjutkan" name="lanjut"/>
			<?php
			if ($_SESSION[basyenkuser]=="" and $_SESSION[basyenkpassword]=="" and $_SESSION[basyenklevel]==""){
				echo "<input type='button' value='Registrasi' class='bt_register' onclick=\"window.open('media.php?page=registrasi','_blank');\">";
			}
			?>
		</div>
		</form>
	</div>

	<?php
}
else{
	echo "<script>history.back();</script>";
}
?>


<script language="javascript">
function validasi(form){
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
