<?php
$title = "Admin - Delete Customers"; 
require_once './shared/headincludes.php'; 
require_once './authcontroller/UserController.php';

$userController = new UserController;
$users = $userController->getAllUsers();

$deleteMessage = "";

if(isset($_POST['delete']))
{
  if(!empty($_POST['id']))
  {
      $result = $userController->deleteUserById($_POST['id']);
      $userController = $userController->getAllUsers();
      if($result)
      {
        $deleteMessage = "Customer Is Deleted Successfully.";
        header("location: delete.php");
      }
  }
}
?>

<!-- Template Main CSS File -->
<link href="assets/css/main.css" rel="stylesheet">
<link href="assets/css/deletecustomer.css" rel="stylesheet" />
</head>

<body>

  <!-- ======= Header ======= -->
  <?php
  require_once "./shared/headeradmin.php"
  ?>

  <main id="main">

    <!-- ======= Breadcrumbs ======= -->
    <div class="breadcrumbs d-flex align-items-center" style="background-image: url('assets/img/05.jpg');">
      <div class="container position-relative d-flex flex-column align-items-center" data-aos="fade">

        <h2>Delete Customer</h2>
        <ol>
          <li><a href="index.php">Home</a></li>
          <li>Delete Customer</li>
        </ol>

      </div>
    </div><!-- End Breadcrumbs -->

    <!-- ======= Blog Section ======= -->
    <section class="intro">
      <div class="container" data-aos="fade-up" data-aos-delay="100">
        <?php
        if($deleteMessage != "")
        {
            ?>
        <div class="alert alert-success w-50 offset-3" role="alert">
          <?php echo $deleteMessage ?>
        </div>
        <?php
        }
          ?>
        <?php
        if(count($users) == 0)
        {
            ?>
        <div class="alert alert-warning w-50 offset-3" role="alert">
          There Is No Users Right Now.
        </div>
        <?php
        }
        else
        {
          ?>
        <div class="bg-image h-100" style="background-color: #f5f7fa;">
          <div class="mask d-flex align-items-center h-100">
            <div class="container">
              <div class="row justify-content-center bg-white">
                <div class="col-12">
                  <div class="card">
                    <div class="card-body p-0">
                      <div class="table-responsive table-scroll" data-mdb-perfect-scrollbar="true"
                        style="position: relative;">
                        <table class="table table-striped mb-0">
                          <thead style="background-color: #002d72;">
                            <tr>
                              <th scope="col">#</th>
                              <th scope="col">Username</th>
                              <th scope="col">Phone Number</th>
                              <th scope="col">Delete</th>
                            </tr>
                          </thead>
                          <tbody>
                            <?php
                            foreach($users as $userT)
                            {
                                $user = new User;
                                $user->id = $userT['id'];
                                $user->username = $userT['username'];
                                $user->phoneNumber = $userT['telephone'];
                              ?>
                            <tr>
                              <td><?php echo $user->id ?></td>
                              <td><?php echo $user->username ?></td>
                              <td><?php echo $user->phoneNumber ?></td>
                              <td>
                                <form method="POST">
                                  <input type="hidden" name="id" value="<?php echo $user->id ?>">
                                  <button class="btn btn-danger" name="delete">
                                    <i class="fa-solid fa-trash"></i>
                                    Delete
                                  </button>
                                </form>
                              </td>
                            </tr>
                            <?php

                            }
                            ?>

                          </tbody>
                        </table>
                      </div>
                    </div>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
        <?php

        }
        ?>


      </div>
    </section><!-- End Blog Section -->

  </main><!-- End #main -->

  <!-- ======= Footer ======= -->
  <?php require_once './shared/footerincludes.php'; ?>

  <!-- Template Main JS File -->
  <script src="assets/js/main.js"></script>

</body>

</html>