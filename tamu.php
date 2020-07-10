<?php
ob_start();
session_start();
if(!isset($_SESSION['login'])){
    header('location:login.php');
}

include "koneksi.php";
?>
<!doctype html>
<html class="no-js" lang="zxx">

<head>
    <meta charset="utf-8">
    <meta http-equiv="x-ua-compatible" content="ie=edge">
    <title>Weeding</title>
    <meta name="description" content="">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <!-- <link rel="manifest" href="site.webmanifest"> -->
    <link rel="shortcut icon" type="image/x-icon" href="img/ico.png">
    <!-- Place favicon.ico in the root directory -->

    <!-- CSS here -->
    <link rel="stylesheet" href="css/bootstrap.min.css">
    <link rel="stylesheet" href="css/owl.carousel.min.css">
    <link rel="stylesheet" href="css/magnific-popup.css">
    <link rel="stylesheet" href="css/font-awesome.min.css">
    <link rel="stylesheet" href="css/themify-icons.css">
    <link rel="stylesheet" href="css/nice-select.css">
    <link rel="stylesheet" href="css/flaticon.css">
    <link rel="stylesheet" href="css/flaticon.css">
    <link rel="stylesheet" href="css/gijgo.css">
    <link rel="stylesheet" href="css/slicknav.css">
    <link rel="stylesheet" href="css/style.css">
    <!-- <link rel="stylesheet" href="css/responsive.css"> -->

    <link rel="stylesheet" type="text/css" media="screen" href="https://cdn.datatables.net/1.10.19/css/jquery.dataTables.min.css">
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
    <script src="https://cdn.datatables.net/1.10.19/js/jquery.dataTables.min.js"></script>
</head>

