<?php
  error_reporting(0);
  session_start();
  include "config/koneksi.php";
  include "config/fungsi_indotgl.php";
  include "config/class_paging.php";
  include "config/fungsi_combobox.php";
  include "config/library.php";
  include "config/fungsi_autolink.php";
  include "config/fungsi_rupiah.php";
  include "config/fungsi_thumb_pengguna.php";
  include "config/fungsi_seo.php";
  include "config/fungsi_seat.php";
  include "config/fungsi_fiktif.php";

if($_POST[login]!=""){
	function antiinjection($data){
		$filter_sql = mysql_real_escape_string(stripslashes(strip_tags(htmlspecialchars($data,ENT_QUOTES))));
		return $filter_sql;
	}

	$username 	= antiinjection($_POST[username]);
	$password 	= antiinjection($_POST[password]);

	$query		= mysql_query("SELECT * from login
							   JOIN profil ON login.username=profil.email
							   WHERE login.username='$username' AND login.pass=md5('$password') AND login.status='Y' AND login.grup='2'");
	$jml		= mysql_num_rows($query);
	$r			= mysql_fetch_array($query);

	if($jml > 0){
		$_SESSION[basyenkuser]   	= $r[username];
		$_SESSION[basyenkpassword]  = $r[pass];
		$_SESSION[basyenklevel]   	= $r[grup];
		$_SESSION[basyenknama]   	= $r[nama];

		echo "<script>alert('Selamat datang di Sistem Registrasi Berlangganan Koran Riau Pos...'); window.location = 'media.php?page=home'</script>";
	}
	else{
		echo "<script>alert('Autentikasi user gagal...'); window.location = 'media.php?page=home'</script>";
	}
}
?>

<!DOCTYPE html>
<html xmlns:fb="http://ogp.me/ns/fb#" class="no-js" lang="id">

<head>
	<meta name="description" content="Registrasi Berlangganan Koran Riau Pos Online" />
	<meta name="keywords" content="Registrasi Berlangganan Koran Riau Pos online" />
	<meta name="author" content="" />
	<meta charset="UTF-8" />
	<link rel="icon" href="images/favicon2.ico" type="image/x-icon" />
	<title>SIM | Berlangganan Koran Riau Pos Online</title>

	<link rel="stylesheet" type="text/css" href="css/reset.css" />
	<link rel="stylesheet" type="text/css" href="css/style.css" />
	<link rel="stylesheet" type="text/css" href="css/jquery.dataTables.css" media="screen" />
	<link rel="stylesheet" type="text/css" href="css/jscal2.css" />
	<link rel="stylesheet" type="text/css" href="css/border-radius.css" />
	<link rel="stylesheet" type="text/css" href="css/gold/gold.css" />
	<link rel="stylesheet" type="text/css" href="css/far-min.css" />
	<link rel="stylesheet" type="text/css" href="css/seatbook.css" />
	<!--[if IE 7]>
		<link href="css/seat-ie7.css" rel="stylesheet" type="text/css" />
	<![endif]-->

	<script type="text/javascript" src="js/jquery-1.7.2.min.js"></script>
	<script type="text/javascript" src="js/jquery.tools.min.js"></script>
	<script type="text/javascript" src="js/slide.js"></script>

	<script type="text/javascript" src="js/md5.js"></script>
	<script type="text/javascript" src="js/jquery.dataTables.js"></script>
	<script type="text/javascript" src="js/jscal2.js"></script>
	<script type="text/javascript" src="js/lang/en.js"></script>


	<script language="javascript">
		function validasi(form_daftar){
		  if (form_daftar.nama_pengguna.value == ""){
			alert("Anda belum mengisikan Nama Pengguna.");
			form.nama_pengguna.focus();
			return (false);
		  }
		  if (form_daftar.nama_lengkap.value == ""){
			alert("Anda belum mengisikan Nama Lengkap.");
			form.nama_lengkap.focus();
			return (false);
		  }
		  return (true);
		}
	</script>

	<script type="text/javascript">
		$(document).ready(function() {
			$('a.login-window').click(function() {

				// Getting the variable's value from a link
				var loginBox = $(this).attr('href');

				//Fade in the Popup and add close button
				$(loginBox).fadeIn(300);

				//Set the center alignment padding + border
				var popMargTop = ($(loginBox).height() + 24) / 2;
				var popMargLeft = ($(loginBox).width() + 24) / 2;

				$(loginBox).css({
					'margin-top' : -popMargTop,
					'margin-left' : -popMargLeft
				});

				// Add the mask to body
				$('body').append('<div id="mask"></div>');
				$('#mask').fadeIn(300);

				return false;
			});

			// When clicking on the button close or the mask layer the popup closed
			$('a.close, #mask').live('click', function() {
			  $('#mask , .login-popup').fadeOut(300 , function() {
				$('#mask').remove();
			});
			return false;
			});
		});
	</script>

	<!--[if lte IE 6]>
	<script type="text/javascript" src="/js/pngfix/supersleight-min.js"></script>
	<![endif]-->
</head>

<!-- Batas Head ################################ !-->

<body>

<div id="toppanel">
	<div id="panel">
		<div class="content clearfix">
			<div class="left">
				<form action="<?php $_SERVER[PHP_SELF]; ?>" name="login1" class="clearfix" method="post">
					<h2>Member Login</h2>
					<div class="input text"><label for="LoginPromptLogin">Username</label><input name="username" class="field" type="text" id="LoginPromptLogin" required/></div>
					<div class="input password"><label for="LoginPromptPassword">Password</label><input name="password" class="field" type="password" id="LoginPromptPassword" required/></div>

					<div class="clear"></div>
					<div class="submit"><input class="bt_login" type="submit" value="Login" name="login"/></div>
				</form>
			</div>

			<div class="left">
				<h2>Selamat Datang di SIM Berlangganan Koran Riau Pos Online</h2>
				<p class="grey">Kami adalah siap melayani......................</p>
				<br>
			</div>

			<div class="left right">
				<h2>Belum jadi Anggota?</h2>
				<p class="grey">Jika anda belum teregister di sistem kami...</p>
				<p class="grey">Anda menginginkan informasi promo dan manfaat lebih lainnya dari kami ? </p>
				<p class="grey">Silahkan daftar disini</p>
				<br>
				<div class="submit">
					<input type="button" value="Registrasi" class="bt_register" onclick="window.location.href='media.php?page=registrasi';">
				</div>
			</div>
		</div>
	</div>
</div>

<div id="container" class="fullwidth center">
	<header class="fullwidth center">
		<div id="header-center" class="right">
			<ul id="main-menu">
				<li class="home">	<a href="media.php?page=home">home<p>kembali menuju halaman utama</p></a></li>
                <li class="promo">	<a href="media.php?page=promo">promo<p>informasi promo disini</p></a></li>
				<li class="jadwal">	<a href="media.php?page=jadwal">jadwal & tarif<p>informasi jadwal pengiriman koran</p></a></li>
				<li class="makanan"><a href="media.php?page=survey">survey loyalitas</a>
	              <p>isi data survey</p>
	      </a></li>
				<li class="agen">	<a href="media.php?page=agen">agen koran
		        <p>daftar agen kami</p></a></li>
				<?php
                if (isset($_SESSION[basyenkuser]) and isset($_SESSION[basyenkpassword]) and isset($_SESSION[basyenklevel])){
					echo "<li class='login'><a href='media.php?page=logout' style='margin-left:-7px;'>Logout</a><a href='#' id='close' >Close</a></li>";
				} else {
					echo "<li class='login'><a href='#' id='toogle'>Login</a><a href='#' id='close' >Close</a></li>";
				}
                ?>
			</ul>
		</div>
		<div class="clear"></div>
	</header>
	<div id="content" class="fullwidth center">
		<div id="color-line" style="background-color: #000000">
			<?php
				if (isset($_SESSION[basyenkuser]) and isset($_SESSION[basyenkpassword]) and isset($_SESSION[basyenklevel])){
				echo "
					<span>&nbsp<b>Hai ".strtoupper($_SESSION[basyenknama])." |</b></span>
					<span><a href='media.php?page=akun'>akun saya</a></span>
					<span><a href='media.php?page=ubah-password'>ubah password</a></span>
					<span><a href='media.php?page=tiket'>Koran</a></span>
					<span><a href='media.php?page=stop'>Stop Berlangganan</a></span>";

				}
			?>
		</div>

		<div id="main-content">
			<div id="content-left" class="left padding-title">
				<article>
					<div id="article-content">
						<!-- Awal Konten Tengah ################################ !-->
						<center><?php include "content.php"; ?></center>
						<!-- Akhir Konten Tengah ################################ !-->
					</div>
				 </article>
			</div>

			<div id="widget-area" class="header-cart">
			<?php
				include 'widget/logo.php';
				include 'widget/pemesanan.php';
				include 'widget/promo.php';
			?>
			</div>

			<div class="clear"></div>
		</div>
	</div>
</div>

<!-- Batas Footer ################################ !-->

<footer>
	<div class="container fullwidth center">
		<div id="footer-white"></div>
		<ul id="footer-menu">
			<a href="media.php?page=home">			Home</a> |
			<a href="media.php?page=profil">		Tentang Kami</a> |
			<a href="media.php?page=simulasi">	Simulasi</a> |
			<a href="media.php?page=saran-kritik">	Saran dan Kritik</a> |
			<a href="media.php?page=faq">			FAQ</a> |
			<a href="media.php?page=tindak-lanjut">			Tindak Lanjut </a>

			<div class="clear"></div>
		</ul>
		<div class="clear"></div>
		<div id="copyright" class="left">
			Copyright &copy; 2016 - <a href="#">eben hezer</a> | Sistem berlanggana Koran Online
		</div>
		<div class="clear"></div>
	</div>
</footer>
</body>
</html>
