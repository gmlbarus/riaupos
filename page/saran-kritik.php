<?php
if($_POST[kirim]!=""){
	$query 	= mysql_query("INSERT INTO hubungi(nama,email,tipe,pesan,tgl_input)
						VALUES (
						'".mysql_real_escape_string($_POST[nama])."',
						'".mysql_real_escape_string($_POST[email])."',
						'".mysql_real_escape_string($_POST[tipe])."',
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

<h1>Saran dan Kritik</h1>
<hr color='#000000' size='1'>

<div class="register form">
	<form name="form" action="<?php $_SERVER[PHP_SELF]; ?>" class="standard" method="post" onSubmit="return validasi(this)">

	<div class="input textarea"><label for="negara">Tipe :</label>
    	<select name="tipe" id="tipe">
			<?php
			echo "<option value='0' selected='selected'>-- Pilih Tipe --</option>";
			$tampil=mysql_query("SELECT deskripsi,deskripsi FROM konten WHERE grup='tipe'");
          	while($r=mysql_fetch_array($tampil)){
				echo "<option value='$r[deskripsi]'>$r[deskripsi]</option>";
          	}
			?>
        </select>
    </div>
	
	<div class="input text"><label for="nama">Nama :</label><input name="nama" required="required" size="30" type="text" id="nama"/></div>
	
    <div class="input email"><label for="email">Email :</label><input name="email" size="30" required="required" type="email" id="UserEmail"/></div>

	<div class="input textarea"><label for="pesan">Pesan :</label><textarea name="pesan" required="required" style="height:50px" cols="30" rows="6" id="pesan"></textarea></div>
    
	<div class="clear"></div>
	<div class="submit"><input type="submit" value="Kirim" name="kirim"/></div></form>
</div>




<script language="javascript">
function validasi(form){
  if (form.tipe.value == 0){
    alert("Tipe belum dipilih...");
    form.tipe.focus();
    return (false);
  }

  return (true);
}
</script>