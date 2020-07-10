<?php
ob_start();
session_start();
if(isset($_SESSION['login'])){
    header('location:tamu.php');
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
                            <div class="col-xl-7 col-lg-8">
                                <div class="popup_box ">
                                    <div class="popup_inner">
                                        <div class="form_heading text-center">
                                            <h3>Login</h3>
                                            <p>isi kolom dibawah</p>
                                        </div>
                                        <?php 
                                            if($_SERVER['REQUEST_METHOD']=='POST'){
                                                $user   = $_POST['username'];
                                                $pass   = $_POST['password'];
                                                $p      = md5($pass);
                                                if($user=='' || $pass==''){
                                                    ?>
                                                    <div class="alert alert-warning alert-dismissible" role="alert">
                                                      <button type="button" class="close" data-dismiss="alert" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                                                      <?php
                                                      echo "<strong>Error!</strong> Form Belum Lengkap!!";
                                                      ?>
                                                    </div>
                                                    <?php
                                                }else{
                                                    include "koneksi.php";
                                                    $sqlLogin = mysqli_query($konek, "SELECT * FROM admin WHERE username='$user' AND password='$p'");
                                                    $jml=mysqli_num_rows($sqlLogin);
                                                    $d=mysqli_fetch_array($sqlLogin);
                                                    if($jml > 0){
                                                        session_start();
                                                        $_SESSION['login']      = TRUE;
                                                        $_SESSION['id']         = $d['idadmin'];
                                                        $_SESSION['username']   = $d['username'];
                                                        $_SESSION['namalengkap']= $d['namalengkap'];
                                                        
                                                        header('Location:./tamu.php');
                                                    }else{
                                                    ?>
                                                        <div class="alert alert-danger alert-dismissible" role="alert">
                                                          <button type="button" class="close" data-dismiss="alert" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                                                          <?php
                                                          echo "<strong>Error!</strong> Username dan Password anda Salah!!!";
                                                          ?>
                                                        </div>
                                                    <?php
                                                    }
                                                    
                                                }
                                            }
                                            ?>
                                        <form method="post" action="" role="form">
                                            <div class="row">
                                                <div class="col-xl-12">
                                                    <input type="text" name="username" placeholder="Username">
                                                </div>
                                                <div class="col-xl-12">
                                                    <input type="password" name="password" placeholder="Password">
                                                </div>
                                                <div class="col-xl-12">
                                                    <!-- <input type="submit" class="boxed_btn3" value="-" /> -->
                                                    <button  type="submit"  class="boxed_btn3">></button>
                                                </div>
                                            </div>
                                        </form>
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
    <!-- accommodation_area  -->
    <div class="accommodation_area">
        <div class="container">
                <div class="row">
                        <div class="col-xl-8 offset-xl-2">
                            <div class="section_title text-center">
                                <h3>Accommodation.  For.  Guest</h3>
                                <p>Many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using Content here content here, making it look like readable English. Many desktop publishing packages and web page editors now use.</p>
                            </div>
                        </div>
                    </div>
            <div class="row no-gutters">
                <div class="col-xl-12 col-lg-12">
                    <div class="accommondation_image">
                        <img src="img/Accommodation/1.png" alt="">
                    </div>
                </div>
                <div class="col-xl-6 col-md-6">
                    <div class="accommondation_image">
                        <img src="img/Accommodation/2.png" alt="">
                    </div>
                </div>
                <div class="col-xl-6 col-md-6">
                    <div class="accommondation_image">
                        <img src="img/Accommodation/3.png" alt="">
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!--/ accommodation_area  -->
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