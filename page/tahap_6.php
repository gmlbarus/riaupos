<?php
if($_POST[kirim]!=""){
	$query 	= mysql_query("INSERT INTO konfirmasi (invoice,nama,pesan,img,tgl_input)
						VALUES (
						'".mysql_real_escape_string($_SESSION[order][invoice])."',
						'".mysql_real_escape_string($_POST[nama])."',
						'".mysql_real_escape_string($_POST[pesan])."',
						'".mysql_real_escape_string($_POST[img])."',

						now())");

	if($query){
		echo '<div id="status_message" class="status_success">Data anda telah kami terima. Terima kasih</div>';
	}
	else{
		echo '<div id="status_message" class="status_error">Gagal mengirim data</div>';
	}
}

$order = $_SESSION[order];
?>

<h1>Konfirmasi</h1>
<hr color='#000000' size='1'>

<div class="register form">
	<form name="form" action="<?php $_SERVER[PHP_SELF]; ?>" class="standard" method="post" onSubmit="return validasi(this)">
	<div class="input text"><label for="nama">Invoice :</label><input name="invoice" required="required" size="30" type="text" id="invoice" value="<?php echo $order[invoice] ?>" disabled></div>

    <div class="input text"><label for="nama"> Nama :</label><input name="nama" size="30" required="required" type="text" id="nama"/></div>

    <div class="input file"><label for="nama"> Images :</label><input name="img" size="30" required="required" type="file" id="img"/></div>

	<div class="input textarea"><label for="pesan">Pesan :</label><textarea name="pesan" required="required" style="height:50px" cols="30" rows="6" id="pesan"></textarea></div>

	<div class="clear"></div>
	<div class="submit"><input type="submit" value="Kirim" name="kirim"/></div></form>
</div>
</script>
