<script language="javascript">
$(document).ready(function() {
    $('#tabel-faq').dataTable( {
        "order": [[ 0, "asc" ]]
    } );
} );</script>

<h1>FAQ</h1>
<hr color='#000000' size='1'>
				  
<?php
if($_GET[mode]=='detail'){
	$query 	= mysql_query("select * from faq where aktif='Y' and id_faq='$_GET[id]'");
	$d		= mysql_fetch_array($query);
	echo"<div class='feat_prod_box_details'>";
	
	echo"<div class='details_big_box'>
			<div class='product_title_big'>$d[pertanyaan]</div>
			<div class='details'>$d[jawaban]</div>
		</div>
		<div class='clear'></div>
		<div class='div-shadow'></div>";
}

$query 	= mysql_query("SELECT * FROM faq WHERE aktif='Y'");
$jml	= mysql_num_rows($query);

echo '<table id="tabel-faq" class="display" cellspacing="0" width="100%">
		<thead>
			<tr>
				<th>No.</th>
				<th>Pertanyaan</th>
				<th></th>
			</tr>
		</thead>
		<tbody>';
		$no = 1;
		while($r=mysql_fetch_array($query)){
			echo "<tr>
					<td>$no</td>
					<td>".strtoupper($r[pertanyaan])."</td>
					<td><a href='media.php?page=faq&mode=detail&id=$r[id_faq]' title='Lihat detail'><img src='images/detail.png'></a></td>
				</tr>";
			$no++;
		}

echo '	</tbody></table>';
?>