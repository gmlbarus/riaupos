<?php
include "../config/koneksi.php";
function antiinjection($data){
  $filter_sql = mysql_real_escape_string(stripslashes(strip_tags(htmlspecialchars($data,ENT_QUOTES))));
  return $filter_sql;
}

$username = antiinjection($_POST['username']);
$pass     = antiinjection(md5($_POST['password']));

$login=mysql_query("SELECT * FROM login WHERE grup NOT LIKE 2 AND username='$username' AND pass='$pass'");
$ketemu=mysql_num_rows($login);
$r=mysql_fetch_array($login);

// Apabila username dan password ditemukan
if ($ketemu > 0){
  session_start();
  session_start('namauser');
  session_start('passuser');
  session_start('leveluser');

  $_SESSION[namauser]     = $r[username];
  $_SESSION[passuser]     = $r[pass];
  $_SESSION[leveluser]    = $r[grup];
  
  header('location:media.php?module=home');
}
else{
echo "
<title>Hak Akses Ditolak</title>
<link href='css/screen.css' rel='stylesheet' type='text/css'><link href='css/reset.css' rel='stylesheet' type='text/css'>";
echo "
<div class='login-box'>
<div class='login-border'>
<div class='login-style'><center><br><br><b>LOGIN GAGAL! </b><br> 
        Username atau Password Anda tidak benar.<br>
        Atau account Anda sedang diblokir.<br><br>";
		echo "<div> <a href='index.php'><img src='images/seru.png'  height=147 width=176><br><br></a>
             </div>";
  echo "<input type=button class='tombol' value='ULANGI LAGI' onclick=location.href='index.php'></a></center><br>
  </div>
</div>
</div>";

}
?>
