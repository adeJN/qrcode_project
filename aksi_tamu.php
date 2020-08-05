<?php
session_start();
if(!isset($_SESSION['login'])){
	header('location:login.php');
}
include "koneksi.php";

// jika ada get act
if(isset($_GET['act'])){

	//proses simpan data
	if($_GET['act']=='insert'){
		//buat id otomatis
		$query = "SELECT max(id_tamu) as maxid FROM tamu";
		$hasil = mysqli_query($konek,$query);
		$data = mysqli_fetch_array($hasil);
		$kodeid = $data['maxid'];
		// mengambil angka atau bilangan dalam kode anggota terbesar,
		// dengan cara mengambil substring mulai dari karakter ke-1 diambil 6 karakter
		// misal 'BRG001', akan diambil '001'
		// setelah substring bilangan diambil lantas dicasting menjadi integer
		$noUrut = (int) substr($kodeid, 3, 3);
		// bilangan yang diambil ini ditambah 1 untuk menentukan nomor urut berikutnya
		$noUrut++;
		// membentuk kode anggota baru
		// perintah sprintf("%03s", $noUrut); digunakan untuk memformat string sebanyak 3 karakter
		// misal sprintf("%03s", 12); maka akan dihasilkan '012'
		// atau misal sprintf("%03s", 1); maka akan dihasilkan string '001'
		$char = "GST";
		$kodehasilID = $char . sprintf("%03s", $noUrut);
		// echo $kodehasilID;

		//variabel dari elemen form
		$nama = $_POST['nama'];
		$alamat  = $_POST['alamat'];
		$posisi  = $_POST['posisi'];

		$cektamu=mysqli_num_rows(mysqli_query($konek, "SELECT * FROM tamu WHERE nama='$_POST[nama]'"));

		if($cektamu > 0) {
		        echo '<script language="javascript">
		              alert ("Nama sudah ada");
		              window.location="tamu.php?view=tambah";
		              </script>';
		              exit();
		}else{			
			//proses simpan data admin
			$simpan = mysqli_query($konek, "INSERT INTO tamu(id_tamu,nama,alamat,posisi,datang,jumlah,keterangan) 
							VALUES ('$kodehasilID','$nama','$alamat','$posisi','belum',0,'')");
			
			if($simpan){
				// BUAT QRCODE
				// tampung data kiriman
				$nama = $kodehasilID;
			
				// include file qrlib.php
				include "phpqrcode/qrlib.php";
			
				//Nama Folder file QR Code kita nantinya akan disimpan
				$tempdir = "temp/";
			
				//jika folder belum ada, buat folder 
				if (!file_exists($tempdir)){
					mkdir($tempdir);
				}
			
				#parameter inputan
				$isi_teks = $nama;
				$namafile = $nama.".png";
				$quality = 'H'; //ada 4 pilihan, L (Low), M(Medium), Q(Good), H(High)
				$ukuran = 5; //batasan 1 paling kecil, 10 paling besar
				$padding = 2;
			
				QRCode::png($isi_teks,$tempdir.$namafile,$quality,$ukuran,$padding);
				echo "Qr code telah dibuat";
				header('location:tamu.php');
			}else{
				echo '<script language="javascript">
		              alert ("Data tidak valid");
		              window.location="tamu.php?view=tambah";
		              </script>';
		              exit();
			}
		}
	}

	if($_GET['act']=='update'){
		// menangkap data yang di kirim dari form
		$id_tamu=$_POST['id'];
		$nama = $_POST['nama'];
		$posisi = $_POST['posisi'];
		$alamat = $_POST['alamat'];
		$datang = $_POST['datang'];
		$jumlah = $_POST['jumlah'];
		$keterangan = $_POST['keterangan'];

		// update data ke database
		mysqli_query($konek,"update tamu set nama='$nama', alamat='$alamat', posisi='$posisi', datang='$datang', jumlah='$jumlah', keterangan='$keterangan'  where id_tamu='$id_tamu'");

		// mengalihkan halaman kembali ke index.php
		header("location:tamu.php");

	}  // akhir proses edit data

	if($_GET['act']=='delete'){
		// menangkap data yang di kirim dari form
		$id_tamu=$_GET['id'];
		$namafile=$id_tamu.".png";
		// update data ke database
		mysqli_query($konek, "DELETE FROM tamu WHERE id_tamu='$id_tamu'");
		unlink("temp/$namafile");
		// mengalihkan halaman kembali ke index.php
		header("location:tamu.php");

	}

	if($_GET['act']=='deletetamulain'){
		// menangkap data yang di kirim dari form
		$id_tamu=$_GET['id'];
		// update data ke database
		mysqli_query($konek, "DELETE FROM tamulain WHERE id_tamu='$id_tamu'");
		// mengalihkan halaman kembali ke index.php
		header("location:tamu.php");

	}

	if($_GET['act']=='update_setelahcekqr'){
		// menangkap data yang di kirim dari form
		$id_tamu=$_POST['id'];
		$jumlah = $_POST['jumlah'];
		$keterangan = $_POST['keterangan'];
		$datang = "sudah";

		// update data ke database
		mysqli_query($konek,"update tamu set datang='$datang', jumlah='$jumlah', keterangan='$keterangan'  where id_tamu='$id_tamu'");

		// mengalihkan halaman kembali ke index.php
		header("location:tamu.php");

	}  // akhir proses edit data

	if($_GET['act']=='updatetamulain'){
		// menangkap data yang di kirim dari form
		$id_tamu=$_POST['id'];
		$nama = $_POST['nama'];
		$alamat = $_POST['alamat'];
		$jumlah = $_POST['jumlah'];
		$keterangan = $_POST['keterangan'];

		// update data ke database
		mysqli_query($konek,"update tamulain set nama='$nama', alamat='$alamat', jumlah='$jumlah', keterangan='$keterangan'  where id_tamu='$id_tamu'");

		// mengalihkan halaman kembali ke index.php
		header("location:tamu.php");

	}  // akhir proses edit data

	if($_GET['act']=='inserttamulain'){
		// menangkap data yang di kirim dari form
		$nama = $_POST['nama'];
		$alamat = $_POST['alamat'];
		$jumlah = $_POST['jumlah'];
		$keterangan = $_POST['keterangan'];

		$cektamu=mysqli_num_rows(mysqli_query($konek, "SELECT * FROM tamulain WHERE nama='$_POST[nama]'"));

		if($cektamu > 0) {
		        echo '<script language="javascript">
		              alert ("Nama sudah ada");
		              window.location="tamu.php?view=tambahtamulain";
		              </script>';
		              exit();
		}else{
		// simpan data ke database
		$simpan = mysqli_query($konek, "INSERT INTO tamulain(nama,alamat,jumlah,keterangan) 
							VALUES ('$nama','$alamat','$jumlah','$keterangan')");

		// mengalihkan halaman kembali ke index.php
		echo '<script language="javascript">
		              alert ("data sudah tersimpan");
		              window.location="tamu.php";
		              </script>';
		              exit();
		}

	}else{
		header('location:tamu.php');
	}

} // akhir get act

else{
	header('location:tamu.php');
}
?>