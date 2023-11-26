<?php
$title = "Admin - Add Halls"; 
require_once './shared/headincludes.php'; 
require_once './authcontroller/HallController.php'; 
?>
<!-- Template Main CSS File -->
<link href="assets/css/main.css" rel="stylesheet">
<link href="assets/css/halls.style.css" rel="stylesheet">
</head>
<?php 
$message = "";
$validMessage = "";
if(isset($_POST['name']) && isset($_POST['seatsnumber']))
{
  if(!empty($_POST['name']) && !empty($_POST['seatsnumber']))
  {
      
      $hallController = new HallController;
      $hall = new Hall;
      $hall->name = ucfirst($_POST['name']);
      $hall->seatsNumber = $_POST['seatsnumber'];
      if($hall->seatsNumber > 0)
      {
        if(count($hallController->getHallByName($hall->name)) == 0)
        {
            $result = $hallController->addHall($hall);
            if($result)
            {
              $validMessage = "New Hall is added Successfully";
            }
            else
            {
              $message = "An error has been occurred";
            }
        }
        else
        {
          $message = "This Hall is already exist";
        }
      }
      else
      {
        $message = "Please Enter a Valid Seats Number";
      }
      
  }
  else
  {
    $message = "Please fill All Fields";
  }
}
?>

<body>

  <!-- ======= Header ======= -->
  <!-- ======= Header ======= -->
  <?php
  require_once "./shared/headeradmin.php"
  ?>

  <main id="main">

    <!-- ======= Breadcrumbs ======= -->
    <div class="breadcrumbs d-flex align-items-center" style="background-image: url('assets/img/03.jpg');">
      <div class="container position-relative d-flex flex-column align-items-center" data-aos="fade">

        <h2>Add Halls</h2>
        <ol>
          <li><a href="index.php">Home</a></li>
          <li>Add Halls</li>
        </ol>

      </div>
    </div><!-- End Breadcrumbs -->

    <!-- ======= Our Projects Section ======= -->
    <!-- id="projects" class="projects" -->
    <section>
      <div class="container" data-aos="fade-up">
        <div class=" d-flex justify-content-center">
          <div class="form-body w-50">
            <div class="row">
              <div class="form-holder">
                <div class="form-content">
                  <div class="form-items">
                    <h3>Add New Halls</h3>
                    <p>Fill in the data below.</p>
                    <?php 
                      if($message != "")
                      {
                        ?>
                    <div class="alert alert-danger" role="alert">
                      <?php echo $message ?>
                    </div>
                    <?php
                      }
                    ?>
                    <?php 
              if($validMessage != "")
              {
                ?>
                    <div class="alert alert-success" role="alert">
                      <?php echo $validMessage ?>
                    </div>
                    <?php
              }
            ?>

                    <form class="requires-validation" novalidate method="POST">

                      <div class="col-md-12">
                        <input class="form-control" type="text" name="name" placeholder="Hall Name" required>
                        <div class="valid-feedback">Hall Name field is valid!</div>
                        <div class="invalid-feedback">Hall Name field cannot be blank!</div>
                      </div>

                      <div class="col-md-12">
                        <input class="form-control" type="number" name="seatsnumber" placeholder="Seats Number"
                          required>
                        <div class="invalid-feedback">Seats number field cannot be blank!</div>
                      </div>


                      <div class="form-button mt-3">
                        <button id="submit" type="submit" name="Add" class="btn btn-primary">Add</button>
                      </div>
                    </form>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>


      </div>
    </section><!-- End Our Projects Section -->

  </main><!-- End #main -->

  <!-- ======= Footer ======= -->
  <?php require_once './shared/footerincludes.php'; ?>

  <!-- Template Main JS File -->
  <script src="assets/js/main.js"></script>
  <script src="assets/js/halls.script.js"></script>

</body>

</html>