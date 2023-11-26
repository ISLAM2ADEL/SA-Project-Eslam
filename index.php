<?php
require_once "authcontroller/Authcontroller.php";
$name="";
$password="";
$error1="";
$error2="";
if(isset($_POST["name"])&&isset($_POST["password"])){
  if(!empty($_POST["name"])&&!empty($_POST["password"])){
    $name=$_POST["name"];
    $password=$_POST["password"];
    $auth=new AuthController;
    $login_result=$auth->login($name,$password);
    if ($login_result === 1) {
      // Successful login, redirect to a success page or perform actions
      header("Location: movies.php");
      exit();
      }
      else if ($login_result === 2) {
        // Successful login, redirect to a success page or perform actions
        header("Location: admin.php");
        exit();
        } else {
          // Failed login, set an error message
          $error1 = "Invalid username ";
      }
    }
  }


  if(isset($_POST["newname"])&&isset($_POST["newpassword"])&&isset($_POST["newphone"])){
    if(!empty($_POST["newname"])&&!empty($_POST["newpassword"])&&!empty($_POST["newphone"])){
      $name=$_POST["newname"];
      $password=$_POST["newpassword"];
      $phone=$_POST["newphone"];
      $auth=new AuthController;
      $login_result=$auth->register($name,$password,$phone);
      if ($login_result === true) {
        // Successful login, redirect to a success page or perform actions
        header("Location: movies.php");
        exit();
        } else {
            // Failed login, set an error message
            $error2 = "Invalid username ";
        }
      }
    }

?>
<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="utf-8">
  <meta content="width=device-width, initial-scale=1.0" name="viewport">

  <title>Cinema Center</title>
  <meta content="" name="description">
  <meta content="" name="keywords">

  <!-- Favicons -->
  <link href="assets/img/favicon.png" rel="icon">
  <link href="assets/img/apple-touch-icon.png" rel="apple-touch-icon">

  <!-- Google Fonts -->
  <link rel="preconnect" href="https://fonts.googleapis.com">
  <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
  <link href="https://fonts.googleapis.com/css2?family=Open+Sans:ital,wght@0,300;0,400;0,500;0,600;0,700;1,300;1,400;1,600;1,700&family=Roboto:ital,wght@0,300;0,400;0,500;0,600;0,700;1,300;1,400;1,500;1,600;1,700&family=Work+Sans:ital,wght@0,300;0,400;0,500;0,600;0,700;1,300;1,400;1,500;1,600;1,700&display=swap" rel="stylesheet">

  <!-- Vendor CSS Files -->
  <link href="assets/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
  <link href="assets/vendor/bootstrap-icons/bootstrap-icons.css" rel="stylesheet">
  <link href="assets/vendor/fontawesome-free/css/all.min.css" rel="stylesheet">
  <link href="assets/vendor/aos/aos.css" rel="stylesheet">
  <link href="assets/vendor/glightbox/css/glightbox.min.css" rel="stylesheet">
  <link href="assets/vendor/swiper/swiper-bundle.min.css" rel="stylesheet">

  <!-- Template Main CSS File -->
  <link href="assets/css/main.css" rel="stylesheet">

  <!-- =======================================================
  * Template Name: UpConstruction
  * Updated: Sep 18 2023 with Bootstrap v5.3.2
  * Template URL: https://bootstrapmade.com/upconstruction-bootstrap-construction-website-template/
  * Author: BootstrapMade.com
  * License: https://bootstrapmade.com/license/
  ======================================================== -->
</head>

