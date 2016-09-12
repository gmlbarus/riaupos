<script language="javascript">
$(document).ready(function() {
    $('#tabel-tindaklanjut').dataTable( {
        "order": [[ 0, "asc" ]]
    } );
} );</script>

<h1>Tindak Lanjut</h1>
<hr color='#c5a430' size='1'>
				  
<?php
$query 	= mysql_query("SELECT * FROM tindaklanjut");
$jml	= mysql_num_rows($query);

echo '<table id="tabel-tindaklanjut" class="display" cellspacing="0" width="100%">
		<thead>
			<tr>
				<th>Keterangan</th>
				<th>Hasil Tindakan</th>
				</tr>
		</thead>
		<tbody>';
		$no = 1;
		while($r=mysql_fetch_array($query)){
			echo "<tr>
					<td>".strtoupper($r[nama])."</td>
					<td>".strtoupper($r[hasil_tindakan])."</td>
				</tr>";
			$no++;
		}

echo '	</tbody></table>';
?>