<!-- Page Title -->
		<div class="section section-breadcrumbs">
			<div class="container">
				<div class="row">
					<div class="col-md-12">
						<h1>Survey Loyalitas Pelanggan</h1>
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
		echo "<div style='margin-top:30px'>";
    echo "<input type='hidden' name='id$j' value='".$data['id_polling']."'/>";
    echo "<b>".$data['pertanyaan']."</b><br />";
		echo "<div style='margin-top:20px'; margin-bototm:40px>";
    for ($i=1;$i<=10;$i++) {
        echo "<input style='margin-left: 13px; margin-right: 5px' type='radio' name='jawaban$j' value='".$data['jawaban'.$i]."' />".$data['jawaban'.$i];
    }
	 $j++;
}
echo "</div><br>";
echo "<input type='submit' class='btn btn-primary' value='Vote!'/><br>";
echo "</form>";
?>
</div>
					</div>


				</div>
			</div>
	    </div>
