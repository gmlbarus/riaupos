<?php
error_reporting(0);
//Update database sesuai webserver anda
$conn=mysql_connect('localhost', 'root', '') or die("Can't connect to mysql host");
//pilih database yang akan di gunakan
mysql_select_db('koran') or die("Can't connect to DB");

//kita buat variable post
$p_poll     	= isset($_POST['poll']) ? $_POST['poll'] : "";    
$p_pollid     	= isset($_POST['pollid']) ? $_POST['pollid'] : "";
$result    		= isset($_GET['result']) ? $_GET['result'] : "";

if(!$p_poll  || !$p_pollid){
	$query=mysql_query("SELECT id, ques FROM pertanyaan ORDER BY id DESC LIMIT 1"); // query untuk menampilkan pertanyaan
	while($row=mysql_fetch_assoc($query)){
		//tampilan pertanyaan
		echo "<p class=\"pollques\" >".$row['ques']."</p>";
		$poll_id=$row['id'];
	}
	
	if($result==1 || $_COOKIE["voted".$poll_id]=='yes'){
		//Jika sudah vote maka akan menampilkan hasil
		showresults($poll_id);
		exit;
	}
	else{
	//Tampilan pilihan dengan radio button
		$query=mysql_query("SELECT id, value FROM setting WHERE ques_id=$poll_id");
		if(mysql_num_rows($query)){
			echo '<div id="container" ><form method="post" id="pollform" action="'.$_SERVER['PHP_SELF'].'" >';
			echo '<input type="hidden" name="pollid" value="'.$poll_id.'" />';
			while($row=mysql_fetch_assoc($query)){
				echo '<p><input type="radio" name="poll" value="'.$row['id'].'" id="option-'.$row['id'].'" /> 
				<label for="option-'.$row['id'].'" >'.$row['value'].'</label></p>';
			}
			echo '<p><input type="submit"  class="btn btn-success" value="Submit" /></p></form>';
			echo '<p><a href="'.$_SERVER['PHP_SELF'].'?result=1" id="viewresult" class="btn btn-info">Lihat Hasil</a></p></div>';
		}
	}
}

else{
	if($_COOKIE["voted".$p_pollid]!='yes'){
		
		//Untuk memeriksa apakah option sudah di pilih jika sudah maka akan di insert ke database 
		$query=mysql_query("SELECT * FROM setting WHERE id='".intval($_POST["poll"])."'");
		if(mysql_num_rows($query)){
			$query="INSERT INTO votes(option_id, voted_tgl, ip) VALUES('".$_POST["poll"]."', '".date('Y-m-d H:i:s')."', '".$_SERVER['REMOTE_ADDR']."')";   // yang akan di insert ke database adalah pilihan jawaban, tanggal dan ip addreess nya
			if(mysql_query($query))
			{
				//kita setting cookie nya agar user tidak melakukan poling lagi jika sudang melakukan poling
				setcookie("voted".$_POST['pollid'], 'yes', time()+86400*300);				
			}
			else
				echo "Maaf ada kesalah pada query : ".mysql_error(); // jika ada kesalahan pada query
		}
	}
	showresults(intval($p_pollid)); 
}

function showresults($poll_id){  // menampilkan hasil poling
	global $conn;
	$query=mysql_query("SELECT COUNT(*) as totalvotes FROM votes WHERE option_id IN(SELECT id FROM setting WHERE ques_id='$poll_id')");
	while($row=mysql_fetch_assoc($query))
		$total=$row['totalvotes'];
	$query=mysql_query("SELECT setting.id, setting.value, COUNT(*) as votes FROM votes, setting WHERE votes.option_id=setting.id AND votes.option_id IN(SELECT id FROM setting WHERE ques_id='$poll_id') GROUP BY votes.option_id"); // query menghitung polling
	while($row=mysql_fetch_assoc($query)){
		$percent=round(($row['votes']*100)/$total);
		echo '<div><p>'.$row['value'].' ('.$percent.'%, '.$row['votes'].' votes)</p>';
		//Untuk menampilakn progress barr dengan class bostrap
		echo '<div class="progress" >';
		echo '<div class="progress-bar" role="progressbar"';
		
		if($p_poll==$row['id']) echo ' Vote Anda';
		echo '" aria-valuenow="'.$percent.'" aria-valuemin="0" aria-valuemax="100" style="width: '.$percent.'%; " > 
		<span class="sr-only">70% Complete</span>
		</div></div></div>';
	}
	echo '<p>Total Votes: '.$total.'</p>';  
}



		