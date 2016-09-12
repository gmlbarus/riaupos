<page backtop="10mm" backbottom="10mm" backleft="20mm" backright="20mm">
    <page_header>
        <table border=0>
            <tr align='right'>
                <td style="text-align: right;    width: 33%"><?php echo date('d/m/Y'); ?></td>
            </tr>
        </table>
  </page_header>
  <page_footer></page_footer>
  <br>
    
    
    <?php
	$noinduk=9111;
	include ("config.php");
	$query = mysql_query("SELECT * From tb_murid Where no_induk='$noinduk'");
	$data = mysql_fetch_array($query);
	
	$query2 = mysql_query("SELECT * From tb_orangtua Where no_induk='$noinduk'");
	$data2 = mysql_fetch_array($query2);
	
	$query3 = mysql_query("SELECT * From tb_perkembangan_murid Where no_induk='$noinduk'");
	$data3 = mysql_fetch_array($query3);
	

	
	$q1 = mysql_query("SELECT * From tb_nilai WHERE no_induk='$noinduk' AND kode_pelajaran='MP01'");
	$nilai1 = mysql_fetch_array($q1);
	
	$q2 = mysql_query("SELECT * From tb_nilai WHERE no_induk='$noinduk' AND kode_pelajaran='MP02'");
	$nilai2 = mysql_fetch_array($q2);
	
	$q3 = mysql_query("SELECT * From tb_nilai WHERE no_induk='$noinduk' AND kode_pelajaran='MP03'");
	$nilai3 = mysql_fetch_array($q3);
	
	$q4 = mysql_query("SELECT * From tb_nilai WHERE no_induk='$noinduk' AND kode_pelajaran='MP04'");
	$nilai4 = mysql_fetch_array($q4);
	
	$q5 = mysql_query("SELECT * From tb_nilai WHERE no_induk='$noinduk' AND kode_pelajaran='MP05'");
	$nilai5 = mysql_fetch_array($q5);
	
	$q6 = mysql_query("SELECT * From tb_nilai WHERE no_induk='$noinduk' AND kode_pelajaran='MP06'");
	$nilai6 = mysql_fetch_array($q6);
	
	$q7 = mysql_query("SELECT * From tb_nilai WHERE no_induk='$noinduk' AND kode_pelajaran='MP07'");
	$nilai7 = mysql_fetch_array($q7);
	
	$q8 = mysql_query("SELECT * From tb_nilai WHERE no_induk='$noinduk' AND kode_pelajaran='MP08'");
	$nilai8 = mysql_fetch_array($q8);
	
	$q9 = mysql_query("SELECT * From tb_nilai WHERE no_induk='$noinduk' AND kode_pelajaran='MP09'");
	$nilai9 = mysql_fetch_array($q9);
	
	$q10 = mysql_query("SELECT * From tb_nilai WHERE no_induk='$noinduk' AND kode_pelajaran='MP10'");
	$nilai10 = mysql_fetch_array($q10);
	
	$q11 = mysql_query("SELECT * From tb_nilai WHERE no_induk='$noinduk' AND kode_pelajaran='MP11'");
	$nilai11 = mysql_fetch_array($q11);
	
	$q12 = mysql_query("SELECT * From tb_nilai WHERE no_induk='$noinduk' AND kode_pelajaran='MP12'");
	$nilai12 = mysql_fetch_array($q12);
	
	
		$q13 = mysql_query("SELECT * From tb_transaksi_nilai WHERE no_induk='$noinduk'");
	$nilai13 = mysql_fetch_array($q13);
	

