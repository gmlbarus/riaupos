<script language="javascript">
$(document).ready(function() {
    $('#tabel-tarif').dataTable( {
        "order": [[ 0, "asc" ]]
    } );
} );</script>

<h1>Jadwal Pengiriman Koran</h1>
<hr color='#c5a430' size='1'>

<?php
	$r =  mysql_fetch_array(mysql_query("select * from konten where grup='jadwal'"));
	echo "<p>$r[deskripsi]</p>";
?>

<div class='div-shadow'></div>

<h1>Tarif Berlangganan Koran</h1>
<hr color='#c5a430' size='1'>

<?php
$query 	= mysql_query("SELECT * FROM tarif");
$jml	= mysql_num_rows($query);

echo '<table id="tabel-tarif" class="display" cellspacing="0" width="100%">
		<thead>
			<tr>
				<th>No.</th>
				<th>Class</th>
				<th>Kategori Penumpang</th>
				<th>Sekali Jalan</th>
				<th>Pulang - Pergi</th>
			</tr>
		</thead>
		<tbody>';
		$no = 1;
		while($r=mysql_fetch_array($query)){
			echo "<tr>
					<td>$no</td>
					<td>".strtoupper($r[kelas])."</td>
					<td>".strtoupper($r[kategori_penumpang])."</td>
					<td>Rp. ".format_rupiah($r[one_way])."</td>
					<td>Rp. ".format_rupiah($r[pp])."</td>
				</tr>";
			$no++;
		}

echo '	</tbody></table>';
?>