<?php
  include("fungsi.php");
    
  session_start();

  if(!isset($_SESSION['user_name'])){
    header('location:login.php');
  }

?>

<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="utf-8">
  <meta content="width=device-width, initial-scale=1.0" name="viewport">

  <title>EduDataID</title>
  <meta content="" name="description">
  <meta content="" name="keywords">

  <!-- Favicons -->
  <link href="assets/img/favicon.png" rel="icon">
  <link href="assets/img/apple-touch-icon.png" rel="apple-touch-icon">

  <!-- Google Fonts -->
  <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i|Raleway:300,300i,400,400i,500,500i,600,600i,700,700i|Poppins:300,300i,400,400i,500,500i,600,600i,700,700i" rel="stylesheet">

  <!-- Vendor CSS Files -->
  <link href="assets/vendor/animate.css/animate.min.css" rel="stylesheet">
  <link href="assets/vendor/aos/aos.css" rel="stylesheet">
  <link href="assets/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
  <link href="assets/vendor/bootstrap-icons/bootstrap-icons.css" rel="stylesheet">
  <link href="assets/vendor/boxicons/css/boxicons.min.css" rel="stylesheet">
  <link href="assets/vendor/remixicon/remixicon.css" rel="stylesheet">
  <link href="assets/vendor/swiper/swiper-bundle.min.css" rel="stylesheet">

  <!-- Template Main CSS File -->
  <link href="assets/css/style.css" rel="stylesheet">
</head>

<body>

  <!-- ======= Header ======= -->
  <header id="header" class="fixed-top">
    <div class="container d-flex align-items-center">

      <h1 class="logo me-auto"><a href="index.html">EduDataID</a></h1>

      <nav id="navbar" class="navbar order-last order-lg-0">
        <ul>
          <li><a class="active" href="index.html">Home</a></li>
          <li><a href="partisipasi_user.php">Partisipasi Pendidikan</a></li>
          <li><a href="lembaga_user.php">Data Lembaga</a></li>
          <li><a href="butahuruf_user.php">Buta Huruf</a></li>
          <li><a href="ebook_user.php">E-Book</a></li>
        </ul>
        <i class="bi bi-list mobile-nav-toggle"></i>
      </nav><!-- .navbar -->

      <a href="logout.php" class="get-started-btn">Logout</a>

    </div>
  </header><!-- End Header -->

  <!-- ======= Hero Section ======= -->
  <section id="hero" class="d-flex justify-content-center align-items-center">
    <div class="container position-relative" data-aos="zoom-in" data-aos-delay="100">
        <h2>Welcome <?php echo $_SESSION['user_name'] ?></h2>
      <h1>EduDataID</h1>
      <h2>Mengungkap Wawasan untuk Pendidikan Berkualitas</h2>
      <a href="partisipasi_user.php" class="btn-get-started">Temukan Data</a>
    </div>
  </section><!-- End Hero -->

  <main id="main">

    <!-- ======= About Section ======= -->
    <section id="about" class="about">
      <div class="container" data-aos="fade-up">

        <div class="row">
          <div class="col-lg-6 order-1 order-lg-2" data-aos="fade-left" data-aos-delay="100">
            <img src="assets/img/about.jpg" class="img-fluid" alt="">
          </div>
          <div class="col-lg-6 pt-4 pt-lg-0 order-2 order-lg-1 content">
            <h3>Kesenjangan Kualitas Pendidikan</h3>
            <p>
              Di Negara kita masih banyak kita temui perbedaan kualitas pendidikan antara sekolah favorit di Kota 
              dengan sekolah sekolah di desa. Perbedaan ini bisa di lihat dari fasilitas, di sekolah favorit 
              menyediakan fasilitas yang sangat lengkap yang dapat menunjang siswa dalam media pembelajaran. 
              Sedangkan di sekolah pinggiran kota/desa favorite minim fasilitas.
            </p><br>
            <p>
              Di pulau Jawa saja kesenjangan ini masih bisa kita rasakan. Ini membuat kesenjangan antara si miskin dan 
              si kaya masih besar dan masih nyata, yang seharusnya dunia pendidikan mampu memberikan pendidikan yg 
              berkualitas tanpa melihat status ekonomi. Semua anak di Bangsa ini berhak mendapatkan fasilitas 
              pendidikan yang sama, dimana fasilitas tersebut mumpuni untuk mengasah skill, dan menggali potensi 
              diri. Karena semua anak di Bangsa ini sama, sama sama Generasi Bangsa. 
            </p>

          </div>
        </div>

      </div>
    </section><!-- End About Section -->
  </main>
  <!-- ======= Footer ======= -->
  <footer id="footer">

    <div class="footer-top">
      <div class="container">
        <div class="row">

          <div class="col-lg-3 col-md-6 footer-contact">
            <h3>EduDataID</h3>
            <p>
              Jalan Sarijadi <br>
              Bandung,  40151<br>
              Indonesia <br><br>
              <strong>Phone:</strong> +62 5589 55488 5544<br>
              <strong>Email:</strong> edudataid@gmail.com<br>
            </p>
          </div>
        </div>
      </div>
    </div>
  </footer><!-- End Footer -->

  <div id="preloader"></div>
  <a href="#" class="back-to-top d-flex align-items-center justify-content-center"><i class="bi bi-arrow-up-short"></i></a>

  <!-- Vendor JS Files -->
  <script src="assets/vendor/purecounter/purecounter_vanilla.js"></script>
  <script src="assets/vendor/aos/aos.js"></script>
  <script src="assets/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
  <script src="assets/vendor/swiper/swiper-bundle.min.js"></script>
  <script src="assets/vendor/php-email-form/validate.js"></script>

  <!-- Template Main JS File -->
  <script src="assets/js/main.js"></script>

</body>

</html>