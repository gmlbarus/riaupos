<!-- Page Title -->
		<div class="section section-breadcrumbs">
			<div class="container">
				<div class="row">
					<div class="col-md-12">
						<h1>Survey Loyalitas </h1>
						<hr color='#000000' size='1'>
					</div>
				</div>
			</div>
		</div>

        <div class="section">
	    	<div class="container">
				<div class="row">
					<!-- Blog Post Excerpt -->
					<div class="col-sm-12">
						<div class="blog-post blog-single-post">
							<div class="single-post-title">

							</div>
							<div class="single-post-content">
<?php
/**
 * @author ebenhezer
 * @copyright 2016
 */
$query = mysql_query("select * from polling;");
echo "<form action='proses/vote.php' method='post'>";
$j=1;
while ($data=mysql_fetch_array($query)) {
		echo "<div style='margin-bototm:30px'>";
    echo "<input type='hidden' name='id$j' value='".$data['id_polling']."'/>";
    echo "<b>".$data['pertanyaan']."</b><br />";
		echo "<div style='margin-top:20px'; margin-right:40px>";
    for ($i=1;$i<=10;$i++) {
        echo "<input style='margin-left: 13px; margin-right: 5px' type='radio' name='jawaban$j' value='".$data['jawaban'.$i]."' />".$data['jawaban'.$i];
    }
	 $j++;
}
echo "</div><br>";
echo "<input type='submit' class='btn btn-primary' value='Vote!'/><br>";
echo "<br \>";
echo "<hr color='#000000' size='1'>";
echo "</form>";
?>

<head>
   <hr1></hr1>
</head>
<body>
   <h1></h1>
   <table border="10" bgcolor="000000">
  <tr> <img src="foto_nps/1.jpg" /></tr>
  <p> <img src="foto_nps/2.jpg" height="30" width="30"><b> Promoter :</b> pelanggan yang antusias terhadap produk Anda dan akan terus membeli. Mereka dengan senang hati akan mereferensikan produk Anda kepada sahabat-sahabatnya.</p> <br \>
  <p> <img src="foto_nps/3.jpg" height="30" width="30"><b> Passive :</b> pelanggan yang puas dengan produk Anda namun tidak antusias dan bisa jadi sewaktu-waktu akan pindah ke produk lain jika menemukan deal yang lebih menarik.</p> <br \>
  <p> <img src="foto_nps/4.jpg" height="30" width="30"><b> Detractor : </b> pelanggan yang memiliki pengalaman kurang baik terhadap produk Anda dan bila ada kesempatan akan menyebarkan berita negatif tentang produk anda (negative word of mouth).</p> <br \>
</table>
</body>

</html>
</div>
					</div>


				</div>
			</div>
	    </div>
