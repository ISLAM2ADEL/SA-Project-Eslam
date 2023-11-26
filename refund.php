<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="utf-8">
  <meta content="width=device-width, initial-scale=1.0" name="viewport">

  <title>cinema centre</title>
  <meta content="" name="description">
  <meta content="" name="keywords">

  <!-- Favicons -->
  <link href="assets/img/06.png" rel="icon">
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
  <?php
  require_once "./shared/header.php"
  ?>

  <main id="main">

    <!-- ======= Breadcrumbs ======= -->
    <div class="breadcrumbs d-flex align-items-center" style="background-image: url('assets/img/04.jpg');">
      <div class="container position-relative d-flex flex-column align-items-center" data-aos="fade">

        <h2>My Ticket</h2>
        <ol>
          <li><a href="index.php">Home</a></li>
          <li><a href="movies.php">Movies</a></li>
        </ol>

      </div>
    </div><!-- End Breadcrumbs -->

    <!-- ======= Services Section ======= -->
    <section id="services" class="services section-bg">
      <div class="container" data-aos="fade-up">

      <?php
require_once "authcontroller/Authcontroller.php";
$user = 2;
$auth = new AuthController;
$ar = $auth->my_ticket($user);
$ar_row = count($ar);
$col = 3; // Number of columns
$row = ceil($ar_row / $col); // Use ceil to round up if there are remaining rows

for ($x = 0; $x < $row; $x++) {
    echo "<div class='row gy-4' style='margin-bottom: 20px;'>";

    for ($i = 0; $i < $col; $i++) {
        $index = $x * $col + $i;

        if ($index < $ar_row) {
            $id = $ar[$index]['id'];
            $img = $ar[$index]['image'];
            $des = $ar[$index]['description'];
            $name= $ar[$index]['name'];
            $ticket_num=$ar[$index]['ticket_num'];
            $hname=$ar[$index]['Hname'];
            $time=$ar[$index]['time'];
            $price=$ar[$index]['price'];
            echo "<div class='col-lg-4 col-md-6' data-aos='fade-up' data-aos-delay='100'>";
            echo "<div class='service-item  position-relative'>";
            echo "<img src='$img'  alt='Icon Image' width='300' height='200'>";
            echo "<h3>$name</h3>";
            echo "<p>$des</p>";
            echo "<p>Hall:  $hname</p>";
            echo "<p>Time:  $time</p>";
            echo "<p>Price: $price</p>";
            echo "<p>Ticket Nummber: $ticket_num</p>";
            echo "<form action='refund.php' method ='post' >";
            echo "<button type='submit' class='btn btn-warning'  style='margin-top: 10px;' formaction='refund.php'>Refund</button>";
            echo "</form>";
            echo "</div>";
            echo "</div>";
        }
    }

    echo "</div>";
}
?>





         
         

          

          
        

      </div>
    </section><!-- End Services Section -->

    <!-- ======= Servie Cards Section ======= -->
   
    <!-- ======= Alt Services Section 2 ======= -->
   
    <!-- ======= Testimonials Section ======= -->
   
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