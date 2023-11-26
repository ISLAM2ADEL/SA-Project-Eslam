<?php
$header=basename($_SERVER['PHP_SELF']);//movies.php
?>
<!DOCTYPE html>
<html lang="en">

<body>

    <!--Start navbar-->
    <header id="header" class="header d-flex align-items-center">
    <div class="container-fluid container-xl d-flex align-items-center justify-content-between">

      <a href="about.php" class="logo d-flex align-items-center">
        <!-- Uncomment the line below if you also wish to use an image logo -->
        <!-- <img src="assets/img/logo.png" alt=""> -->
        <h1>Cinema Center<span>.</span></h1>
      </a>

      <i class="mobile-nav-toggle mobile-nav-show bi bi-list"></i>
      <i class="mobile-nav-toggle mobile-nav-hide d-none bi bi-x"></i>
      <nav id="navbar" class="navbar">
        <ul>
        <?php
    echo '<li><a href="movies.php" ' . ($header == 'movies.php' ? 'class="active"' : '') . '>Movies</a></li>';
    echo '<li><a href="shows.php" ' . ($header == 'shows.php' ? 'class="active"' : '') . '>TV Shows</a></li>';
    echo '<li><a href="plays.php" ' . ($header == 'plays.php' ? 'class="active"' : '') . '>Live Plays</a></li>';
    echo '<li><a href="Standup.php" ' . ($header == 'Standup.php' ? 'class="active"' : '') . '>Standup Comedy</a></li>';
    echo '<li><a href="refund.php" ' . ($header == 'refund.php' ? 'class="active"' : '') . '>My Ticket</a></li>';
    echo '<li><a href="about.php" ' . ($header == 'about.php' ? 'class="active"' : '') . '>About</a></li>';
    ?>


      </nav><!-- .navbar -->

    </div>
  </header><!-- End Header -->
    <!--end navbar-->


</html>