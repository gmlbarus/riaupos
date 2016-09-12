<?php
if($_POST[cari]!=""){
	$_SESSION[tahap]	= 2;
	$_SESSION[trip]		= $_POST[trip];
	$_SESSION[media]		= $_POST[media];
	$_SESSION[pergi]	= $_POST[pergi];
	$_SESSION[dewasa]	= $_POST[dewasa];
	$_SESSION[anak]		= $_POST[anak];
	$_SESSION[bayi]		= $_POST[bayi];
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
  
	if (form.pergi.value == ""){
		alert("Tanggal pergi masih kosong...");
		form.pergi.focus();
		return (false);
	}
	
	if (form.pergi.value < tanggal){
		alert("Tanggal pergi lebih kecil...");
		form.pergi.focus();
		return (false);
	}
	
	if (form.trip.value == "return"){
		if (form.pulang.value == ""){
			alert("Tanggal pulang masih kosong...");
			form.pulang.focus();
			return (false);
		}
		if (form.pulang.value < tanggal || form.pulang.value < form.pergi.value){
			alert("Tanggal pulang lebih kecil...");
			form.pulang.focus();
			return (false);
		}
		
	}

	if (form.dewasa.value==0 && form.anak.value==0 && form.bayi.value==0){
		alert("Penumpang masih kosong...");
		form.dewasa.focus();
		return (false);
	}
	
  return (true);
}
</script>

<h1></h1>
<hr color='#c5a430' size='1'>

<div class="register form">
	<form name="form" action="<?php $_SERVER[PHP_SELF]; ?>" class="standard" style="background: url('images/ckapal.jpg') repeat; opacity: 0.6; filter: alpha(opacity=60);" method="post" onSubmit="return validasi(this)">
	
	<div class="search-form-top">
		<div class="search-form-top-items-1">
			<input id="pulang-pergi" onclick="getResults(this)" type="radio" name="trip" value="return" checked="">
			<label for="pulang-pergi">Sebulan</label>
		</div>
		
		<div class="search-form-top-items-2">
			<input id="sekali-jalan" onclick="getResults(this)" type="radio" name="trip" value="return">
			<label for="sekali-jalan">Setahun</label>
		</div>
	</div>
	<div class="clear"></div>
	
	<div class="clearfix">
        <div class="left">
			<div class="input textarea">
				<select name="media" id="media">
					<?php
					echo "<option value='0' selected='selected'>-- Pilih media --</option>";
					$tampil=mysql_query("SELECT deskripsi,deskripsi FROM konten WHERE grup='media'");
					while($p=mysql_fetch_array($tampil)){
						echo "<option value='$p[deskripsi]'>$p[deskripsi]</option>";
					}
					?>
				</select>
			</div>
    	</div>
	</div>
	
	<div class="left">
		<div class="input text">
			<input name="pergi" size="18" type="text" id="pergi-inputField" placeholder="Awal"/>
			<img src="images/be_calendar.gif" id="pergi-trigger" style="margin-right:30px;">
			<script>
				Calendar.setup({
					trigger    : "pergi-trigger",
					inputField : "pergi-inputField"
				});
			</script>
			
			<div class="clear"></div>
		</div>
	</div>
	
	<div class="clear"></div>
	<div class="pp">
		<div class="input text">
			<input name="pulang" size="18" type="text" id="pulang-inputField" placeholder="Akhir"/>
			<img src="images/be_calendar.gif" id="pulang-trigger">
			<script>
				Calendar.setup({
					trigger    : "pulang-trigger",
					inputField : "pulang-inputField"
				});
			</script>
		</div>
	</div>
	
	<div class="clearfix">
        <div class="left">
			<div class="input text">
				<select name="dewasa" id="dewasa">
					<?php
					for($i=0;$i<=1;$i++){
						if($i==1){
							echo "<option value='$i' selected='selected'>$i Dewasa</option>";
						}
						else{
							echo "<option value='$i'>$i Dewasa</option>";
						}
					}
					?>
				</select>
			</div>
    	</div>
		
		<div class="left">
			<div class="input text">
				<select name="anak" id="anak">
					<?php
					for($i=0;$i<=1;$i++){
						echo "<option value='$i'>$i Anak</option>";
					}
					?>
				</select>
			</div>
    	</div>
		
		<div class="left">
			<div class="input text">
				<select name="bayi" id="bayi">
					<?php
					for($i=0;$i<=1;$i++){
						echo "<option value='$i'>$i Bayi</option>";
					}
					?>
				</select>
			</div>
    	</div>
	</div>
   
	<div class="clear"></div>
	<div class="submit"><input type="submit" value="Cari" name="cari"/></div></form>
</div>