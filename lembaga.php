<?php
  include("fungsi.php");
    
  $listlb=readlembaga();
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
          <li><a href="index.html">Home</a></li>
          <li><a href="partisipasi.php">Partisipasi Pendidikan</a></li>
          <li><a class="active" href="lembaga.php">Data Lembaga</a></li>
          <li><a href="butahuruf.php">Buta Huruf</a></li>
          <li><a href="ebook.php">E-Book</a></li>
        </ul>
        <i class="bi bi-list mobile-nav-toggle"></i>
      </nav><!-- .navbar -->

      <a href="login.php" class="get-started-btn">Login</a>

    </div>
  </header><!-- End Header -->

  <main id="main">
    <!-- ======= Breadcrumbs ======= -->
    <div class="breadcrumbs" data-aos="fade-in">
      <div class="container">
        <h2>Lembaga Pendidikan Yang Masih Tertinggal</h2>
        <p>Mutu pendidikan di Indonesia masihlah tertinggal jauh jika dibandingkan dengan mutu pendidikan negara lain. Seperti yang kita ketahui, pendidikan di Indonesia terkesan buruk. Di Indonesia, mutu pendidikan di desa tidak sebanding dengan mutu pendidikan di kota. Mutu pendidikan di desa atau daerah tertinggal masih jauh dari kata baik mengenai kualitasnya. Masih banyak sarana dan prasarana yang kurang memadai, serta tenaga pengajar yang tidak kompeten dan jumlahnya yang lebih sedikit dibandingkan di kota. Mulai saat ini, permasalahan mutu pendidikan di Indonesia harus mulai dicarikan solusinya.</p>
      </div>
    </div><!-- End Breadcrumbs -->
    
    <section class="content">
      <div class="container-fluid">
          <div class="row">
              <div class="col-12">
                  <div class="card mt-3">
                      <div class="card-header">
                          <h3 class="card-title">Data Lembaga Pendidikan Yang Masih Tertinggal</h3>
                      </div>
                      <div class="ms-3 mt-3">
                        <div class="form-outline">
                            <button type="button" class="btn btn-success me-3" data-bs-toggle="modal" data-bs-target="#myModal">Lapor Data Lembaga</button>
                            <select aria-label="Category" id="getlb" name="getlb" required>
                                    <option value="">Pilih jenjang</option>
                                    <option value="SD/MI">SD/MI</option>
                                    <option value="SMP/Mts">SMP/Mts</option>
                                    <option value="SMA/SMK/MA">SMA/SMK/MA</option>
                              </select>
                              <!-- <input class="ms-3" type="text" id="getBH" placeholder="Cari E-Book"/> -->
                        </div>
                        
                      </div>
                      <div class="container mt-1">
                        <div class="modal" id="myModal">
                            <div class="modal-dialog">
                                <div class="modal-content">
                                    <div class="modal-header">
                                        <button type="button" class="btn-close" data-bs-dismiss="modal"></button>
                                    </div>
                                    <div class="modal-body">
                                        <form action="#" method="POST" id="form-add" enctype="multipart/form-data">
                                          <p>Login atau Register untuk melakukan lapor lembaga pendidikan</p>
                                      </form>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div> 
                      <!-- /.card-header -->
                      <div class="card-body">
                          <div class="table-responsive">
                              <table id="example1" class="table table-bordered table-striped" style="font-size: 14px;">
                                  <thead>
                                      <tr>
                                          <th>Nama Lembaga</th>
                                          <th>Provinsi</th>
                                          <th>Jalan</th>
                                          <th>Jumlah Guru</th>
                                          <th>Jumlah Murid</th>
                                          <th>Jenjang</th>
                                          <th>fasilitas</th>
                                      </tr>
                                  </thead>
                                  <tbody id="showdata">
                                  <?php
                                    foreach ($listlb as $lb) {
                                        $listtfs = readtfs($lb['id_lembaga'])
                                        ?>
                                        <tr>
                                            <td><?=$lb['nama_lembaga']?></td>
                                            <td><?=$lb['nama_provinsi']?></td>
                                            <td><?=$lb['alamat']?></td>
                                            <td><?=$lb['jumlah_pengajar']?></td>
                                            <td><?=$lb['jumlah_murid']?></td>
                                            <td><?=$lb['jenjang']?></td>
                                            <td><?php
                                                foreach($listtfs as $tfs){
                                                    echo$tfs['nama_fasilitas'].", ";
                                                }
                                            ?></td>
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
    $('#getlb').on("change", function(){
      var getBH = $(this).val();
      $.ajax({
        method:'POST',
        url:'searchlembaga.php',
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