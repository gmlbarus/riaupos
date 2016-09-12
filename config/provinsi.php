<?php
require_once "koneksi.php";
$tampil=mysql_query("SELECT * FROM kota WHERE id_provinsi='$_GET[provinsi]' ORDER BY id_kota");
$jml=mysql_num_rows($tampil);
if($jml > 0){
    echo"<select name='kota'>
     <option value='0' selected>-- Pilih Kabupaten/Kota --</option>";
     while($r=mysql_fetch_array($tampil)){
         echo "<option value=$r[id_kota]>$r[nama]</option>";
     }
     echo "</select>";
}else{
    echo "<select name='kota'>
     <option value='0' selected>Tidak Ada Data</option
     </select>";
}

?>