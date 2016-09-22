<?php
if($_POST[cari]!=""){
	$_SESSION[tahap]	= 2;

	if ( ! isset($_SESSION['order']))
		$_SESSION['order'] = array();
	$_SESSION['order'] = array_merge($_SESSION['order'], $_POST);

	echo "<script>window.location = 'media.php?page=pemesanan&tahap=2'</script>";
}
?>

<?php var_dump($_SESSION['order']) ?>

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

function setHarga() {
	var type = document.getElementById('tipe').value;
	var jumlah = document.getElementById('jumlah').value;
	// alert(type);
	switch (type) {
		case 'platinum':
				var harga = 99000 * jumlah;
				document.getElementById('harga').value = 'Rp. '+harga+',-';
				document.getElementById('harga2').value = 'Rp. '+harga+',-';
				break;
		case 'silver':
				var harga = 30000 * jumlah;
				document.getElementById('harga').value = 'Rp. '+harga+',-';
				document.getElementById('harga2').value = 'Rp. '+harga+',-';
				break;
		case 'gold':
				var harga = 60000 * jumlah;
				document.getElementById('harga').value = 'Rp. '+harga+',-';
				document.getElementById('harga2').value = 'Rp. '+harga+',-';
				break;
		default:
				alert('Pilih tipe berlangganan terlebih dahulu');
				break;
	}
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


<div class="register form">
	<form name="form" action="<?php $_SERVER[PHP_SELF]; ?>" class="standard" method="post" onSubmit="return validasi(this)">

	<div class="search-form-top">
		<?php
		function is_set($session, $default){
			return isset($_SESSION[$session]) ? $_SESSION[$session] : $default;
		}

		function is_selected($session, $opt){
			echo $_SESSION[$session] == $opt ? "value='{$opt}' selected" : "value='{$opt}'" ;
		}
			$invoice = is_set('invoice', bin2hex(openssl_random_pseudo_bytes(6)));
		?>
		<h3>Invoice # <?php echo $invoice ?></h3>
		<input type="hidden" name="invoice" value="<?php echo $invoice?>">
	</div>

	<div class="clear"></div>

	<hr color='#c5a430' size='1'>

	<!-- Koran Utama -->
	<div class="clearfix" style="margin-top: 10px;margin-bottom:10px">
		<div style="width:20%; float: left">Koran Utama :</div>
		<div style="width:80%"><b>Riau Pos</b></div>
	</div>

	<div class="clear"></div>

	<!-- Koran Tambahan Pertama -->
	<div class="clearfix">
		<div class="input text"><label for="nama">Koran Tambahan Pertama</label>
			<select class="" name="koran_1" id="koran_1">
				<option>-Pilihan 1-</option>
				<option <?php is_selected('koran_1', 'kompas') ?>>Kompas</option>
				<option <?php is_selected('koran_1', 'analisa') ?>>Analisa</option>
				<option <?php is_selected('koran_1', 'posmetro') ?>>Pos Metro</option>
			</select>
		</div>
	</div>

	<div class="clear"></div>

	<!-- Koran Tambahan Kedua -->
	<div class="clearfix">
		<div class="input text"><label for="nama">Koran Tambahan Kedua</label>
			<select class="" name="koran_2" id="koran_2">
				<option value="">-Pilihan 2-</option>
				<option <?php is_selected('koran_2', 'kompas') ?>>Kompas</option>
				<option <?php is_selected('koran_2', 'analisa') ?>>Analisa</option>
				<option <?php is_selected('koran_2', 'posmetro') ?>>Pos Metro</option>
			</select>
		</div>
	</div>

	<div class="clear"></div>

	<div style="margin:10px">
		<font color="#cc0000">*</font>) Untuk order radar lain silahkan klik di <a href=#>sini</a>
	</div>

	<div class="clear"></div>

	<div class="clear"></div>
	<div class="submit"><input type="submit" value="Lanjutkan" name="cari"/></div></form>
</div>
