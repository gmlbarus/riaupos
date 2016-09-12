<?php
		  $noinduk=$_POST['no_induk'];
	include ("config.php");
	$query = mysql_query("SELECT * From tb_murid Where no_induk='$noinduk'");
	$data = mysql_fetch_array($query);
	
	$query2 = mysql_query("SELECT * From tb_orangtua Where no_induk='$noinduk'");
	$data2 = mysql_fetch_array($query2);
	

?>
	<table width="600" align="center">
		<tr>
			<td width="200" align="center" valign="middle">&nbsp;</td>
		</tr>
		<tr>
			<td><div align="center"><br />
			  <br />
			  </div>
			  <p align="center"><strong>B U K U &nbsp;&nbsp;I N D U K &nbsp;&nbsp;M U R I D</strong><br><br>
		      Nomor Induk : <?php echo "$data[0]";?></p>
  <table align='center' width='601' cellspacing='6' cellpadding='4'>
    <tr>
      <td><strong>A.</strong></td>
      <td colspan='6'><strong>KETERANGAN MURID</strong></td>
    </tr>
    <tr>
      <td width='20'>&nbsp;</td>
      <td width='20'>1.</td>
      <td width='110'>Nama Murid</td>
      <td width='3'>:</td>
      <td width='117'>a. Lengkap</td>
      <td width='3'>:</td>
      <td width='238'><?php echo "$data[1]";?></td>
    </tr>
    <tr>
      <td>&nbsp;</td>
      <td>&nbsp;</td>
      <td>&nbsp;</td>
      <td>&nbsp;</td>
      <td>b. Panggilan</td>
      <td>:</td>
      <td><?php echo "$data[2]";?></td>
    </tr>
    <tr>
      <td>&nbsp;</td>
      <td>2</td>
      <td>Jenis Kelamin</td>
      <td>&nbsp;</td>
      <td>&nbsp;</td>
      <td>&nbsp;</td>
      <td><?php echo "$data[5]";?></td>
    </tr>
    <tr>
      <td>&nbsp;</td>
      <td>3</td>
      <td>Kelahiran</td>
      <td>:</td>
      <td>a. Tanggal</td>
      <td>:</td>
      <td><?php echo "$data[6]";?></td>
    </tr>
    <tr>
      <td>&nbsp;</td>
      <td>&nbsp;</td>
      <td>&nbsp;</td>
      <td>&nbsp;</td>
      <td>b. Tempat</td>
      <td>:</td>
      <td><?php echo "$data[7]";?></td>
      </tr>
    <tr>
      <td>&nbsp;</td>
      <td>4.</td>
      <td>Agama</td>
      <td>&nbsp;</td>
      <td>&nbsp;</td>
      <td>:</td>
      <td><?php echo "$data[8]";?></td>
    </tr>
    <tr>
      <td>&nbsp;</td>
      <td>5</td>
      <td>Kewarganegaraan</td>
      <td>&nbsp;</td>
      <td>&nbsp;</td>
      <td>:</td>
      <td><?php echo "$data[9]";?></td>
    </tr>
    <tr>
      <td colspan='7'>&nbsp;</td>
    </tr>
    <tr>
      <td>&nbsp;</td>
      <td>6</td>
      <td>Jumah Saudara</td>
      <td>:</td>
      <td>a. Kandung</td>
      <td>:</td>
      <td><?php echo "$data[10]";?></td>
    </tr>
    <tr>
      <td>&nbsp;</td>
      <td>&nbsp;</td>
      <td>&nbsp;</td>
      <td>&nbsp;</td>
      <td>b. Tiri</td>
      <td>:</td>
      <td><?php echo "$data[11]";?></td>
    </tr>
    <tr>
      <td>&nbsp;</td>
      <td>&nbsp;</td>
      <td>&nbsp;</td>
      <td>&nbsp;</td>
      <td>c. Angkat</td>
      <td>:</td>
      <td><?php echo "$data[12]";?></td>
    </tr>
    <tr>
      <td>&nbsp;</td>
      <td>7</td>
      <td colspan='3'>Bahasa sehari-hari di keluarga</td>
      <td>:</td>
      <td><?php echo "$data[13]";?></td>
    </tr>
    <tr>
      <td>&nbsp;</td>
      <td>8</td>
      <td>Keadaan Jasmani</td>
      <td>:</td>
      <td>a. Berat Badan</td>
      <td>:</td>
      <td><?php echo "$data[14]";?></td>
    </tr>
    <tr>
      <td>&nbsp;</td>
      <td>&nbsp;</td>
      <td>&nbsp;</td>
      <td>&nbsp;</td>
      <td>b. Tinggi Badan</td>
      <td>:</td>
      <td><?php echo "$data[15]";?></td>
    </tr>
    <tr>
      <td>&nbsp;</td>
      <td>&nbsp;</td>
      <td>&nbsp;</td>
      <td>&nbsp;</td>
      <td>c. Golongan Darah</td>
      <td>:</td>
      <td><?php echo "$data[16]";?></td>
    </tr>
    <tr>
      <td>&nbsp;</td>
      <td>9</td>
      <td colspan='3'>Alamat dan No. Telp</td>
      <td>:</td>
      <td><?php echo "$data[17]";?> Telp. <?php echo "$data[18]";?></td>
    </tr>
    <tr>
      <td>&nbsp;</td>
      <td>10.</td>
      <td colspan='3'>Bertempat tinggal pada</td>
      <td>:</td>
      <td><?php echo "$data[19]";?></td>
    </tr>
    <tr>
      <td>&nbsp;</td>
      <td>11.</td>
      <td colspan='3'>Jarak tempat tinggal ke sekolah</td>
      <td>:</td>
      <td><?php echo "$data[20]";?></td>
    </tr>
    <tr>
      <td>&nbsp;</td>
      <td>&nbsp;</td>
      <td>&nbsp;</td>
      <td>&nbsp;</td>
      <td>&nbsp;</td>
      <td>&nbsp;</td>
      <td>&nbsp;</td>
    </tr>
    <tr>
      <td><strong>B.</strong></td>
      <td colspan='6'><strong>KETERANGAN ORANG TUA / WALI MURID :</strong></td>
    </tr>
    <tr>
      <td>&nbsp;</td>
      <td>1.</td>
      <td colspan="3">Nama Orang Tua Kandung</td>
      <td>&nbsp;</td>
      <td>&nbsp;</td>
    </tr>
    <tr>
      <td>&nbsp;</td>
      <td>&nbsp;</td>
      <td>a. Nama</td>
      <td>&nbsp;</td>
      <td>a) Ayah</td>
      <td>:</td>
      <td><?php echo "$data2[1]";?></td>
    </tr>
    <tr>
      <td>&nbsp;</td>
      <td>&nbsp;</td>
      <td>&nbsp;</td>
      <td>&nbsp;</td>
      <td>b) Ibu</td>
      <td>:</td>
      <td><?php echo "$data2[2]";?></td>
    </tr>
    <tr>
      <td>&nbsp;</td>
      <td>&nbsp;</td>
      <td colspan="3">b. Pendidkan tertinggi</td>
      <td>&nbsp;</td>
      <td>&nbsp;</td>
    </tr>
    <tr>
      <td>&nbsp;</td>
      <td>&nbsp;</td>
      <td>&nbsp;</td>
      <td>&nbsp;</td>
      <td>a) Ayah</td>
      <td>:</td>
      <td><?php echo "$data2[3]";?></td>
    </tr>
    <tr>
      <td>&nbsp;</td>
      <td>&nbsp;</td>
      <td>&nbsp;</td>
      <td>&nbsp;</td>
      <td>b) Ibu</td>
      <td>:</td>
      <td><?php echo "$data2[4]";?></td>
    </tr>
    <tr>
      <td>&nbsp;</td>
      <td>&nbsp;</td>
      <td>c. Pekerjaan</td>
      <td>&nbsp;</td>
      <td>&nbsp;</td>
      <td>&nbsp;</td>
      <td>&nbsp;</td>
    </tr>
    <tr>
      <td>&nbsp;</td>
      <td>&nbsp;</td>
      <td>&nbsp;</td>
      <td>&nbsp;</td>
      <td>a) Ayah</td>
      <td>:</td>
      <td><?php echo "$data2[5]";?></td>
    </tr>
    <tr>
      <td>&nbsp;</td>
      <td>&nbsp;</td>
      <td>&nbsp;</td>
      <td>&nbsp;</td>
      <td>b) Ibu</td>
      <td>:</td>
      <td><?php echo "$data2[6]";?></td>
    </tr>
    <tr>
      <td>&nbsp;</td>
      <td>&nbsp;</td>
      <td colspan="3">d. Wali murid (jika mempunyai)</td>
      <td>&nbsp;</td>
      <td>&nbsp;</td>
    </tr>
    <tr>
      <td>&nbsp;</td>
      <td>&nbsp;</td>
      <td>&nbsp;&nbsp;&nbsp;&nbsp;Nama</td>
      <td>&nbsp;</td>
      <td>&nbsp;</td>
      <td>:</td>
      <td><?php echo "$data2[7]";?></td>
    </tr>
    <tr>
      <td>&nbsp;</td>
      <td>&nbsp;</td>
      <td colspan="3">&nbsp;&nbsp;&nbsp;&nbsp;1. Hubungan Keluarga</td>
      <td>:</td>
      <td><?php echo "$data2[8]";?></td>
    </tr>
    <tr>
      <td>&nbsp;</td>
      <td>&nbsp;</td>
      <td colspan="3">&nbsp;&nbsp;&nbsp;&nbsp;2. Pendidikan Tertinggi</td>
      <td>:</td>
      <td><?php echo "$data2[9]";?></td>
    </tr>
    <tr>
      <td>&nbsp;</td>
      <td>&nbsp;</td>
      <td colspan="3">&nbsp;&nbsp;&nbsp;&nbsp;3. Pekerjaan / Jabatan</td>
      <td>:</td>
      <td><?php echo "$data2[10]";?></td>
    </tr>
    <tr>
      <td>&nbsp;</td>
      <td>&nbsp;</td>
      <td colspan="3">&nbsp;</td>
      <td>&nbsp;</td>
      <td>&nbsp;</td>
    </tr>
    <tr>
      <td>C.</td>
      <td colspan="6">PERKEMBANGAN MURID</td>
      </tr>
    <tr>
      <td>&nbsp;</td>
      <td>1.</td>
      <td colspan="3">Pendidikan Sebelumnya :</td>
      <td>&nbsp;</td>
      <td>&nbsp;</td>
    </tr>
    <tr>
      <td>&nbsp;</td>
      <td>&nbsp;</td>
      <td colspan="3">A. Masuk menjadi murid baru tingkat I</td>
      <td>&nbsp;</td>
      <td>&nbsp;</td>
    </tr>
    <tr>
      <td>&nbsp;</td>
      <td>&nbsp;</td>
      <td colspan="3">&nbsp;&nbsp;&nbsp;&nbsp;a. Asal murid</td>
      <td>&nbsp;</td>
      <td>&nbsp;</td>
    </tr>
    <tr>
      <td>&nbsp;</td>
      <td>&nbsp;</td>
      <td colspan="3">&nbsp;&nbsp;&nbsp;&nbsp;b. Nama Taman Kanak-kanak</td>
      <td>&nbsp;</td>
      <td>&nbsp;</td>
    </tr>
    <tr>
      <td>&nbsp;</td>
      <td>&nbsp;</td>
      <td colspan="3">&nbsp;&nbsp;&nbsp;&nbsp;c. Alamat</td>
      <td>&nbsp;</td>
      <td>&nbsp;</td>
    </tr>
    <tr>
      <td>&nbsp;</td>
      <td>&nbsp;</td>
      <td colspan="3">&nbsp;&nbsp;&nbsp;&nbsp;d. Tanggal dan Nomor STTB</td>
      <td>&nbsp;</td>
      <td>&nbsp;</td>
    </tr>
    <tr>
      <td>&nbsp;</td>
      <td>&nbsp;</td>
      <td colspan="3">B. Pindahan dari sekolah lain</td>
      <td>&nbsp;</td>
      <td>&nbsp;</td>
    </tr>
    <tr>
      <td>&nbsp;</td>
      <td>&nbsp;</td>
      <td colspan="3">&nbsp;&nbsp;&nbsp;&nbsp;a. Nama Sekolah lain</td>
      <td>&nbsp;</td>
      <td>&nbsp;</td>
    </tr>
    <tr>
      <td>&nbsp;</td>
      <td>&nbsp;</td>
      <td colspan="3">&nbsp;&nbsp;&nbsp;&nbsp;b. Dari tingkat</td>
      <td>&nbsp;</td>
      <td>&nbsp;</td>
    </tr>
    <tr>
      <td>&nbsp;</td>
      <td>&nbsp;</td>
      <td colspan="3">&nbsp;&nbsp;&nbsp;&nbsp;c. Diterima tinggal</td>
      <td>&nbsp;</td>
      <td>&nbsp;</td>
    </tr>
    <tr>
      <td>&nbsp;</td>
      <td>&nbsp;</td>
      <td colspan="3">&nbsp;&nbsp;&nbsp;&nbsp;d. Ditingkat</td>
      <td>&nbsp;</td>
      <td>&nbsp;</td>
    </tr>
    <tr>
      <td>&nbsp;</td>
      <td>&nbsp;</td>
      <td colspan="3">&nbsp;</td>
      <td>&nbsp;</td>
      <td>&nbsp;</td>
    </tr>
  </table>
  <p>&nbsp;</p>

			  
		  </td>
		</tr>
	</table>
	