<body>
    <!--[if lte IE 9]>
            <p class="browserupgrade">You are using an <strong>outdated</strong> browser. Please <a href="https://browsehappy.com/">upgrade your browser</a> to improve your experience and security.</p>
        <![endif]-->

    <!-- header-->
    <header>
        <div class="header-area ">
            <div id="sticky-header" class="main-header-area">
                <div class="container">
                    <div class="row align-items-center">
                        <div class="col-xl-3 col-lg-3">
                            <div class="logo-img">
                                <a href="index.html">
                                    <img src="img/logo.png" alt="">
                                </a>
                            </div>
                        </div>
                        <div class="col-xl-9 col-lg-9">
                            <div class="main-menu  d-none d-lg-block">
                                <nav>
                                    <ul id="navigation">
                                        <li><a href="index.php">home</a></li>
                                        <li><a href="./cek-qr">Scan QR</a></li>
                                        <li><a class="active" href="login.php">Guest</a></li>
                                        <!-- <li><a href="#">blog <i class="ti-angle-down"></i></a>
                                            <ul class="submenu">
                                                <li><a href="blog.html">blog</a></li>
                                                <li><a href="single-blog.html">single-blog</a></li>
                                            </ul>
                                        </li>
                                        <li><a href="#">pages <i class="ti-angle-down"></i></a>
                                            <ul class="submenu">
                                                <li><a href="Accommodation.html">Accommodation</a></li>
                                                <li><a href="elements.html">elements</a></li>
                                            </ul>
                                        </li> -->
                                        <li><a href="contact.php">Contact</a></li>
                                        <li><a href="logout.php" id="logout">logout</a></li>
                                    </ul>
                                </nav>
                            </div>
                        </div>
                        <div class="col-12">
                            <div class="mobile_menu d-block d-lg-none"></div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </header>
    <!--/ header-->

    <!-- our_love-story -->
    <div class="love_story_area">
        <div class="container">
            <div class="row">
                <div class="col-xl-12">
                    <div class="section_title text-center">
                        <img src="img/banner/flowers.png" alt="">
                        <h3>~ Guest ~</h3>
                    </div>
                </div>
            </div>

            <?php
                $view = isset($_GET['view']) ? $_GET['view'] : null;
                switch($view){
                default:
            ?>
            <div class="row">
                <div class="col-xl-12">
                    <div class="panel-body">
                        <center>
                        <a class="boxed_btn3" style="margin-bottom: 10px" href="tamu.php?view=tambah"><i class="fa fa-plus"></i> Tambah Data</a>
                        <a class="boxed_btn3" style="margin-bottom: 10px" href="cetak_qr.php" target="_blank"><i class="fa fa-print"></i> Cetak QR-Code</a>
                        <a class="boxed_btn3" style="margin-bottom: 10px" href=""><i class="fa fa-download"></i> Download Laporan</a>
                        </center>
                        <br>
                        <table id="tabel-data" class="table table-bordered table-striped">
                            <thead>
                            <tr>
                                <th>No</th>
                                <th>ID Tamu</th>
                                <th>Nama Tamu</th>
                                <th>Alamat</th>
                                <th>*</th>
                                <th>Datang</th>
                                <th>Aksi</th>
                            </tr>
                            </thead>
                            <tbody>
                            <?php
                            $sql=mysqli_query($konek, "SELECT * FROM tamu ORDER BY id_tamu ASC");
                            $no=1;
                            while($d=mysqli_fetch_array($sql)){
                                echo "<tr>
                                    <td width='40px' align='center'>$no</td>
                                    <td>$d[id_tamu]</td>
                                    <td>$d[nama]</td>
                                    <td>$d[alamat]</td>
                                    <td>$d[posisi]</td>
                                    <td>$d[datang]</td>
                                    <td width='180px' align='center'>
                                        <a href='tamu.php?view=edit&id=$d[id_tamu]'><i class='fa fa-cog'></i></a>
                                        <a href='aksi_tamu.php?act=delete&id=$d[id_tamu]' id='hapus'><i class='fa fa-trash'></i></a>
                                    </td>
                                </tr>";
                                $no++;
                            }
                            ?>
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
            <?php
                break;
                case "tambah":

            ?>
            <div class="attending_area" style="margin-top: -130px">
            <div class="container">
            <div class="row">
                <div class="col-xl-10 offset-xl-1 col-lg-10 offset-lg-1">
                    <div class="main_attending_area">
                        <div class="row justify-content-center">
                            <div class="col-xl-7 col-lg-8">
                                <div class="popup_box ">
                                    <div class="popup_inner">
                                        <div class="form_heading text-center">
                                            <h3>Tambah data</h3>
                                            <p>isi kolom dibawah</p>
                                        </div>
                                        <form method="post" action="aksi_tamu.php?act=insert" role="form">
                                            <div class="row">
                                                <div class="col-xl-12">
                                                    <input type="text" name="nama" placeholder="Nama">
                                                </div>
                                                <div class="col-xl-12">
                                                    <input type="text" name="alamat" placeholder="Alamat">
                                                </div>
                                                <div class="col-xl-12">
                                                    <select class="form-select wide" name="posisi" id="default-select" class="">
                                                        <option value="reg">Reguler</option>
                                                        <option value="vip">VIP</option>
                                                    </select>
                                                </div>
                                                <div class="col-xl-12">
                                                    <!-- <input type="submit" class="boxed_btn3" value="-" /> -->
                                                    <button  type="submit"  class="boxed_btn3">tambah</button>
                                                </div>
                                            </div>
                                        </form>
                                        <br>
                                    <center><a href="tamu.php"><< Kembali</a></center>

                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            </div>
            </div>
            <?php
                break;
                case "edit":            
            ?>

            <div class="attending_area" style="margin-top: -130px">
            <div class="container">
            <div class="row">
                <div class="col-xl-10 offset-xl-1 col-lg-10 offset-lg-1">
                    <div class="main_attending_area">
                        <div class="row justify-content-center">
                            <div class="col-xl-7 col-lg-8">
                                <div class="popup_box ">
                                    <div class="popup_inner">
                                        <div class="form_heading text-center">
                                            <h3>Edit data</h3>
                                            <p>edit kolom dibawah</p>
                                        </div>
                                        <?php 
                                            include "koneksi.php";
                                            $id_tamu=$_GET['id'];
                                            $data = mysqli_query($konek,"select * from tamu where id_tamu='$id_tamu'");
                                            while($d = mysqli_fetch_array($data)){

                                        ?>
                                        <form method="post" action="aksi_tamu.php?act=update" role="form">
                                            <div class="row">
                                                <div class="col-xl-12">
                                                    <input type="text" name="nama" value="<?php echo $d['nama'] ?>">
                                                    <input type="hidden" name="id" value="<?php echo $d['id_tamu'] ?>">
                                                </div>
                                                <div class="col-xl-12">
                                                    <input type="text" name="alamat" value="<?php echo $d['alamat'] ?>">
                                                </div>
                                                <div class="col-xl-12">
                                                    <select class="form-select wide" name="posisi" id="default-select" class="">
                                                        <?php 
                                                            if($d['posisi']=='reg'){
                                                                echo"
                                                                <option value='reg' selected>Reguler</option>
                                                                <option value='vip'>VIP</option>
                                                                ";
                                                            }else if($d['posisi']=='vip'){
                                                                echo"
                                                                <option value='reg' >Reguler</option>
                                                                <option value='vip' selected>VIP</option>
                                                                ";
                                                            }
                                                        ?>
                                                    </select>
                                                </div>
                                                <div class="col-xl-12">
                                                    <!-- <input type="submit" class="boxed_btn3" value="-" /> -->
                                                    <button  type="submit"  class="boxed_btn3">tambah</button>
                                                </div>
                                            </div>
                                        </form>
                                        <?php } ?>
                                        <br>
                                    <center><a href="tamu.php"><< Kembali</a></center>

                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            </div>
            </div>
            <?php
                break;
            }
            ?>
        </div>
    </div>
    <!--/ our_love-story -->
    <!-- footer_start -->
    <footer class="footer">
        <div class="footer_top">
            <div class="container">
                <div class="row">
                    <div class="col-xl-12">
                        <div class="quick_links">
                            <ul>
                                <li><a href="#">Home</a></li>
                                <li><a href="#">Scan QR</a></li>
                                <li><a href="#">Guest</a></li>
                                <li><a href="#">Contact</a></li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="copy-right_text">
            <div class="container">
                <div class="footer_border"></div>
                <div class="row">
                    <div class="col-xl-12">
                        <p class="copy_right text-center">
                        <!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
