<?php
mysql_query(" UPDATE login
				SET status='T'
				WHERE username='$_SESSION[basyenkuser]'
			");
echo "<script>alert('Terima kasih telah berlangganan dengan kami'); window.location = 'media.php?page=logout'</script>";
?>