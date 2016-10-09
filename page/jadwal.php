<script language="javascript">
$(document).ready(function() {
    $('#tabel-jadwal').dataTable( {
        "order": [[ 0, "asc" ]]
    } );
    $('#tabel-tarif').dataTable( {
        "order": [[ 0, "asc" ]]
    } );
} );</script>

<h1>Jadwal Pengiriman</h1>
<hr color='#000000' size='1'>

<?php
$query 	= mysql_query("SELECT * FROM jadwal");
$jml	= mysql_num_rows($query);

echo '<table id="tabel-jadwal" class="display" cellspacing="0" width="100%">
		<thead>
			<tr>
				<th>No.</th>
				<th>Kode</th>
				<th>Daerah</th>
				<th>Jam Kirim</th>
				<th>Jam Tiba</th>
			</tr>
		</thead>
		<tbody>';
		$no = 1;
		while($r=mysql_fetch_array($query)){
			echo "<tr>
					<td>$no</td>
					<td>".strtoupper($r[kode])."</td>
					<td>".strtoupper($r[daerah])."</td>
					<td>".strtoupper($r[jam_kirim])."</td>
					<td>".strtoupper($r[jam_tiba])."</td>
				</tr>";
			$no++;
		}

echo '	</tbody></table>';
?>

<div class='div-shadow'></div>

<h1>Tarif Berlangganan</h1>
<hr color='#c5a430' size='1'>
<?php
$query 	= mysql_query("SELECT * FROM tarif");
$jml	= mysql_num_rows($query);

echo '<table id="tabel-tarif" class="display" cellspacing="0" width="100%">
		<thead>
			<tr>
				<th>No.</th>
				<th>Class</th>
				<th>Sebulan</th>
				<th>Setahun</th>
			</tr>
		</thead>
		<tbody>';
		$no = 1;
		while($r=mysql_fetch_array($query)){
			echo "<tr>
					<td>$no</td>
					<td>".strtoupper($r[kelas])."</td>
					<td>Rp. ".format_rupiah($r[sebulan])."</td>
					<td>Rp. ".format_rupiah($r[setahun])."</td>
				</tr>";
			$no++;
		}

echo '	</tbody></table>';
?>