<?php
//variabel koneksi
$konek = mysqli_connect("localhost","root","","qr_code");

if(!$konek){
	echo "Koneksi Database Gagal...!!!";
}

?>