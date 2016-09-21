<script language="javascript">
$(document).ready(function() {
    $('#tabel-tarif').dataTable( {
        "order": [[ 0, "asc" ]]
    } );
} );</script>
<script language="javascript">
$(document).ready(function() {
    $('#tabel-jadwal').dataTable( {
        "order": [[ 0, "asc" ]]
    } );
} );</script>
<h1>Jadwal</h1>
<hr color='#c5a430' size='1'>

<?php
$query 	= mysql_query("SELECT * FROM jadwal");
$jml	= mysql_num_rows($query);

echo '<table id="tabel-jadwal" class="display" cellspacing="0" width="100%">
		<thead>
			<tr>
				<th>No.</th>
				<th>kode.</th>	
				<th>Daerah</th>
				<th>Jam_Kirim</th>
				<th>Jam_Tiba</th>
			</tr>
		</thead>
		<tbody>';
		$no = 1;
		while($r=mysql_fetch_array($query)){
			echo "<tr>
					<td>$no</td>
					<td>".strtoupper($r[kode])."</td>
					<td>".strtoupper($r[daerah])."</td>
					<td>".strtoupper($r[jam_pengiriman])."</td>
					<td>".strtoupper($r[jam_tiba])."</td>
				</tr>";
			$no++;
		}

echo '	</tbody></table>';

?>

<div class='div-shadow'></div>

<h1>Tarif </h1>
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