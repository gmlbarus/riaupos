<h1>Simulasi </h1>
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
    function hitungHarga(){
      var nominal = document.getElementById("nominal").value;
      if (isNaN(nominal)){
        alert("Nominal tidak valid. Silakan masukkan bilangan");
      }
      else{
				<?php
				$query = "SELECT * FROM `tarif` LIMIT 1";
				$res = mysql_query($query);
				$r = mysql_fetch_array($res);
				?>
				var satuan = <?php echo $r[satuan] ?>;
				var bulanan = <?php echo $r[sebulan] ?>;
				var tahunan = <?php echo $r[setahun] ?>;
        var eksemplar = Math.floor(nominal / satuan);
        var langganan = Math.floor(nominal / bulanan);
        document.getElementById("jumlah_eksemplar").innerHTML = eksemplar;
        document.getElementById("jumlah_langganan").innerHTML = langganan;
      }

    }
    </script>

<br \> <br \> <br \> <br \>
<h2>SMS Gateway</h2>
<hr color='#000000' size='0'>

	<div class="register form">

		<form class="standard" action="" method="POST">
		<div class="clearfix">
		<p> <b> o Registrasi Member. </b> </p>
		<p><spasi> #REGISTRASI,email,password,ulangi password,nama,tanggal lahir,provinsi,Kabupaten/kota, alamat, kode pos, nomor telepon<br \>
			Contoh : #Registrasi abcd@gmail.com,emailku,emailku,budi,11051994, Prov.Riau, Kab.Siak, Perawang, 28772, 085265904015 <br \>
			Kirim ke : 08xxxxxxxxxx </spasi></p><br \>

		<p> <b> o Informasi. </b> </p>
		<p> #INFO_AGEN<br \>
		<p> #INFO_REKENING PEMBAYARAN<br \>
		<p> #INFO_LOGIN_EMAIL<br \>
		<p> #INFO_FAQ<br \>
		<p> #INFO_TARIF & JADWAL<br \>
		<p> #INFO_AGEN<br \>
		<p> #INFO_PROMO<br \>
		<p> #INFO_ORDER_INVOICE<br \>
			Kirim ke : 08xxxxxxxxxx </spasi></p><br \>

		<p> <b> o Jawab Polling. </b> </p>
		<p> #JAWABPOLLING_Jawaban<br \>
			Contoh : #JAWABPOLLING_8<br \>
			Kirim ke : 08xxxxxxxxxx </spasi></p><br \>

		<p> <b> o Saran Kritik. </b> </p>
		<p> #SARAN / KRITIK_Pesan <br \>
			Contoh : #SARAN / KRITIK_Maksimalkan Lagi.<br \>
			Kirim ke : 08xxxxxxxxxx </spasi></p><br \>
