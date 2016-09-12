<?php
function seat($kelas,$seat_disable){
	$susunan	= mysql_query("select*from susunan where kelas='$kelas'");
	$baris		= mysql_result($susunan,0,'baris');
	$kolom		= mysql_result($susunan,0,'kolom');
	$kursi		= mysql_query("select * from seat where kelas='$kelas' order by id");
	$posisi		= 0;

	for ($i=1;$i<=$baris;$i++ ){
		echo "<div class='seat-row' id='row-$i'>";
			for ($a=1;$a<=$kolom; $a++){
				$seat	= mysql_result($kursi,$posisi,'seat');
				$tipe	= mysql_result($kursi,$posisi,'tipe');
				
				if($tipe=='Y'){
					$cek = 0;
					for($s=0; $s<count($seat_disable); $s++) if($seat == $seat_disable[$s]) $cek =1;
					
					if($cek==0) echo '<div class="seat  seat-availiable" style="background-color:#33CC33;" id="'.$seat.'" onclick="cek('."'".$seat."'".')"><div class="seat-text"><br>'.$seat.'</div></div>';
					if($cek==1) echo '<div class="seat  seat-disabled" style="background-color:#808080;"><div class="seat-text"><br>'.$seat.'</div></div>';
				}
				elseif($tipe=='N'){
					echo '<div class="seat  no-seats"><br>&nbsp</div>';
				}

				$posisi=$posisi+1;
			}
		echo '</div>';
	}
}
?>