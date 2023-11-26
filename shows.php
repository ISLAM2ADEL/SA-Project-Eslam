<?php
require_once "authcontroller/Authcontroller.php";
$auth = new AuthController;
$number=0;
$header=basename($_SERVER['PHP_SELF']);
$results = $auth ->Selectuser($number,$header);
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
  <!-- ======= Header ======= -->
  <?php
  require_once "./shared/header.php"
  ?>

  <main id="main">

    <!-- ======= Breadcrumbs ======= -->
    <div class="breadcrumbs d-flex align-items-center" style="background-image: url('assets/img/03.jpg');">
      <div class="container position-relative d-flex flex-column align-items-center" data-aos="fade">

        <h2>TV Shows</h2>
        <ol>
          <li><a href="index.php">Home</a></li>
          <li>TV Shows</li>
        </ol>

      </div>
    </div><!-- End Breadcrumbs -->

    <!-- ======= Our Projects Section ======= -->
    <style>
      .swiper {
    width: 95%;
    height: 85%;
    border-radius: 20px;
    overflow: hidden;
  }

  .swiper::selection{
    user-select: none;
  }

  .swiper-slide {
    text-align: center;
    font-size: 18px;
    background: #fff;
    display: flex;
    justify-content: center;
    align-items: center;
  }

  .swiper-slide .image .black{
    width: 100%;
    height: 100%;
    position: absolute;
    background: linear-gradient(to bottom, rgba(0,0,0,0.0),rgba(0,0,0,0.9));
  }

  .swiper-slide .image .black h1{
    font-size: 30px;
    text-align: left;
    position: relative;
    top: 60%;
    left: 5%;
    color: #fff;
  }

  .swiper-slide .image .black .star{
    color: #ffd500;
    text-align: left;
    font-size: 16px;
    margin: 10px 0;
    position: relative;
    top: 60%;
    left: 5%;
  }

  .swiper-slide .image .black p{
    width: 550px;
    text-align: justify;
    font-size: 16px;
    color: #cccccc;
    margin: 10px 0;
    position: relative;
    top: 60%;
    left: 5%;
    line-height: 23px;
    font-family: "Ink Free";
  }

  .swiper-slide .image .black .genre{
    text-align: left;
    font-size: 16px;
    margin: 13px 0;
    position: relative;
    top: 60%;
    left: 5%;
  }

  .swiper-slide .image .black .genre a.category{
    background: #282931;
    text-decoration: none;
    color: #cccccc;
    padding: 2px 7px;
  }

  .swiper-slide .image .black .genre a.category span{
    color: #ffe100;
  }

  .swiper-slide .image .black .watch{
    width: 700px;
    text-align: left;
    display: flex;
    font-size: 16px;
    margin: 10px 0;
    position: relative;
    top: 60%;
    left: 5%;
  }

  .swiper-slide .image .black .watch i{
    width: 40px;
    height: 40px;
    line-height: 40px;
    font-size: 20px;
    text-align: center;
    background-color: #ffe100;
    border-radius: 50%;
    cursor: pointer;
  }

  .swiper-slide .image .black .watch p{
    position: relative;
    left: 15px;
    font-family: sans-serif;
  }

  .swiper-slide img {
    display: block;
    width: 100%;
    height: 100%;
    object-fit: cover;
  }

  .swiper {
    margin-left: auto;
    margin-right: auto;
  }
  table {
        width: 500px; /* Set the width */
        height: 400px; /* Set the height */
    }

    /* Style for the table cells (optional) */
    table td {
        padding: 10px;
        border: 1px solid #000; /* Border for visualization */
    }

      </style>
    <section >
    <div class="swiper mySwiper">
        <div class="swiper-wrapper">
          <?php for ($i = 0; $i < $number; $i++) {
            echo '<div class="swiper-slide">';
            echo    '<div class="row">';
            echo'<table border="4" ><tbody><tr>';
            echo      '<td rowspan="12">';
            echo            '<img src="' . $results[$i]['image'] . '" style="width:400px; height=300px;"  alt="Half Page Image">';
            echo        '</td>'        ;
            echo '<td rowspan="2" colspan="2">';
            if ($header == 'movies.php') {
                echo 'Movie Information';
            } else if ($header == 'shows.php') {
                echo 'TV Show Information';
            } else if ($header == 'plays.php') {
                echo 'Live Play Information';
            } else {
                echo 'StandUp comedy Information';
            }
            echo '</td></tr>';            echo'        <tr><td></td></tr>';
            echo'            <form action="#" method="GET">';
            echo'<tr>';
            echo'              <td><label for="name" class="form-label">Movie Name : </label></td>';
            echo'             <td><select id="category" name="name" style="border:none; -webkit-appearance: none; pointer-events: none;"><option value="Movies">'.$results[$i]['name'].'</option></select></td><tr>';
            echo'          <tr>';
            echo'              <td><label for="name" class="form-label">Description : </label></td>';
            echo'             <td><select id="category" name="des" style="border:none; -webkit-appearance: none; pointer-events: none;"> <option value="Movies">'.$results[$i]['description'].'</option></select></td></tr>';
            echo'          <tr>';
            echo'              <td><label for="name" class="form-label">Hall Name : </label></td>';
            echo'              <td><select id="category" name="hall" style="border:none; -webkit-appearance: none; pointer-events: none;"><option value="Movies">'.$results[$i]['Hname'].'</option></select></td></tr>';
            echo'          <tr>';
            echo'              <td><label for="name" class="form-label">Movie Time : </label></td>';
            echo'              <td><select id="category" name="time" style="border:none; -webkit-appearance: none; pointer-events: none;"><option value="Movies">'.$results[$i]['time'].'</option></select></td></tr>';
            echo'          <tr>';
            echo'              <td><label for="name" class="form-label">Price For One Ticket : </label><td>';
            echo'              <select id="category" name="price" style="border:none; -webkit-appearance: none; pointer-events: none;"><option value="Movies">'.$results[$i]['price'].'</option></select></tr>';
            echo'          <tr>';
            echo'          <tr>';
            echo'              <td><label for="name" class="form-label">Watch Trailer  </label></td>';
            echo '<td><a href="' . $results[$i]['link'] . '"><i class="fab fa-youtube" style="font-size:28px; color:red"></i></a></td></tr>';
            echo'          <tr>';
            echo'              <td colspan="2"><label for="name" class="form-label">Number Of Tickets : </label>';
            echo'             <input type="number" id="for1" name="quantity" min="1" max="20"></td>';
            echo'          </tr>';
            echo'</div>';
            echo'          <tr>';
            echo'          <td colspan="2"><button type="submit" class="btn btn-warning">Submit</button></td></tr>';
            echo'</tbody></table>';
            echo'      </form>';
            echo'  </div>';
            echo'</div>';
            
            echo'<!-- Other swiper slides here -->';
          }
            ?>
        </div>
        <div class="swiper-button-next"></div>
        <div class="swiper-button-prev"></div>
    </div>
</section>

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
<!-- 
    - custom js link
  -->
  <script src="https://cdn.jsdelivr.net/npm/swiper@9/swiper-bundle.min.js"></script>

  <!-- Initialize Swiper -->
  <script>
    var swiper = new Swiper(".mySwiper", {
      slidesPerView: 1,
      spaceBetween: 30,
      loop: true,
      pagination: {
        el: ".swiper-pagination",
        clickable: true,
      },
      navigation: {
        nextEl: ".swiper-button-next",
        prevEl: ".swiper-button-prev",
      },
    });
  </script>
  <!-- Template Main JS File -->
  <script src="assets/js/main.js"></script>

</body>

</html>