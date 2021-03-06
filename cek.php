<?php
include "koneksi.php";
?>
<!doctype html>
<html class="no-js" lang="zxx">

<head>
    <meta charset="utf-8">
    <meta http-equiv="x-ua-compatible" content="ie=edge">
    <title>Wedding Nahnu & Fia</title>
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
                                        <li><a href="index.php">Beranda</a></li>
                                        <li><a href="./cek-qr">Scan QR</a></li>
                                        <li><a class="active" href="login.php">Tamu</a></li>
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
                                   <!--      <li><a href="contact.php">Contact</a></li> -->
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
    
    <!-- attend_area -->
    <div class="attending_area">
        <div class="container">
            <div class="row">
                <div class="col-xl-10 offset-xl-1 col-lg-10 offset-lg-1">
                    <div class="main_attending_area">
                        <div class="flower_1 d-none d-lg-block">
                            <img src="img/appointment/flower-top.png" alt="">
                        </div>
                        <div class="flower_2 d-none d-lg-block">
                            <img src="img/appointment/flower-bottom.png" alt="">
                        </div>
                        <div class="row justify-content-center">
                            <div class="col-xl-7 col-lg-8"  style="margin-top:-10px">
                                <div class="popup_box ">
                                    <div class="popup_inner">
                                        <div class="form_heading text-center">
                                            <img src="img/banner/flowers.png" alt="" style="margin-top: -20px;margin-bottom: 20px">
                                            <br>
                                            <?php
                                                $sql=mysqli_query($konek, "SELECT * FROM tamu WHERE id_tamu='$_POST[id_tamu]'");
                                                $d=mysqli_fetch_array($sql);

                                                if(mysqli_num_rows($sql) < 1){
                                                    ?>
                                            <h3>Code tidak terdeteksi</h3>
                                            <br>
                                            <h1><a href="tamu.php?view=tambahtamulain"><button class="boxed_btn3"><i class="fa fa-users"></i> Masukkan tamu</button></a></h1>
                                            <a href="./cek-qr"><< kembali</a>
                                        </div>
                                            <?php
                                            }else{
                                            ?>
                                            <h3>Terimakasih<br>telah hadir</h3>
                                            <!-- <a href="" class="genric-btn primary-border e-large" > -->
                                                <h3 style="font-family:tahoma;"><?php echo $d['nama']; ?></h3>
                                            <!-- </a> -->
                        
                                            <h6 style="font-family:tahoma; font-size:12px; color:#c78665;"><?php echo $d['alamat']; ?></h6>
                                        </div>
                                        <form method="post" action="aksi_tamu.php?act=update_setelahcekqr" role="form">
                                            <div class="row">
                                                <div class="col-xl-12">
                                                    <input type="hidden" name="id" value="<?php echo $_POST['id_tamu'];  ?>" />
                                                </div>

                                                <div class="col-xl-12">
                                                    <select class="form-select wide"  id="default-select" class="" name="jumlah" >
                                                        <option value="1">1 Guest</option>
                                                        <option value="2">2 Guest</option>
                                                        <option value="3">3 Guest</option>
                                                        <option value="4">4 Guest</option>
                                                        <option value="5">5 Guest</option>
                                                        <option value="6">6 Guest</option>
                                                        <option value="7">7 Guest</option>
                                                        <option value="8">8 Guest</option>
                                                        <option value="9">9 Guest</option>
                                                        <option value="10">10 Guest</option>
                                                        <option value="11">11 Guest</option>
                                                        <option value="12">12 Guest</option>
                                                    </select>
                                                </div>
                                                <div class="col-xl-12">
                                                    <textarea placeholder="Keterangan" name="keterangan"></textarea>
                                                </div>
                                                <div class="col-xl-12">
                                                    <!-- <input type="submit" class="boxed_btn3" value="-" /> -->
                                                    <button type="submit" class="boxed_btn3">submit</button>
                                                </div>
                                            </div>
                                        </form>

                                        <?php } ?>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- / attend_area -->
    
   <!-- footer_start -->
   <footer class="footer">
    <div class="footer_top">
        <div class="container">
            <div class="row">
                <div class="col-xl-12">
                    <div class="quick_links">
                        <ul>
                            <li><a href="#">Beranda</a></li>
                            <li><a href="#">Scan QR</a></li>
                            <li><a href="#">Tamu</a></li>
                     <!--        <li><a href="#">Contact</a></li> -->
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