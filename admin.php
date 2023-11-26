<?php
require_once "authcontroller/Authcontroller.php";
$auth = new AuthController;
$number=0;
$results = $auth ->SelectHall($number);
if(isset($_POST["movieName"])&&isset($_POST["description"])&&isset($_POST["category"])&&isset($_POST["Hall"])&&isset($_POST["quantity"])&&isset($_POST["date"])&&isset($_POST["timeSlot"])&&isset($_POST["image"])&&isset($_POST["link"])){
  if(!empty($_POST["movieName"])&&!empty($_POST["description"])&&!empty($_POST["category"])&&!empty($_POST["Hall"])&&!empty($_POST["quantity"])&&!empty($_POST["date"])&&!empty($_POST["timeSlot"])&&!empty($_POST["image"])&&!empty($_POST["link"])){
    $name = $_POST["movieName"];
    $des = $_POST["description"];
    if($_POST["category"]=='Movies'){
      $cat=1;
    }
    else if($_POST["category"]=='TV Show'){
      $cat=2;
    }
    else if($_POST["category"]=='Live Plays'){
      $cat=3;
    }
    else{
      $cat=4;
    }
    $hall = $_POST["Hall"];
    $price = $_POST["quantity"];
    $date=$_POST["date"];
    $time = $_POST["timeSlot"];
    $image= $_POST["image"];
    $link= $_POST["link"];
    if($auth->admin($name,$des,$cat,$hall,$price,$date,$time,$image,$link)){
      echo "<script>alert('Added Successfully');window.location='admin.php';</script>";
    }
    else{
      echo "<script>alert('Failed to add movie');window.location='admin.php';</script>";
    }
  }
}
?>

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
  require_once "./shared/headeradmin.php"
  ?>

  <main id="main">

    <!-- ======= Breadcrumbs ======= -->
    <div class="breadcrumbs d-flex align-items-center" style="background-image: url('assets/img/04.jpg');">
      <div class="container position-relative d-flex flex-column align-items-center" data-aos="fade">

        <h2>Admin</h2>
        <ol>
          <li><a href="index.php">Home</a></li>
          <li>Admin</li>
        </ol>

      </div>
    </div><!-- End Breadcrumbs -->

    <!-- ======= Services Section ======= -->
    <section id="services" class="services section-bg">
      <div class="container" >

        <div class="row gy-4">

          <div class="d-flex align-items-center justify-content-center">
            <div class="service-item  position-relative">
              
              <h3>Add To Cinema</h3>
              
              <form action="#" method="POST">
  <table style="border-collapse: collapse; border: 3px solid #ccc;">
    <tr style="border-bottom: 3px solid #ccc;">
      <td style="border-right: 3px solid #ccc; width: 200px;">
        <label for="movieName" style="color:red; font-size:20px; font-weight:bold;">Movie Name:</label>
      </td>
      <td style="width:400px;">
        <input type="text" id="movieName" name="movieName" required style="width: 400px; height:23px;">
      </td>
    </tr>
    <tr style="border-bottom: 3px solid #ccc;">
      <td style="border-right: 3px solid #ccc;">
        <label for="description" style="color:red; font-size:20px; font-weight:bold;">Description:</label>
      </td>
      <td>
        <textarea id="description" name="description" required style="width:400px; height:60px;"></textarea>
      </td>
    </tr>
    <tr style="border-bottom: 3px solid #ccc;">
      <td style="border-right: 3px solid #ccc;">
        <label for="category" style="color:red; font-size:20px; font-weight:bold;">Category:</label>
      </td>
      <td>
        <select id="category" name="category" style="width:400px; height:23px;">
          <option value="Movies">Movies</option>
          <option value="TV Show">TV Show</option>
          <option value="Live Plays">Live Plays</option>
          <option value="StandUp Comedy">StandUp Comedy</option>
        </select>
      </td>
    </tr>
    <tr style="border-bottom: 3px solid #ccc;">
      <td style="border-right: 3px solid #ccc;">
        <label for="databaseSelect" style="color:red; font-size:20px; font-weight:bold;">Hall Name:</label>
      </td>
      <td>
        <select id="Hall" name="Hall" style="width:400px; height:23px;">
          <!-- Options fetched from the database -->
          <?php
          for ($i = 0; $i < $number; $i++) {
              echo '<option value="' . $results[$i]['name'] . '">' . $results[$i]['name'] . '</option>';
          }
          ?>
          <!-- Add more options as needed -->
        </select>
      </td>
    </tr>
    <tr style="border-bottom: 3px solid #ccc;">
      <td style="border-right: 3px solid #ccc;">
        <label for="quantity" style="color:red; font-size:20px; font-weight:bold;">Price Of Ticket:</label>
      </td>
      <td>
        <input type="number" id="quantity" name="quantity" min="30" max="100" style="width:400px; height:23px;">
      </td>
    </tr>
    <tr style="border-bottom: 3px solid #ccc;">
      <td style="border-right: 3px solid #ccc;">
        <label for="quantity" style="color:red; font-size:20px; font-weight:bold;">Day Date :</label>
      </td>
      <td>
        <input type="date" id="date" name="date" style="width:400px; height:23px;">
      </td>
    </tr>
    <tr style="border-bottom: 3px solid #ccc;">
      <td style="border-right: 3px solid #ccc;">
        <label style="color:red; font-size:20px; font-weight:bold;">Time Slot:</label>
      </td>
      <td>
        <input type="radio" id="slot1" name="timeSlot" value="12:3 pm">
        <label for="slot1">12:3 pm</label><br>
        
        <input type="radio" id="slot2" name="timeSlot" value="3:6 pm">
        <label for="slot2">3:6 pm</label><br>
        
        <input type="radio" id="slot3" name="timeSlot" value="6:9 pm">
        <label for="slot3">6:9 pm</label><br>
        
        <input type="radio" id="slot4" name="timeSlot" value="9:12 midnight">
        <label for="slot4">9:12 midnight</label><br>
      </td>
    </tr>
    <tr style="border-bottom: 3px solid #ccc;">
      <td style="border-right: 3px solid #ccc;">
        <label for="imageUpload" style="color:red; font-size:20px; font-weight:bold;">Image Link:</label>
      </td>
      <td>
        <input type="text" id="image" name="image" style="width:400px; height:23px;">
      </td>
    </tr>
    <tr style="border-bottom: 3px solid #ccc;">
      <td style="border-right: 3px solid #ccc;">
        <label for="youtubelink" style="color:red; font-size:20px; font-weight:bold;">Trailer Link:</label>
      </td>
      <td>
        <input type="text" id="linj" name="link" style="width:400px; height:23px;">
      </td>
    </tr>
    <tr>
      <td colspan="2" style="text-align:center; border-top: 3px solid #ccc;">
        <input type="submit" value="Submit">
      </td>
    </tr>
  </table>
</form>



            </div>
          </div><!-- End Service Item -->



    
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