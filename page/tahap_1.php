<?php
if($_POST[cari]!=""){
	$_SESSION[tahap]	= 2;
	$_SESSION[trip]		= $_POST[trip];
	$_SESSION[media]		= $_POST[media];
	$_SESSION[media2]		= $_POST[media2];
	$_SESSION[pergi]	= $_POST[pergi];
	if ($_SESSION[trip]=='return') $_SESSION[pulang] = $_POST[pulang];
	
	echo "<script>window.location = 'media.php?page=pemesanan&tahap=2'</script>";
}
?>

<script language="javascript">
function Right(str, n){
  if (n <= 0)
    return "";
  else if (n > String(str).length)
    return str;
  else {
    var iLen = String(str).length;
    return String(str).substring(iLen, iLen - n);
  }
}

var currentDate = new Date()
var day 		= Right(('0'+currentDate.getDate()), 2)
var month 		= Right(('0'+(currentDate.getMonth() + 1)),2)
var year 		= currentDate.getFullYear()
var tanggal 	= year+'-'+month+'-'+day
	
$(document).ready(function() {
    $(".pp").show()
});
function getResults(elem) {
    elem.checked && elem.value == "return" ? $(".pp").show() : $(".pp").hide();
};

function validasi(form){
	if (form.media.value == 0){
		alert("media belum dipilih...");
		form.media.focus();
		return (false);
	}
	
  return (true);
}
</script>

<h1></h1>
<hr color='#c5a430' size='1'>
<div class="register form">
	<form name="form" action="<?php $_SERVER[PHP_SELF]; ?>" class="standard" style="background: url('images/ckapal.jpg') repeat; opacity: 0.6; filter: alpha(opacity=60);" method="post" onSubmit="return validasi(this)">
	
	<div class="row" id="#">
	<span> Koran Utama </span> &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; : &nbsp; Riau Pos </div>
	<div class="clear"></div>
	
	<div class="clearfix">
        <div class="left">
			<div class="input textarea">
		        <hr></hr>
		        <span> Koran Tambahan</span> &nbsp; &nbsp; : &nbsp;
				<select name="media" id="media">
					<?php
					echo "<option value='0' selected='selected'>-- Koran Tambahan Pertama  --</option>";
					$tampil=mysql_query("SELECT deskripsi,deskripsi FROM konten WHERE grup='media'");
					while($p=mysql_fetch_array($tampil)){
						echo "<option value='$p[deskripsi]'>$p[deskripsi]</option>";
					}
					?>
				</select>
			</div>
    	</div>
	</div>

<div class="clearfix">
        <div class="left">
			<div class="input textarea">
		        <hr></hr>
		        <span> Koran Tambahan</span> &nbsp; &nbsp; : &nbsp;
				<select name="media2" id="media2">
					<?php
					echo "<option value='0' selected='selected'>-- Koran Tambahan Kedua  --</option>";
					$tampil=mysql_query("SELECT deskripsi,deskripsi FROM konten WHERE grup='media2'");
					while($p=mysql_fetch_array($tampil)){
						echo "<option value='$p[deskripsi]'>$p[deskripsi]</option>";
					}
					?>
				</select>
			</div>
    	</div>
	</div>

	<div class="clearfix">
        <div class="left">
			<div class="input textarea">
			<hr></hr>
		        <span> Pembayaran Via </span> &nbsp; &nbsp; &nbsp;:  &nbsp; &nbsp; &nbsp;
				<select name="media2" id="media2">
					<?php
					echo "<option value='0' selected='selected'>-- Payment  --</option>";
					$tampil=mysql_query("SELECT deskripsi,deskripsi FROM konten WHERE grup='via'");
					while($p=mysql_fetch_array($tampil)){
						echo "<option value='$p[deskripsi]'>$p[deskripsi]</option>";
					}
					?>
				</select>
			</div>
    	</div>
	</div>
<br/> <br/>

<div class="row" id="#">
	<span> Kode unik </span> &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;: &nbsp; 
	<?php
	$unik=mt_rand(125, 455);
	echo mt_rand(225, 355);
	echo $unik;
	?> </div>


	<div class="left">
		<div class="input text">
			<input name="pergi" size="18" type="text" id="pergi-inputField" placeholder="Total Yang Harus Dibayar"/>
			<img src="images/be_calendar.gif" id="pergi-trigger" style="margin-right:30px;">
			<script>
				Calendar.setup({
					trigger    : "pergi-trigger",
					inputField : "pergi-inputField"
				});
			</script>
	</div>
   	<div class="clear"></div>
	<div class="submit"><input type="submit" value="Lanjut" name="cari"/></div></form>
</div>