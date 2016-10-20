<script type="text/javascript" src="../admin/css/jquery.min.js"></script>
<script type="text/javascript" src="../admin/css/highcharts.js"></script>

<body>
<?php
	$host = 'localhost';
	$user = 'root';
	$pass = 'root';
	$db = 'koran';

	$conn = mysql_connect($host, $user, $pass);
	mysql_select_db($db, $conn);

	// ser get year
	$year = isset($_GET['year']);
	$year = ! empty($_GET['year']) ? $_GET['year'] : date('Y');

		// set series
	$series = array();

	/* Get all poling */
	$sql1 = "SELECT id_polling FROM hasil_polling WHERE tahun = '{$year}'";
	$sql = "SELECT `noHp` FROM hasil_polling_sms WHERE tahun = '{$year}'";
	$all_result = mysql_num_rows(mysql_query($sql1)) + mysql_num_rows( mysql_query( $sql));


	/* Get detractor data */
	$sql1 = "SELECT id_polling FROM hasil_polling WHERE jawaban BETWEEN 0 AND 6 AND tahun = '{$year}'";
	$sql2 = "SELECT `noHp` FROM hasil_polling_sms WHERE jawaban BETWEEN 0 AND 6 AND tahun = '{$year}'";
	$det = mysql_num_rows(mysql_query($sql1)) + mysql_num_rows( mysql_query( $sql2));

	$detractor = array(
		'name' => 'Detractor',
		'data' => array($det)
	);

	/* Get passivers data */
	$sql1 = "SELECT id_polling FROM hasil_polling WHERE jawaban BETWEEN 7 AND 8 AND tahun = '{$year}'";
	$sql2 = "SELECT `noHp` FROM hasil_polling_sms WHERE jawaban BETWEEN 7 AND 8 AND tahun = '{$year}'";
	$pas = mysql_num_rows(mysql_query($sql1)) + mysql_num_rows( mysql_query( $sql2));

	$passivers = array(
		'name' => 'Passivers',
		'data' => array($pas)
	);

	/* Get Promote data */
	$sql1 = "SELECT `id_polling` FROM `hasil_polling` WHERE `jawaban` BETWEEN 9 AND 10 AND `tahun` = '{$year}'";
	$sql2 = "SELECT `noHp` FROM `hasil_polling_sms` WHERE `jawaban` BETWEEN 9 AND 10 AND `tahun` = '{$year}'";
	$pro = mysql_num_rows(mysql_query($sql1)) + mysql_num_rows( mysql_query( $sql2));

	$promote = array(
		'name' => 'Promote',
		'data' => array($pro)
	);

	array_push($series, $detractor);
	array_push($series, $passivers);
	array_push($series, $promote);

	$npa = ($pro / $all_result) - ($det / $all_result) ;
	$categories = array("NPS = {$npa}");

?>
<form method="get">
	<select name="year">
		<option value="">- pilih tahun -</option>
		<?php
			foreach (range(2013, date('Y')) as $key=>$val) {
				echo '<option value="'.$val.'">'.$val.'</option>';
			}
		?>
	</select>
	<input type="hidden" name="module" value="polling">
	<button>CEK TAHUN</button>
</form>
<div id="contoh" style="width: 100%; height: 500px"></div>
<script type="text/javascript">
$('#contoh').highcharts({
	chart: {
		type: 'column'
	},
	title: {
		text: 'SURVEY NPS'
	},
	subtitle: {
		text: '<?php echo "Tahun {$year}"; ?>'
	},
	xAxis: {
		categories: <?php echo json_encode($categories); ?>,
		labels: {
			rotation: 0,
			align: 'center'
		},
		title: {
				text: 'Nilai NPS Terendah (-100) ; NPS Tertinggi (+100) | 30% (Good) . 50% (Leader) . 70%< (Excellent) '
		}
	},
	series: <?php echo json_encode($series); ?>
});
</script>
</body>
