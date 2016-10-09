<?php
session_start();
if (empty($_SESSION['namauser']) AND empty($_SESSION['passuser'])){
	echo "<link href='style.css' rel='stylesheet' type='text/css'>
	<center>Untuk mengakses modul, Anda harus login <br>";
	echo "<a href=../../index.php><b>LOGIN</b></a></center>";
}
else{
	$aksi="modul/mod_konfirmasi/aksi.php";
	switch($_GET[act]){
	  default:
		echo "<h2>Konfirmasi Pembayaran</h2>
			  <table width=650px>
			  <tr><th>No</th><th>Invoice</th><th>Gambar</th><th>nama</th><th>pesan</th><th>Tgl_Input</th><th>Aksi</th></tr>";

		$tampil=mysql_query("SELECT * FROM konfirmasi");
		$no=1;
		?>
		<!-- HTML script -->
		<style type="text/css">
			/* Style the Image Used to Trigger the Modal */
			#myImg {
			border-radius: 5px;
			cursor: pointer;
			transition: 0.3s;
			}

			#myImg:hover {opacity: 0.7;}

			/* The Modal (background) */
			.modal {
			cursor: pointer;
			cursor: hand;	
			display: none; /* Hidden by default */
			position: absolute; /* Stay in place */
			z-index: 1; /* Sit on top */
			padding-top: 100px; /* Location of the box */
			left: 0;
			top: 0;
			width: 100%; /* Full width */
			height: 100%; /* Full height */
			overflow: auto; /* Enable scroll if needed */
			background-color: rgb(0,0,0); /* Fallback color */
			background-color: rgba(0,0,0,0.9); /* Black w/ opacity */
			}

			/* Modal Content (Image) */
			.modal-content {
			margin: auto;
			display: block;
			width: 80%;
			max-width: 700px;
			}

			/* Caption of Modal Image (Image Text) - Same Width as the Image */
			#caption {
			margin: auto;
			display: block;
			width: 80%;
			max-width: 700px;
			text-align: center;
			color: #ccc;
			padding: 10px 0;
			height: 150px;
			}

			/* Add Animation - Zoom in the Modal */
			.modal-content, #caption {
			-webkit-animation-name: zoom;
			-webkit-animation-duration: 0.6s;
			animation-name: zoom;
			animation-duration: 0.6s;
			}

			@-webkit-keyframes zoom {
			from {-webkit-transform:scale(0)}
			to {-webkit-transform:scale(1)}
			}

			@keyframes zoom {
			from {transform:scale(0)}
			to {transform:scale(1)}
			}

			/* The Close Button */
			.close {
			position: absolute;
			top: 15px;
			right: 35px;
			color: #f1f1f1;
			font-size: 40px;
			font-weight: bold;
			transition: 0.3s;
			}

			.close:hover,
			.close:focus {
			color: #bbb;
			text-decoration: none;
			cursor: pointer;
			}

			/* 100% Image Width on Smaller Screens */
			@media only screen and (max-width: 700px){
			.modal-content {
					width: 100%;
			}
			}
		</style>
		<!-- end of HTML script -->
		<?php
		while ($r=mysql_fetch_array($tampil)){
		  echo "<tr><td align=left>$no</td>
					<td>$r[invoice]</td>
					<td align=left><img style='cursor:pointer; cursor:hand;' id='myImg{$r['invoice']}' src='../foto_konfirmasi/$r[img]' height='50px'></td>
					<td>$r[nama]</td>
		     		<td>$r[pesan]</td>
		     		<td>$r[tgl_input]</td>
					<td align=left><a href=$aksi?module=konfirmasi&act=hapus&id=$r[id_konfirmasi]><b>Hapus</b></a>
					</tr>";
			?>
			<!-- HTML script -->
				<!-- The Modal -->
				<div id="myModal<?php echo $r['invoice'] ?>" class="modal">

				<!-- The Close Button -->
				<span class="close<?php echo $r['invoice'] ?>" onclick="document.getElementById('myModal<?php echo $r['invoice'] ?>').style.display='none'">&times;</span>

				<!-- Modal Content (The Image) -->
				<img class="modal-content" id="img<?php echo $r['invoice'] ?>">

				<!-- Modal Caption (Image Text) -->
				<div id="caption<?php echo $r['invoice'] ?>"><?php echo $r['invoice'] ?></div>
				</div>

				<script type="text/javascript">
						// Get the modal
						var modal = document.getElementById('myModal<?php echo $r['invoice'] ?>');

						// Get the image and insert it inside the modal - use its "alt" text as a caption
						var img = document.getElementById('myImg<?php echo $r['invoice'] ?>');
						var modalImg = document.getElementById("img<?php echo $r['invoice'] ?>");
						var captionText = document.getElementById("caption<?php echo $r['invoice'] ?>");
						img.onclick = function(){
							modal.style.display = "block";
							modalImg.src = this.src;
							captionText.innerHTML = this.alt;
						}

						// Get the <span> element that closes the modal
						var span = document.getElementsByClassName("close<?php echo $r['invoice'] ?>")[0];

						// When the user clicks on <span> (x), close the modal
						span.onclick = function() {
						modal.style.display = "none";
						}

						modal.onclick = function() {
							modal.style.display = "none";
						}
				</script>
			<!-- end of HTML script -->
			<?php
		$no++;
		}
		echo "</table>";
		break;

	}
}
?>
