<script language="javascript">
$(document).ready(function() {
    $('#tabel-agen').dataTable( {
        "order": [[ 0, "asc" ]]
    } );
} );</script>

<h1>Agen</h1>
<hr color='#c5a430' size='1'>
				  
<?php
$query 	= mysql_query("SELECT * FROM agen WHERE aktif='Y'");
$jml	= mysql_num_rows($query);

echo '<table id="tabel-agen" class="display" cellspacing="0" width="100%">
		<thead>
			<tr>
				<th>Nama Agen</th>
				<th>Alamat</th>
				<th>Telepon</th>
			</tr>
		</thead>
		<tbody>';
		$no = 1;
		while($r=mysql_fetch_array($query)){
			echo "<tr>
					<td>".strtoupper($r[nama])."</td>
					<td>".strtoupper($r[alamat])."</td>
					<td>".$r[hp]."</td>
				</tr>";
			$no++;
		}

echo '	</tbody></table>';
?>