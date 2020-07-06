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
            <div class="row">
                <div class="col-xl-12">
                    
                    <div class="panel-body">
                        <a class="btn btn-primary" style="margin-bottom: 10px" href="data_tamu.php?view=tambah">Tambah Data</a>
                        <table class="table table-bordered table-striped">
                            <tr>
                                <th>No</th>
                                <th>ID Tamu</th>
                                <th>Nama Tamu</th>
                                <th>Alamat</th>
                                <th>Datang</th>
                                <th>Aksi</th>
                            </tr>
                            <?php
                            $sql=mysqli_query($konek, "SELECT * FROM tamu ORDER BY id_tamu ASC");
                            $no=1;
                            while($d=mysqli_fetch_array($sql)){
                                echo "<tr>
                                    <td width='40px' align='center'>$no</td>
                                    <td>$d[id_tamu]</td>
                                    <td>$d[nama]</td>
                                    <td>$d[alamat]</td>
                                    <td>$d[datang]</td>
                                    <td width='180px' align='center'>
                                        <a class='btn btn-danger btn-sm' href='buatQRCode.php?id=$d[id_tamu]&nomor=$d[nama]'>Buat Kode QR</a>
                                        <a class='btn btn-success btn-sm' href='cetak_QR.php?id=$d[id_tamu]' target='_blank'>Cetak</a>
                                    </td>
                                </tr>";
                                $no++;
                            }
                            ?>
                        </table>
                    </div>

                </div>
            </div>
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
    <script src="js/vendor/modernizr-3.5.0.min.js"></script>
    <script src="js/vendor/jquery-1.12.4.min.js"></script>
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

    <!--contact js-->
    <script src="js/contact.js"></script>
    <script src="js/jquery.ajaxchimp.min.js"></script>
    <script src="js/jquery.form.js"></script>
    <script src="js/jquery.validate.min.js"></script>
    <script src="js/mail-script.js"></script>

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


</body>

</html>