<?php
ob_start();
session_start();
if(!isset($_SESSION['login'])){
    header('location:login.php');
}

include "koneksi.php";
?>
<!DOCTYPE html>
<html>
<head>
	<title>Cetak</title>
	<link rel="icon" href="img/ico.png">
	<style type="text/css">
		body{
			font-family: Arial;
		}

		@media print{
			.no-print{
				display: none;
			}
		}

		table{
			border-collapse: collapse;
		}
		.box{
			margin-bottom: 5px;
		    width: 110px;
		    height: 110px;
		}
		.box img{
			margin-left: auto;
			margin-right: auto;
		    width: 90%;
		}
		img,p{	
		    position: relative;
		}
		.bawahKanan{
			margin: 0;padding: 0;
		    bottom: 10px;	
		    text-align: center;
		    font-size: 10px;	 
		}
	</style>
</head>
<body>
	<table border="1">
		<tr>
		<?php
			$sql=mysqli_query($konek, "SELECT * FROM tamu ORDER BY id_tamu ASC");
            while($d=mysqli_fetch_array($sql)){
			echo "
				<td>
				<div class='box'>
			        <img src='temp/$d[id_tamu].png'>
			        <p class='bawahKanan'>$d[nama]$d[nama]</p>
			    </div>
				</td>
				";     
		}
        ?>
    </tr>
    </table>
<br>
<center><a href="#" class="no-print" onclick="window.print();">Cetak/Print</a></center>
</body>
</html>
