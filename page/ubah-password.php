<?php
if (isset($_SESSION[basyenkuser]) and isset($_SESSION[basyenkpassword]) and isset($_SESSION[basyenklevel])){
	if($_POST[ubah]!=""){
		$query 	= mysql_query("UPDATE login SET pass=md5('".mysql_real_escape_string($_POST[password_1])."') WHERE username='$_SESSION[basyenkuser]'");
			
		if($query){
			$_SESSION[basyenkpassword]  = md5($_POST[password_1]);
			echo '<div id="status_message" class="status_success">Password anda telah diubah.</div>';
		}
		else{
			echo '<div id="status_message" class="status_error">Gagal mengubah data</div>';
		}
	}
?>

	<h1>Ubah Password</h1>
	<hr color='#000000' size='1'>

	<div class="register form">
		<form name="form" action="<?php $_SERVER[PHP_SELF]; ?>" class="standard" method="post" onSubmit="return validasi(this)">
			<input name="sesi" type="hidden" id="sesi" value="<?php echo $_SESSION[basyenkpassword] ?>"/>
			<div class="left"><div class="input password"><label for="password">Password Lama :</label><input name="password" size="40" required="required" type="password" id="password"/></div></div>
			<div class="clear"></div>
			<div class="left"><div class="input password"><label for="password_1">Password Baru :</label><input name="password_1" size="40" required="required" type="password" id="password_1"/></div></div>
			<div class="clear"></div>
			<div class="left"><div class="input password"><label for="password_2">Ulangi Password Baru :</label><input name="password_2" size="40" required="required" type="password" id="password_2"/></div></div>
			<div class="clear"></div>
			<div class="submit"><input type="submit" value="Ubah Password" name="ubah"/></div>
		</form>
	</div>




	<script language="javascript">
	function validasi(form){
	  if (CryptoJS.MD5(form.password.value) != form.sesi.value){
		alert("Autentikasi password lama anda gagal.");
		form.password.focus();
		return (false);
	  }
	  if (form.password_1.value != form.password_2.value){
		alert("Password tidak cocok...");
		form.password_1.focus();
		return (false);
	  }
	  
	  return (true);
	}
	</script>

<?php
}
?>