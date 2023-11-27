<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="utf-8">
  <meta content="width=device-width, initial-scale=1.0" name="viewport">

  <title>Live Plays</title>
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
<?php
require_once "authcontroller/Authcontroller.php";
$auth = new AuthController;
$number=0;
$header=basename($_SERVER['PHP_SELF']);//movies.php
$results = $auth ->Selectuser($number,$header);
if(isset($_POST['quantity'])){
  if(!empty($_POST['quantity'])){
    $quantity= $_POST['quantity'];
    $name= $_POST['name'];
    $hall= $_POST['hallname'];
    $time= $_POST['time'];
    $date= $_POST['date'];
    $sub=$auth->insrtick($name,$hall,$time,$date,$quantity,$id);
  }
}
?>
   <!-- ======= Breadcrumbs ======= -->
   <div class="breadcrumbs d-flex align-items-center" style="background-image: url('assets/img/05.jpg');">
      <div class="container position-relative d-flex flex-column align-items-center" data-aos="fade">

        <h2>Live Plays</h2>
        <ol>
          <li><a href="index.php">Home</a></li>
          <li>Live Plays</li>
        </ol>

      </div>
    </div><!-- End Breadcrumbs -->

    <!-- ======= Services Section ======= -->
    <section id="blog" class="blog">
      <div class="container" data-aos="fade-up" data-aos-delay="100">

      <div class="row gy-4 posts-list">
      <style>
          /* Remove default styles for select */
select {
    border: none;
    background-color: transparent;
    -webkit-appearance: none;
    -moz-appearance: none;
    appearance: none;
    padding: 0; /* Adjust padding if necessary */
    font-family: inherit;
    font-size: inherit;
    color: inherit;
    outline: none;
}
</style>
      <?php for ($i = 0; $i < $number; $i++) {
        echo '<div class="col-xl-4 col-md-6"><form action"#" method="POST"><div class="post-item position-relative h-100">';
        
              echo'<div class="post-img position-relative overflow-hidden"><img src="'.$results[$i]['image'].'" style="width:500px;height:320px"class="img-fluid" alt=""><select class="post-date" name="date" id="date"><option>' . $results[$i]['date'] . '</option></select></div>';

              echo'<div class="post-content d-flex flex-column"><select class ="post-title" name="name" id="name"><option>' . $results[$i]['name'] . '</option></select></h3>';

                echo'<div class="meta d-flex align-items-center"><div class="d-flex align-items-center"><i class="bi bi-folder2"></i> <span class="ps-2">'.$results[$i]['description'].'</span></div></div>';
                echo '<label style="margin-top:10px;">Hall Name :  <select name="hallname" id="hallname"><option>' . $results[$i]['Hname'] . '</option></select></label>';
                echo'<label style="margin-top:10px;">Time Begin & End : <select name="time" id="time"><option>' . $results[$i]['time'] . '</option></select></label>';
                echo'<label style="margin-top:10px;">Price For One Ticket : '.$results[$i]['price'].'</label>';
                echo'<hr>';
                echo'<label for="name" class="form-label" style="margin-bottom:12px;">Number Of Tickets : </label> <input type="number" id="for1" name="quantity" min="1" max="20"></td>';
                echo'<button type="submit" class="btn btn-warning" style=" margin-top:12px;">Submit</button>';
                echo'<div>';
                echo'<a href="'.$results[$i]['link'].'"style=" margin-top:10px;">
                 <span>Trailer</span>  
                 <i class="bi bi-arrow-right"></i>
                </a>';
                echo'</div>';
                
              echo'</div>
              </form>
            </div>
            
          </div><!-- End post list item -->';
      }
      ?>
    </div><!-- End blog posts list -->

        
</div>
</section><!-- End Blog Section -->



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
  
  <script src="./assets/js/script.js"></script>

  <!-- 
    - ionicon link
  -->
  <script type="module" src="https://unpkg.com/ionicons@5.5.2/dist/ionicons/ionicons.esm.js"></script>
  <script nomodule src="https://unpkg.com/ionicons@5.5.2/dist/ionicons/ionicons.js"></script>


</body>

</html>