<body>

  <!-- ======= Header ======= -->
  <header id="header" class="header d-flex align-items-center">
    <div class="container-fluid container-xl d-flex align-items-center justify-content-between">
      <!--
      <a href="index.html" class="logo d-flex align-items-center">
        <h1>Cinema Center<span>.</span></h1>
      </a>
      -->
      <i class="mobile-nav-toggle mobile-nav-show bi bi-list"></i>
      <i class="mobile-nav-toggle mobile-nav-hide d-none bi bi-x"></i>
      <!--
         <nav id="navbar" class="navbar">
        <ul>
          <li><a href="index.html" class="active">Home</a></li>
          <li><a href="about.html">About</a></li>
          <li><a href="services.html">Movies</a></li>
          <li><a href="projects.html">TV Shows</a></li>
          <li><a href="blog.html">Live Plays</a></li>
          <li><a href="contact.html">Stanup Comedy</a></li>
        </ul>
      </nav>
      -->
     

    </div>
  </header><!-- End Header -->

  <!-- ======= Hero Section ======= -->
  <section id="hero" class="hero">

    <div class="info d-flex align-items-center">
      <div class="container">
        <div class="row justify-content-center">
          <div class="col-lg-6 text-center">
            <h2 data-aos="fade-down">Welcome to<br> <span>Cinema Center</span></h2>
            <p data-aos="fade-up">Welcome to a world where stories come alive on the silver screen. Explore, escape, and immerse yourself in the magic of cinema. Your ticket to unforgettable moments begins here. Join us as we celebrate the art of storytelling through the lens of movies.</p>
            <a data-aos="fade-up" data-aos-delay="200" href="#get-started" class="btn-get-started">Get Started</a>
          </div>
        </div>
      </div>
    </div>

    <div id="hero-carousel" class="carousel slide" data-bs-ride="carousel" data-bs-interval="5000">

      <div class="carousel-item active" style="background-image: url(assets/img/hero-carousel/hero-carousel-1.jpg)"></div>
      <div class="carousel-item" style="background-image: url(assets/img/hero-carousel/hero-carousel-2.jpg)"></div>
      <div class="carousel-item" style="background-image: url(assets/img/hero-carousel/hero-carousel-3.jpg)"></div>
      <div class="carousel-item" style="background-image: url(assets/img/hero-carousel/hero-carousel-4.jpg)"></div>
      <div class="carousel-item" style="background-image: url(assets/img/hero-carousel/hero-carousel-5.jpg)"></div>

      <a class="carousel-control-prev" href="#hero-carousel" role="button" data-bs-slide="prev">
        <span class="carousel-control-prev-icon bi bi-chevron-left" aria-hidden="true"></span>
      </a>

      <a class="carousel-control-next" href="#hero-carousel" role="button" data-bs-slide="next">
        <span class="carousel-control-next-icon bi bi-chevron-right" aria-hidden="true"></span>
      </a>

    </div>

  </section><!-- End Hero Section -->

  <main id="main">

    <!-- ======= Get Started Section ======= -->
    <section id="get-started" class="get-started section-bg">
      <div class="container">

        <div class="row justify-content-between gy-4">

          <div class="col-lg-6" data-aos="fade">
          <form method="post"  >
    <h3>Log-in</h3>
    <div class="row gy-3">
      <?php if($error1!="")
        echo '<div class="alert alert-danger" role="alert">Email or Password is not correct !</div>';
      ?>
        <div class="col-md-12">
            <input type="text" name="name" class="form-control" placeholder="User Name" required>
        </div>
        
        <div class="col-md-12">
            <input type="password" class="form-control" name="password" placeholder="Password" required>
        </div>

        <div class="col-md-12 text-center">
            <button type="submit" class="btn btn-warning">Log In</button>
        </div>
    </div>
</form>

          </div><!-- End Quote Form -->

          <div class="col-lg-6" data-aos="fade">
            <form method="post" >
              <h3>Sign-up</h3>
              <div class="row gy-3">
              <?php if($error2!="")
        echo '<div class="alert alert-danger" role="alert">Username is Already Taken!</div>';
      ?>
                <div class="col-md-12">
                  <input type="text" name="newname" class="form-control" placeholder="User Name" required>
                </div>

                <div class="col-md-12 ">
                  <input type="password" class="form-control" name="newpassword" placeholder="password" required>
                </div>

                <div class="col-md-12">
                  <input type="text" class="form-control" name="newphone" placeholder="Phone" required>
                </div>

                <div class="col-md-12 text-center">
                  <button type="submit" class="btn btn-warning">Sign UP</button>
                </div>

              </div>
            </form>
          </div><!-- End Quote Form -->

        </div>

      </div>
    </section><!-- End Get Started Section -->

    <!-- ======= Constructions Section ======= -->
    
  </main><!-- End #main -->

  <!-- ======= Footer ======= -->
  <?php
  require_once "./shared/footer.php"
  ?>
  <!-- End Footer -->

  <a href="#" class="scroll-top d-flex align-items-center justify-content-center"><i class="bi bi-arrow-up-short"></i></a>

  <div id="preloader"></div>

  <!-- Vendor JS Files -->
  <script src="assets/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
  <script src="assets/vendor/aos/aos.js"></script>
  <script src="assets/vendor/glightbox/js/glightbox.min.js"></script>
  <script src="assets/vendor/isotope-layout/isotope.pkgd.min.js"></script>
  <script src="assets/vendor/swiper/swiper-bundle.min.js"></script>
  <script src="assets/vendor/purecounter/purecounter_vanilla.js"></script>
  <script src="assets/vendor/php-email-form/validate.js"></script>
  
  
  <!-- Template Main JS File -->
  <script src="assets/js/main.js"></script>

</body>

</html>