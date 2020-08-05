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
	<title>Laporan</title>
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

<center><a href="#" class="no-print" onclick="window.print();">Download</a></center>
<table border="6" cellpadding="80" cellspacing="0" width="100%">
<tr>
	<td>
		<center>
			<img src="img/cop.png" style="margin-top: -40px;">
			<hr style="border: 2px solid black;">
			<br>
			</center>

			<center>
				<h2>
					TOTAL JUMLAH TAMU KESELURUHAN
				</h2>
			<table width="100%" border=1 >
				<tr>
					<th>
						No
					</th>
					<th>
						Keterangan
					</th>
					<th>
						Total
					</th>
				</tr>

				<tr>
					<td>
						1.
					</td>
					<td>
						Total semua tamu yang hadir (perorang) :
					</td>
					<th>
						<?php
			                $qry = mysqli_query($konek,"select SUM(jumlah) as total from tamu where datang='sudah'");
			                $data = mysqli_fetch_array($qry);

			                $qry2 = mysqli_query($konek,"select SUM(jumlah) as total2 from tamulain");
			                $data2 = mysqli_fetch_array($qry2);

			                $totall=$data['total']+$data2['total2'];
			                
			                if($totall==0){
			                	echo "0";
			                }else{
			                	echo $totall;
			                }
			            ?>
					</th>
				</tr>
				<tr>
					<td>
						2.
					</td>
					<td>
						Total semua tamu undangan yang hadir :
					</td>
					<th>
						<?php
			                $qry = mysqli_query($konek,"select count(jumlah) as total from tamu where datang='sudah'");
			                $tamu = mysqli_fetch_array($qry);

			                $qry2 = mysqli_query($konek,"select count(jumlah) as total2 from tamulain");
			                $tamulain = mysqli_fetch_array($qry2);

			                $hasil= $tamu['total']+$tamulain['total2'];
			                echo $hasil;
			            ?>
					</th>
				</tr>

				<tr>
					<td>
						3.
					</td>
					<td>
						Jumlah undangan yang hadir :
					</td>
					<th>
						<?php
			                $qry = mysqli_query($konek,"select count(jumlah) as total from tamu where datang='sudah'");
			                $data = mysqli_fetch_array($qry);
			                echo $data['total'];
			            ?>
					</th>
				</tr>
				<tr>
					<td>
						4.
					</td>
					<td>
            			Jumlah undangan tidak membawa undangan yang hadir :
					</td>
					<th>
						<?php
			                $qry = mysqli_query($konek,"select count(jumlah) as total from tamulain");
			                $data = mysqli_fetch_array($qry);
			                echo $data['total'];
			            ?>
					</th>
				</tr>
				<tr>
					<td>
						5.
					</td>
					<td>
						Jumlah undangan yang tidak hadir :
					</td>
					<th>
						<?php
			                $qry = mysqli_query($konek,"select count(jumlah) as total from tamu where datang='belum'");
			                $data = mysqli_fetch_array($qry);
			                echo $data['total'];
			            ?>
					</th>
				</tr>
			</table>
		</center>
		<br>
		<b>DATA TAMU UNDANGAN YANG HADIR</b>
		<table width="100%" border=1>
						<thead>
                            <tr>
                                <th>No</th>
                                <th>Nama Tamu</th>
                                <th>Alamat</th>
                                <th>Jumlah</th>
                                <th>Ket</th>
                            </tr>
                            </thead>
                            <tbody>
                            <?php
                            $sql=mysqli_query($konek, "SELECT * FROM tamu where datang='sudah'");
                            $no=1;
                            while($d=mysqli_fetch_array($sql)){
                                echo "<tr>
                                    <td width='40px' align='center'>$no</td>
                                    <td>$d[nama]</td>
                                    <td>$d[alamat]</td>
                                    <td>$d[jumlah]</td>
                                    <td>$d[keterangan]</td>
                                </tr>";
                                $no++;
                            }
                            ?>
                            </tbody>
		</table>

		<br>
		<b>DATA TAMU TIDAK MEMBAWA UNDANGAN YANG HADIR</b>
		<table width="100%" border=1>
						<thead>
                            <tr>
                                <th>No</th>
                                <th>Nama Tamu</th>
                                <th>Alamat</th>
                                <th>Jumlah</th>
                                <th>Ket</th>
                            </tr>
                            </thead>
                            <tbody>
                            <?php
                            $sql=mysqli_query($konek, "SELECT * FROM tamulain ORDER BY id_tamu DESC");
                            $no=1;
                            while($d=mysqli_fetch_array($sql)){
                                echo "<tr>
                                    <td width='40px' align='center'>$no</td>
                                    <td>$d[nama]</td>
                                    <td>$d[alamat]</td>
                                    <td>$d[jumlah]</td>
                                    <td>$d[keterangan]</td>
                                </tr>";
                                $no++;
                            }
                            ?>
                            </tbody>
		</table>

		<br>
		<b>DATA TAMU UNDANGAN YANG TIDAK HADIR</b>
		<table width="100%" border=1>
						<thead>
                            <tr>
                                <th>No</th>
                                <th>Nama Tamu</th>
                                <th>Alamat</th>
                                <th>Jumlah</th>
                                <th>Ket</th>
                            </tr>
                            </thead>
                            <tbody>
                            <?php
                            $sql=mysqli_query($konek, "SELECT * FROM tamu where datang='belum'");
                            $no=1;
                            while($d=mysqli_fetch_array($sql)){
                                echo "<tr>
                                    <td width='40px' align='center'>$no</td>
                                    <td>$d[nama]</td>
                                    <td>$d[alamat]</td>
                                    <td>$d[jumlah]</td>
                                    <td>$d[keterangan]</td>
                                </tr>";
                                $no++;
                            }
                            ?>
                            </tbody>
		</table>

	</td>
</tr>
</table>
<br>
</body>
</html>
