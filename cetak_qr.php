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
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<title>Cetak</title>
	<link rel="icon" href="img/ico.png">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<style type="text/css">
		body{
			font-family: Arial;
		}

		@media print{
			.no-print{
				display: none;
			}
		}
	</style>
	<link href='https://fonts.googleapis.com/css?family=Roboto:400,100,300,700,900' rel='stylesheet' type='text/css'>
	<link href="https://fonts.googleapis.com/css?family=Roboto+Slab:300,400,700" rel="stylesheet">
	
	<!-- Bootstrap  -->
	<link rel="stylesheet" href="css/bootstrap.css">

	<link rel="stylesheet" href="css/cetak/style.css">
</head>
<body>

<center><a href="#" class="no-print" onclick="window.print();"><i class="fa fa-print"></i> Cetak/Print</a></center>
		<div class="container-fluid pt70 pb70">
			<div id="fh5co-projects-feed" class="fh5co-projects-feed clearfix masonry">
				<?php
				$sql=mysqli_query($konek, "SELECT * FROM tamu ORDER BY id_tamu ASC");
	            while($d=mysqli_fetch_array($sql)){
				echo "
				<div class='fh5co-project'>
					<a href=''>
						<img src='temp/$d[id_tamu].png'  height='110px' width='110px'>
						<h2>$d[nama]</h2>
					</a>
				</div>
				";     
				}
       			?>
			</div>
			<!--END .fh5co-projects-feed-->
		</div>
		<!-- END .container-fluid -->
<div class="clearfix"></div>
</body>
</html>
