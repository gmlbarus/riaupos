<h1>Simulasi Pemesanan</h1>
<hr color='#000000' size='1'>

	<div class="register form">

		<form class="standard" action="" method="POST">
		<div class="clearfix">


		<!-- Status Pembayaran -->
		<div class="clearfix" style="margin-top: 10px;margin-bottom:10px">
			<div style="width:30%; float: left; padding-top: 8px">Jumlah Nominal Uang</div>
      <input style="allign:left " placeholder="Rp." id="nominal" oninput="hitungHarga()">
		</div>

				<div class="clear"></div>

		<!-- Total yang harus dibayar -->
		<div class="clearfix" style="padding:15px; background-color:#125e9d">
      <div style="width:40%; float: left;"><b style="color:#fefffc">Anda dapat memperoleh koran</b></div>
			<div style="width:60%"><b id="jumlah_eksemplar" style="color:#fefffc">0</b><b style="color:#fefffc"> eksemplar</b></div>
      <div style="width:40%; float: left;"><b style="color:#fefffc">Atau, berlangganan untuk</b></div>
			<div style="width:60%"><b id="jumlah_langganan" style="color:#fefffc">0</b><b style="color:#fefffc"> bulan</b></div>
		</div>

    <script>
    Number.prototype.format = function(n, x) {
    var re = '\\d(?=(\\d{' + (x || 3) + '})+' + (n > 0 ? '\\.' : '$') + ')';
    return this.toFixed(Math.max(0, ~~n)).replace(new RegExp(re, 'g'), '$&,');
};

    function hitungHarga(){
      var nominal = document.getElementById("nominal").value;
      if (isNaN(nominal)){
        alert("Nominal tidak valid. Silakan masukkan bilangan");
      }
      else{
        var eksemplar = Math.floor(nominal / 3500);
        var langganan = Math.floor(nominal / 79000);
        document.getElementById("jumlah_eksemplar").innerHTML = eksemplar;
        document.getElementById("jumlah_langganan").innerHTML = langganan;
        // alert(langganan);
      }

    }
    </script>
