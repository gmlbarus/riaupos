<?php
if ( ! isset($_GET['act'])) {
  # code...
  echo "<h2>Data Pelanggan</h2>
   	  <input type=button class=tombol value='Tambah Data' onclick=location.href='?module=pelanggan&act=tambah'>
  	  <table>
  	  <tr><th>No</th><th>Nama</th><th>Tanggal Lahir</th><th>Alamat</th><th>Email</th><th>No. HP</th><th>Tanggal Registrasi</th></tr>";

  $p      = new Paging;
  $batas  = 10;
  $posisi = $p->cariPosisi($batas);

  $tampil=mysql_query("select p.*, pr.nama as provinsi, k.nama as kota
  from profil p
  inner join provinsi pr on p.id_provinsi=pr.id_provinsi
  inner join kota k on p.id_kota=k.id_kota
  order by p.tgl_input DESC LIMIT $posisi, $batas");

  $no = $posisi+1;
  while ($r=mysql_fetch_array($tampil)){
    $tgl_lahir = tgl_indo($r[tgl_lahir]);
    $tgl_reg 	 = tgl_indo($r[tgl_input]);

    echo "<tr><td>$no</td>
  			<td>$r[nama]</td>
  			<td>$tgl_lahir</td>
  			<td>$r[alamat] <br>Kota : $r[kota]<br>Provinsi : $r[provinsi]<br>Kode Pos : $r[kode_pos]</td>
  			<td>$r[email]</td>
  			<td>$r[hp]</td>
  			<td>$tgl_reg</a></td></tr>";

  $no++;
  }
  echo "</table>";
  $jmldata=mysql_num_rows(mysql_query("SELECT * FROM hasil_polling"));
  $jmlhalaman  = $p->jumlahHalaman($jmldata, $batas);
  $linkHalaman = $p->navHalaman($_GET[halaman], $jmlhalaman);

  echo "<div id=paging>Hal: $linkHalaman</div><br>";

}
else if ($_GET['act'] == 'tambah'){
  ?>
  <h1>Registrasi</h1>
  <hr color='#000000' size='1'>

  <div class="register form">
  	<form name="form" action="<?php $_SERVER[PHP_SELF]; ?>" class="standard" method="post" onSubmit="return validasi(this)">
  	<h3>Informasi Login</h3>
  	<hr color="#000000" size="1">
  	<div class="clearfix">
  		<div class="left">
      		<div class="input email"><label for="email">Email : &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp: </label><input name="email" size="40" required="required" type="email" id="UserEmail"/></div>
      	</div>
  		<div class="clear"></div>
  		<div class="left">
      		<div class="input password"><label for="password_1">Password &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp : </label><input name="password_1" size="40" required="required" type="password" id="password_1"/></div>
      	</div>
  		<div class="clear"></div>
  		<div class="left">
      		<div class="input password"><label for="password_2">Ulangi Password &nbsp &nbsp &nbsp: </label><input name="password_2" size="40" required="required" type="password" id="password_2"/></div>
  		</div>

      </div>
  	<div class='div-shadow'></div>


  	<h3>Data Pribadi</h3>
  	<hr color="#000000" size="1">

  	<div class="input text"><label for="nama">Nama &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp: </label><input name="nama" required="required" size="64" maxlength="125" type="text" id="nama"/></div>

  	<div class="clearfix">
  		<div class="left">
          	<div class="input date"><label for="tanggal_lahir">Tanggal Lahir &nbsp &nbsp &nbsp &nbsp &nbsp:</label>
              	<?php
  				combotgl(1,31,'tgl_lahir',$tgl_skrg);
            		combonamabln(1,12,'bln_lahir',$bln_sekarang);
            		combothn(1900,$thn_sekarang,'thn_lahir',$thn_sekarang-16);
  				?>
  			</div>
  		</div>
  	</div>

  	<div class="input textarea"><label for="negara">Provinsi &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp :</label>
      	<select name="provinsi" id="provinsi">
  			<?php
  			echo "<option value='0' selected='selected'>-- Pilih Provinsi --</option>";
  			$tampil=mysql_query("SELECT * FROM provinsi ORDER BY id_provinsi");
            	while($r=mysql_fetch_array($tampil)){
  				echo "<option value='$r[id_provinsi]'>$r[nama]</option>";
            	}
  			?>
          </select>
      </div>

  	<div class="input text"><label for="kota">Kabupaten / Kota &nbsp &nbsp:</label>
      	<select name="kota" id="kota">
          	<option>Tidak Ada Data</option>
          </select>
      </div>
  	<div class="input textarea"><label for="alamat">Alamat &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp : </label><textarea name="alamat" required="required" style="height:50px" cols="30" rows="6" id="alamat"></textarea></div>

  	<div class="input text"><div class="input text"><label for="kode_pos">Kode Pos &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp : </label><input name="kode_pos" required="required" maxlength="5" type="text" id="kode_pos" onKeyPress="return goodchars(event,'1234567890',this)"/></div></div>

  	<div class="input text"><div class="input text"><label for="telepon">Nomor Telepon &nbsp &nbsp &nbsp &nbsp: </label><input name="telepon" required="required" maxlength="14" type="text" id="telepon" onKeyPress="return goodchars(event,'1234567890+',this)"/></div></div>

  	<div class="clear"></div>
      <div class='div-shadow'></div>
        <div colspan=2><input type=submit class='tombol' value=Register name="registrasi"></div></from>
  </div>




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
  			url: '../config/provinsi.php',
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
  <?php
}
if($_POST[registrasi]!=""){
	$tgl_lahir 	= $_POST[thn_lahir].'-'.$_POST[bln_lahir].'-'.$_POST[tgl_lahir];
	$telepon	= right(mysql_real_escape_string($_POST[telepon]), strlen(mysql_real_escape_string($_POST[telepon]))-3);

	$r = mysql_fetch_array(mysql_query("SELECT * from profil
										WHERE email='".mysql_real_escape_string($_POST[email])."'
										OR hp LIKE '%$telepon'"));

	if($r[email]==$_POST[email]){
		echo '
		<div id="status_message" class="status_error">Email ini sudah teregistrasi. Silakan masukkan data anda dengan benar</div>';
	}
	elseif(right(mysql_real_escape_string($r[hp]), strlen(mysql_real_escape_string($r[hp]))-3)==right(mysql_real_escape_string($_POST[telepon]), strlen(mysql_real_escape_string($_POST[telepon]))-3)){
		echo '
		<div id="status_message" class="status_error">Nomor Telepon ini sudah teregistrasi. Silakan masukkan data anda dengan benar</div>';
	}
	else{
		$query 	= mysql_query("INSERT INTO profil(nama,tgl_lahir,alamat,id_provinsi,id_kota,kode_pos,email,hp,tgl_input)
							VALUES (
							'".mysql_real_escape_string($_POST[nama])."',
							'".mysql_real_escape_string($tgl_lahir)."',
							'".mysql_real_escape_string($_POST[alamat])."',
							'".mysql_real_escape_string($_POST[provinsi])."',
							'".mysql_real_escape_string($_POST[kota])."',
							'".mysql_real_escape_string($_POST[kode_pos])."',
							'".mysql_real_escape_string($_POST[email])."',
							'".mysql_real_escape_string($_POST[telepon])."',
							now())");

		$query1	= mysql_query("INSERT INTO login(username,pass,grup,status)
							VALUES (
							'".mysql_real_escape_string($_POST[email])."',
							md5('".mysql_real_escape_string($_POST[password_1])."'),
							'".'2'."',
							'Y')");

		if($query && $query1){
			echo "<script>alert('Data telah tersimpan');</script>";
		}
		else{
			echo "<script>alert('Gagal menyimpan data')</script>";
		}
	}
}
