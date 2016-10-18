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
		echo "<script>alert('Data anda telah kami terima. Terima kasih');</script>";
	}
	else{
		echo "<script>alert('Gagal mengirim data');</script>";
	}
}

$aksi="modul/mod_saran-kritik/aksi.php";
switch($_GET[act]){
  default:
    echo "<h2>Saran dan Kritik</h2>
          <input type=button class=tombol value='Tambah Data' onclick=location.href='?module=saran-kritik&act=tambah'>
          <table>
          <tr><th>No</th><th>Nama</th><th>Email</th><th>Tipe</th><th>Pesan</th><th>Tanggal Masuk</th></tr>";

    $p      = new Paging;
    $batas  = 10;
    $posisi = $p->cariPosisi($batas);

    $tampil=mysql_query("SELECT * FROM hubungi ORDER BY id_hubungi DESC LIMIT $posisi, $batas");

    $no = $posisi+1;
    while ($r=mysql_fetch_array($tampil)){
      $tgl=tgl_indo($r[tgl_input]);
      echo "<tr><td>$no</td>
                <td>$r[nama]</td>
                <td><a href='?module=saran-kritik&act=balasemail&id=$r[id_hubungi]' title='Balas email'>$r[email]</a></td>
                <td>$r[tipe]</td>
				<td>$r[pesan]</td>
                <td>$tgl</a></td></tr>";

    $no++;
    }
    echo "</table>";
    $jmldata=mysql_num_rows(mysql_query("SELECT * FROM hubungi"));
    $jmlhalaman  = $p->jumlahHalaman($jmldata, $batas);
    $linkHalaman = $p->navHalaman($_GET[halaman], $jmlhalaman);

    echo "<div id=paging>Hal: $linkHalaman</div><br>";
    break;

  case "balasemail":
    $tampil = mysql_query("SELECT * FROM hubungi WHERE id_hubungi='$_GET[id]'");
    $r      = mysql_fetch_array($tampil);

    echo "<h2>Balas Email</h2>
          <form method=POST action='?module=saran-kritik&act=kirimemail'>
          <table>
          <tr><td>Kepada</td><td> : <input type=text name='email' size=30 value='$r[email]'></td></tr>
          <tr><td>Subjek</td><td> : <input type=text name='subjek' size=50 value='Re: $r[subjek]'></td></tr>
          <tr><td>Pesan</td><td> <textarea name='pesan' style='width: 600px; height: 350px;'><br><br><br><br>
  ----------------------------------------------------------------------------------------------------------------------
  $r[pesan]</textarea></td></tr>
          <tr><td colspan=2><input type=submit value=Kirim>
                            <input type=button value=Batal onclick=self.history.back()></td></tr>
          </table></form>";
     break;

  case "kirimemail":
    mail($_POST[email],$_POST[subjek],$_POST[pesan],"From: no-reply@basyenk.info");
    echo "<h2>Status Email</h2>
          <p>Email telah sukses terkirim ke tujuan</p>
          <p>[ <a href=javascript:history.go(-2)>Kembali</a> ]</p>";
    break;

  case "tambah":
      ?>
      <h1>Saran dan Kritik</h1>
      <hr color='#000000' size='1'>

      <div class="register form">
      	<form name="form" action="<?php $_SERVER[PHP_SELF]; ?>" class="standard" method="post" onSubmit="return validasi(this)">

      	<div class="input textarea"><label for="negara">Tipe &nbsp &nbsp &nbsp &nbsp &nbsp : </label>
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

      	<div class="input text"><label for="nama">Nama &nbsp &nbsp &nbsp &nbsp : </label><input name="nama" required="required" size="30" type="text" id="nama"/></div>

          <div class="input email"><label for="email">Email &nbsp &nbsp &nbsp &nbsp &nbsp: </label><input name="email" size="30" required="required" type="email" id="UserEmail"/></div>

      	<div class="input textarea"><label for="pesan">Pesan &nbsp &nbsp &nbsp &nbsp : </label><textarea name="pesan" required="required" style="height:50px" cols="30" rows="6" id="pesan"></textarea></div>

      	<div class="clear"></div>
        <div colspan=2><input type=submit class=submit value=Kirim name="kirim"/></div></form>





      </script>
      <?php
      break;
}
?>
