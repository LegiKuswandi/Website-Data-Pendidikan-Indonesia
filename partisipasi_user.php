<?php
  include("fungsi.php");
  session_start();

  if(!isset($_SESSION['user_name'])){
    header('location:login.php');
  }
    
  $listpsd=readpsd();
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

  <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css">
  <script src="https://cdn.jsdelivr.net/npm/jquery@3.6.0/dist/jquery.min.js"></script>

  <!-- Google Fonts -->
  <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i|Raleway:300,300i,400,400i,500,500i,600,600i,700,700i|Poppins:300,300i,400,400i,500,500i,600,600i,700,700i" rel="stylesheet">
  <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
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
  <style>
        .modal-header {
            background: #5fce7f;
            color: #fff;
        }

        .required:after {
            content: "*";
            color: red;
        }
    </style>

  <!-- =======================================================
  * Template Name: Mentor
  * Updated: Mar 10 2023 with Bootstrap v5.2.3
  * Template URL: https://bootstrapmade.com/mentor-free-education-bootstrap-theme/
  * Author: BootstrapMade.com
  * License: https://bootstrapmade.com/license/
  ======================================================== -->
</head>

<body>

  <!-- ======= Header ======= -->
  <header id="header" class="fixed-top">
    <div class="container d-flex align-items-center">

      <h1 class="logo me-auto"><a href="index.html">EduDataID</a></h1>

      <nav id="navbar" class="navbar order-last order-lg-0">
        <ul>
          <li><a href="index_user.php">Home</a></li>
          <li><a class="active"  href="partisipasi_user.php">Partisipasi Pendidikan</a></li>
          <li><a href="lembaga_user.php">Data Lembaga</a></li>
          <li><a href="butahuruf_user.php">Buta Huruf</a></li>
          <li><a href="ebook_user.php">E-Book</a></li>
        </ul>
        <i class="bi bi-list mobile-nav-toggle"></i>
      </nav><!-- .navbar -->

      <a href="logout.php" class="get-started-btn">Logout</a>

    </div>
  </header><!-- End Header -->

  <main id="main">
    <!-- ======= Breadcrumbs ======= -->
    <div class="breadcrumbs" data-aos="fade-in">
      <div class="container">
        <h2>Data Partisipasi Pendidikan di Indonesia</h2>
        <p>Partisipasi pendidikan yaitu kontribusi serta keikutsertaan penduduk usia sekolah dalam pendidikan, hal tersebut dipengaruhi oleh bagaimana persepsi orang tua terhadap nilai anak di dalam keluarga. Partisipasi erat kaitanya dengan nilai anak dalam keluarga.</p>
      </div>
    </div><!-- End Breadcrumbs -->
    
    <section class="content">
      <div class="container-fluid">
          <div class="row">
              <div class="col-12">
                  <div class="card mt-3">
                      <div class="card-header">
                          <h3 class="card-title">Persentase Partisipasi Pendidikan di Indonesia</h3>
                      </div>
                      <div class="ms-3 mt-3">
                        <div class="mb-2">
                            <a href=""><button type="button" class="btn btn-success" >SD/MI</button></a>
                            <a href="partisipasi_smp_user.php"><button type="button" class="btn btn-success" >SMP/Mts</button></a>
                            <a href="partisipasi_sma_user.php"><button type="button" class="btn btn-success" >SMA/SMK/MA</button></a>
                        </div>
                        <div class="form-outline">
                            <select aria-label="Category" id="getBH" name="getBH" required>
                                    <option value="">Pilih Tahun</option>
                                    <option value="2020">2020</option>
                                    <option value="2021">2021</option>
                                    <option value="2022">2022</option>
                              </select>
                              <!-- <input class="ms-3" type="text" id="getBH" placeholder="Cari E-Book"/> -->
                        </div>
                        
                      </div> 
                      <!-- /.card-header -->
                      <div class="card-body">
                          <div class="table-responsive">
                              <table id="example1" class="table table-bordered table-striped" style="font-size: 14px;">
                                  <thead>
                                      <tr>
                                          <th>Provinsi</th>
                                          <th>Angka Partisipasi Sekolah</th>
                                          <th>Angka Partisipasi Kasar</th>
                                          <th>Angka Partisipasi Murni</th>
                                          <th>Tahun</th>
                                          <th>Jenjang</th>
                                      </tr>
                                  </thead>
                                  <tbody id="showdata">
                                  <?php
                                    foreach ($listpsd as $psd) {
                                        $listpsd = readpsd($psd['id_partisipasi'])
                                        ?>
                                        <tr>
                                            <td><?=$psd['nama_provinsi']?></td>
                                            <td><?=$psd['angka_partisipasi_sekolah']?>%</td>
                                            <td><?=$psd['angka_partisipasi_kasar']?>%</td>
                                            <td><?=$psd['angka_partisipasi_murni']?>%</td>
                                            <td><?=$psd['tahun_partisipasi']?></td>
                                            <td><?=$psd['jenjang']?></td>
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
  </section>
  <script>
    $(document).ready(function(){
    $('#getBH').on("change", function(){
      var getBH = $(this).val();
      $.ajax({
        method:'POST',
        url:'searchpsd.php',
        data:{name:getBH},
        success:function(response)
        {
              $("#showdata").html(response);
        } 
      });
    });
    });
  </script>
  </main><!-- End #main -->

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