Copyright &copy;<script>document.write(new Date().getFullYear());</script> All rights reserved | This template is made with <i class="fa fa-heart-o" aria-hidden="true"></i> by <a href="ade" target="_blank">MNGAD Production</a>
<!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
                        </p>
                    </div>
                </div>
            </div>
        </div>
    </footer>
    <!-- footer_end -->


    <!-- JS here -->
    <script src="js/popper.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <script src="js/owl.carousel.min.js"></script>
    <script src="js/isotope.pkgd.min.js"></script>
    <script src="js/ajax-form.js"></script>
    <script src="js/waypoints.min.js"></script>
    <script src="js/jquery.counterup.min.js"></script>
    <script src="js/imagesloaded.pkgd.min.js"></script>
    <script src="js/scrollIt.js"></script>
    <script src="js/jquery.scrollUp.min.js"></script>
    <script src="js/wow.min.js"></script>
    <script src="js/nice-select.min.js"></script>
    <script src="js/gijgo.min.js"></script>
    <script src="js/jquery.countdown.min.js"></script>
    <script src="js/jquery.slicknav.min.js"></script>
    <script src="js/jquery.magnific-popup.min.js"></script>
    <script src="js/plugins.js"></script>

    <!-- datatable -->
    <!-- <script src="jstable/jquery.dataTables.bootstrap4.min.js"></script>
    <link rel="stylesheet" href="jstable/jquery.dataTables.min.css">
    <script src="jstable/jquery.dataTables.min.js"></script> -->

    <script src="js/main.js"></script>
        <script>
            $(function(){
                $('a#logout').click(function(){
                    if(confirm('Are you sure to logout')) {
                        return true;
                    }

                    return false;
                });
            });
        </script>
        <script>
            $(function(){
                $('a#hapus').click(function(){
                    if(confirm('Yakin hapus ?')) {
                        return true;
                    }

                    return false;
                });
            });
        </script>

    <script>
        $(document).ready(function(){
            $('#tabel-data').DataTable();
        });
    </script>

</body>

</html>