?>
  
  <p align="center"><strong> BUKU &nbsp;&nbsp;&nbsp;&nbsp;INDUK &nbsp;&nbsp;&nbsp;&nbsp;MURID</strong><br>
    <br>
		      Nomor Induk : <?php echo "$data[0]";?></p>
  <table align='center' width='601' cellspacing='9' cellpadding='7'>
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
      <td>&nbsp;</td>
      <td>&nbsp;</td>
      <td colspan="3">&nbsp;</td>
      <td>&nbsp;</td>
      <td>&nbsp;</td>
    </tr>
    <tr>
      <td><strong>C.</strong></td>
      <td colspan="6"><strong>PERKEMBANGAN MURID</strong></td>
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
      <td>:</td>
      <td><?php echo "$data3[1]";?></td>
    </tr>
    <tr>
      <td>&nbsp;</td>
      <td>&nbsp;</td>
      <td colspan="3">&nbsp;&nbsp;&nbsp;&nbsp;b. Nama Taman Kanak-kanak</td>
      <td>:</td>
      <td><?php echo "$data3[2]";?></td>
    </tr>
    <tr>
      <td>&nbsp;</td>
      <td>&nbsp;</td>
      <td colspan="3">&nbsp;&nbsp;&nbsp;&nbsp;c. Alamat</td>
      <td>:</td>
      <td><?php echo "$data3[3]";?></td>
    </tr>
    <tr>
      <td>&nbsp;</td>
      <td>&nbsp;</td>
      <td colspan="3">&nbsp;&nbsp;&nbsp;&nbsp;d. Tanggal dan Nomor STTB</td>
      <td>:</td>
      <td><?php echo "$data3[4]";?></td>
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
      <td>:</td>
      <td><?php echo "$data3[5]";?></td>
    </tr>
    <tr>
      <td>&nbsp;</td>
      <td>&nbsp;</td>
      <td colspan="3">&nbsp;&nbsp;&nbsp;&nbsp;b. Dari tingkat</td>
      <td>:</td>
      <td><?php echo "$data3[6]";?></td>
    </tr>
    <tr>
      <td>&nbsp;</td>
      <td>&nbsp;</td>
      <td colspan="3">&nbsp;&nbsp;&nbsp;&nbsp;c. Diterima tinggal</td>
      <td>:</td>
      <td><?php echo "$data3[7]";?></td>
    </tr>
    <tr>
      <td>&nbsp;</td>
      <td>&nbsp;</td>
      <td colspan="3">&nbsp;&nbsp;&nbsp;&nbsp;d. Ditingkat</td>
      <td>:</td>
      <td><?php echo "$data3[8]";?></td>
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
  <table width="400" border="1" align='center'>
    <tr>
      <td rowspan="2"><strong>No.</strong></td>
      <td rowspan="2"><strong>Mata Pelajaran</strong></td>
      <td rowspan="2"><strong>KKM</strong></td>
      <td colspan="4"><p><strong>Kelas :</strong> </p></td>
    </tr>
    <tr>
      <td><strong>PHB</strong></td>
      <td><strong>RK</strong></td>
      <td><strong>PHB</strong></td>
      <td><strong>RK</strong></td>
    </tr>
    <tr>
      <td>1</td>
      <td>Pendidikan Agama</td>
      <td><?php echo "$nilai1[0]";?></td>
      <td><?php echo "$nilai1[1]";?></td>
      <td><?php echo "$nilai1[2]";?></td>
      <td><?php echo "$nilai1[3]";?></td>
      <td><?php echo "$nilai1[4]";?></td>
    </tr>
    <tr>
      <td>2</td>
      <td>Pendidikan Kewarganegaraan</td>
      <td><?php echo "$nilai2[0]";?></td>
      <td><?php echo "$nilai2[1]";?></td>
      <td><?php echo "$nilai2[2]";?></td>
      <td><?php echo "$nilai2[3]";?></td>
      <td><?php echo "$nilai2[4]";?></td>
    </tr>
    <tr>
      <td>3</td>
      <td>Bahasa Indonesia</td>
      <td><?php echo "$nilai3[0]";?></td>
      <td><?php echo "$nilai3[1]";?></td>
      <td><?php echo "$nilai3[2]";?></td>
      <td><?php echo "$nilai3[3]";?></td>
      <td><?php echo "$nilai3[4]";?></td>
    </tr>
    <tr>
      <td>4</td>
      <td>Matematika</td>
      <td><?php echo "$nilai4[0]";?></td>
      <td><?php echo "$nilai4[1]";?></td>
      <td><?php echo "$nilai4[2]";?></td>
      <td><?php echo "$nilai4[3]";?></td>
      <td><?php echo "$nilai4[4]";?></td>
    </tr>
    <tr>
      <td>5</td>
      <td>Pengetahuan Alam</td>
      <td><?php echo "$nilai5[0]";?></td>
      <td><?php echo "$nilai5[1]";?></td>
      <td><?php echo "$nilai5[2]";?></td>
      <td><?php echo "$nilai5[3]";?></td>
      <td><?php echo "$nilai5[4]";?></td>
    </tr>
    <tr>
      <td>6</td>
      <td>Pengetahuan Sosial</td>
      <td><?php echo "$nilai6[0]";?></td>
      <td><?php echo "$nilai6[1]";?></td>
      <td><?php echo "$nilai6[2]";?></td>
      <td><?php echo "$nilai6[3]";?></td>
      <td><?php echo "$nilai6[4]";?></td>
    </tr>
    <tr>
      <td>7</td>
      <td>KTK</td>
      <td><?php echo "$nilai7[0]";?></td>
      <td><?php echo "$nilai7[1]";?></td>
      <td><?php echo "$nilai7[2]";?></td>
      <td><?php echo "$nilai7[3]";?></td>
      <td><?php echo "$nilai7[4]";?></td>
    </tr>
    <tr>
      <td>8</td>
      <td>Pendidikan Jasmani</td>
      <td><?php echo "$nilai8[0]";?></td>
      <td><?php echo "$nilai8[1]";?></td>
      <td><?php echo "$nilai8[2]";?></td>
      <td><?php echo "$nilai8[3]";?></td>
      <td><?php echo "$nilai8[4]";?></td>
    </tr>
    <tr>
      <td>&nbsp;</td>
      <td rowspan="4">Muatan Lokal</td>
      <td><?php echo "$nilai9[0]";?></td>
      <td><?php echo "$nilai9[1]";?></td>
      <td><?php echo "$nilai9[2]";?></td>
      <td><?php echo "$nilai9[3]";?></td>
      <td><?php echo "$nilai9[4]";?></td>
    </tr>
    <tr>
      <td>&nbsp;</td>
      <td><?php echo "$nilai10[0]";?></td>
      <td><?php echo "$nilai10[1]";?></td>
      <td><?php echo "$nilai10[2]";?></td>
      <td><?php echo "$nilai10[3]";?></td>
      <td><?php echo "$nilai10[4]";?></td>
    </tr>
    <tr>
      <td>&nbsp;</td>
      <td><?php echo "$nilai11[0]";?></td>
      <td><?php echo "$nilai11[1]";?></td>
      <td><?php echo "$nilai11[2]";?></td>
      <td><?php echo "$nilai11[3]";?></td>
      <td><?php echo "$nilai11[4]";?></td>
    </tr>
    <tr>
      <td>&nbsp;</td>
      <td><?php echo "$nilai12[0]";?></td>
      <td><?php echo "$nilai12[1]";?></td>
      <td><?php echo "$nilai12[2]";?></td>
      <td><?php echo "$nilai12[3]";?></td>
      <td><?php echo "$nilai12[4]";?></td>
    </tr>
    <tr>
      <td>&nbsp;</td>
      <td>Jumlah Nilai PHB</td>
      <td>&nbsp;</td>
      <td><?php echo "$nilai13[3]";?></td>
      <td>&nbsp;</td>
      <td><?php echo "$nilai13[4]";?></td>
      <td>&nbsp;</td>
    </tr>
    <tr>
      <td>&nbsp;</td>
      <td>Nilai rata-rata</td>
      <td>&nbsp;</td>
      <td>&nbsp;</td>
      <td><?php echo "$nilai13[1]";?></td>
      <td>&nbsp;</td>
      <td><?php echo "$nilai13[2]";?></td>
    </tr>
  </table>
</page>
