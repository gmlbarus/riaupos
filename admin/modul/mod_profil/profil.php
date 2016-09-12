<?php
$aksi="modul/mod_profil/aksi.php";
switch($_GET[act]){
  // Tampil Profil
  default:
    $sql  = mysql_query("SELECT * FROM konten WHERE grup='profil'");
    $r    = mysql_fetch_array($sql);

    echo "<h2>Edit Profil</h2>
          <form method=POST enctype='multipart/form-data' action=$aksi?module=profil&act=update>
          <input type=hidden name=id value=$r[id_konten]>
          <table>
      
         <tr><td><textarea name='isi' style='width: 600px; height: 200px;'>$r[deskripsi]</textarea></td></tr>
         <tr><td><input type=submit class=tombol value=Update></td></tr>
         </form></table>";
    break;  
}
?>
