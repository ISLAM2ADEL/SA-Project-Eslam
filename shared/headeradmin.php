<?php
$header=basename($_SERVER['PHP_SELF']);//movies.php
?>
<!DOCTYPE html>
<html lang="en">

<body>

    <!--Start navbar-->
    <header id="header" class="header d-flex align-items-center">
    <div class="container-fluid container-xl d-flex align-items-center justify-content-between">

      <a href="admin.php" class="logo d-flex align-items-center">
        <!-- Uncomment the line below if you also wish to use an image logo -->
        <!-- <img src="assets/img/logo.png" alt=""> -->
        <h1>Cinema Center<span>.</span></h1>
      </a>

      <i class="mobile-nav-toggle mobile-nav-show bi bi-list"></i>
      <i class="mobile-nav-toggle mobile-nav-hide d-none bi bi-x"></i>
      <nav id="navbar" class="navbar">
        <ul>
        <?php
    echo '<li><a href="admin.php" ' . ($header == 'admin.php' ? 'class="active"' : '') . '>Admin</a></li>';
    echo '<li><a href="Add.php" ' . ($header == 'Add.php' ? 'class="active"' : '') . '>Add Halls</a></li>';
    echo '<li><a href="delete.php" ' . ($header == 'delete.php' ? 'class="active"' : '') . '>Delete customer</a></li>';
?>

      </nav><!-- .navbar -->

    </div>
  </header><!-- End Header -->
    <!--end navbar-->


</html>