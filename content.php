<?php
switch ($_GET['page']){
	case "koran":
		if (isset($_SESSION[basyenkuser]) and isset($_SESSION[basyenkpassword]) and isset($_SESSION[basyenklevel])){
			include "page/koran.php";
		}
		break;
	case "simulasi":
		include "page/simulasi.php";
		break;
	case "pemesanan":
		include "page/pemesanan.php";
		break;

	case "faq":
		include "page/faq.php";
		break;

	case "saran-kritik":
		include "page/saran-kritik.php";
		break;

	case "profil":
		include "page/profil.php";
		break;

	case "agen":
		include "page/agen.php";
		break;

	case "promo":
		include "page/promo.php";
		break;

	case "makanan":
		include "page/makanan.php";
		break;

	case "jadwal":
		include "page/jadwal.php";
		break;

	case "tindak-lanjut":
		include "page/tindak-lanjut.php";
		break;

	case "tahap_1":
		include "page/tahap_1.php";
		break;

	case "survey":
		include "page/survey.php";
		break;

	case "stop":
		include "page/stop.php";
		break;

	case "konfirmasi":
		include "page/konfirmasi.php";
		break;

	case "ubah-password":
		if (isset($_SESSION[basyenkuser]) and isset($_SESSION[basyenkpassword]) and isset($_SESSION[basyenklevel])){
			include "page/ubah-password.php";
		}
		break;

	case "akun":
		if (isset($_SESSION[basyenkuser]) and isset($_SESSION[basyenkpassword]) and isset($_SESSION[basyenklevel])){
			include "page/akun.php";
		}
		break;

	case "home":
		include "page/home.php";
		break;

	case "registrasi":
		include "page/registrasi.php";
		break;

	case "vote":
		include "prose/vote.php";
		break;

	case "logout":
		session_destroy();
		echo "<script>window.location = 'media.php?page=home'</script>";
		break;

	default:
		include "page/404.php";
		break;
}
?>
