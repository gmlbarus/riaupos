<?php
include "../config/koneksi.php";
include "../config/library.php";
include "../config/fungsi_indotgl.php";
include "../config/fungsi_combobox.php";
include "../config/class_paging.php";
include "../config/fungsi_rupiah.php";
include "../config/hitung_saldo.php";

switch ($_GET[module]) {
	case 'laporan-upgrade-class':
		if ($_SESSION['leveluser']=='1') include "modul/mod_upgrade-class/upgrade.php";
		break;

	case 'laporan-pemesanan':
		if ($_SESSION['leveluser']=='0' or $_SESSION['leveluser']=='1') include "modul/mod_laporan-pemesanan/order.php";
		break;

	case 'laporan-pelanggan':
		if ($_SESSION['leveluser']=='0' or $_SESSION['leveluser']=='1') include "modul/mod_pelanggan/pelanggan.php";
		break;

	case 'smsbroadcast':
		if ($_SESSION['leveluser']=='0') include "modul/mod_smsbroadcast/smsbroadcast.php";
		break;

	case 'smsSend':
		if ($_SESSION['leveluser']=='0') include "modul/mod_smsSend/smsSend.php";
		break;

	case 'smshistory':
		if ($_SESSION['leveluser']=='0') include "modul/mod_smshistory/smshistory.php";
		break;

	case 'smsoutbox':
		if ($_SESSION['leveluser']=='0') include "modul/mod_smsoutbox/smsoutbox.php";
		break;

	case 'smsinbox':
		if ($_SESSION['leveluser']=='0') include "modul/mod_smsInbox/smsinbox.php";
		break;

	case 'pemesanan':
		if ($_SESSION['leveluser']=='0' or $_SESSION['leveluser']=='1') include "modul/mod_order/order.php";
		break;

	case 'ganti-password':
		if ($_SESSION['leveluser']=='0' or $_SESSION['leveluser']=='1') include "modul/mod_password/password.php";
		break;

	case 'pelanggan':
		if ($_SESSION['leveluser']=='0' or $_SESSION['leveluser']=='1') include "modul/mod_pelanggan/pelanggan.php";
		break;

	case 'saran-kritik':
		if ($_SESSION['leveluser']=='0' or $_SESSION['leveluser']=='1') include "modul/mod_saran-kritik/saran-kritik.php";
		break;

	case 'promo':
		if ($_SESSION['leveluser']=='0') include "modul/mod_promo/promo.php";
		break;

	case 'profil':
		if ($_SESSION['leveluser']=='0') include "modul/mod_profil/profil.php";
		break;

	case 'ongkos':
		if ($_SESSION['leveluser']=='0') include "modul/mod_ongkos/ongkos.php";
		break;

	case 'tindak-lanjut':
		if ($_SESSION['leveluser']=='0') include "modul/mod_tindak-lanjut/tindak-lanjut.php";
		break;

	case 'jadwal':
		if ($_SESSION['leveluser']=='0') include "modul/mod_jadwal/jadwal.php";
		break;

	case 'faq':
		if ($_SESSION['leveluser']=='0') include "modul/mod_faq/faq.php";
		break;

	case 'rute':
		if ($_SESSION['leveluser']=='0') include "modul/mod_rute/rute.php";
		break;

	case 'bank':
		if ($_SESSION['leveluser']=='0') include "modul/mod_bank/bank.php";
		break;

	case 'agen':
		if ($_SESSION['leveluser']=='0') include "modul/mod_agen/agen.php";
		break;

	case 'konfirmasi':
		if ($_SESSION['leveluser']=='0') include "modul/mod_konfirmasi/konfirmasi.php";
		break;

	case 'login':
		if ($_SESSION['leveluser']=='0') include "modul/mod_login/login.php";
		break;

	case 'polling2':
		if ($_SESSION['leveluser']=='0') include "modul/mod_polling2/polling2.php";
		break;

	case 'saldo':
		if ($_SESSION['leveluser']=='0') include "modul/mod_saldo/saldo.php";
		break;

	case 'laporan-agen':
		if ($_SESSION['leveluser']=='1') include "modul/mod_laporan-agen/agen.php";
		break;

	case 'stop':
		if ($_SESSION['leveluser']=='1') include "modul/mod_stop/stop-berlangganan.php";
		break;

	case 'polling':
		if ($_SESSION['leveluser']=='1') include "modul/mod_polling/polling.php";
		break;


	case 'home':
		echo "<h2>Selamat Datang</h2>
			  <p>Hai <b>$_SESSION[namauser]</b>, selamat datang di halaman Administrator.<br> Silahkan klik menu pilihan yang berada
			  di sebelah kiri untuk mengelola konten website anda. </p>
			  <p>&nbsp;</p><p>&nbsp;</p><p>&nbsp;</p><p>&nbsp;</p><p>&nbsp;</p><p>&nbsp;</p><p>&nbsp;</p><p>&nbsp;</p>
			  <p align=right>Login : $hari_ini, ";
		echo tgl_indo(date("Y m d"));
		echo " | ";
		echo date("H:i:s");
		echo " WIB</p>";
		break;

	default:
		echo "<p><b>MODUL BELUM ADA ATAU BELUM LENGKAP</b></p>";
		break;
}
?>
