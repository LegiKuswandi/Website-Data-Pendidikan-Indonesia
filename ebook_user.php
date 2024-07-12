<?php
  include("fungsi.php");

  session_start();

  if(!isset($_SESSION['user_name'])){
    header('location:login.php');
  }
    
  $listebook=readtebook();
  $listjenjang=readjenjang();
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
          <li><a href="partisipasi_user.php">Partisipasi Pendidikan</a></li>
          <li><a href="lembaga_user.php">Data Lembaga</a></li>
          <li><a href="butahuruf_user.php">Buta Huruf</a></li>
          <li><a  class="active" href="ebook_user.php">E-Book</a></li>
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
        <h2>E-Book</h2>
        <p>Selamat datang di halaman eBook EduDataID, di mana Anda akan menemukan koleksi 
          buku pelajaran yang dirancang untuk meningkatkan kualitas pendidikan dari tingkat Sekolah Dasar 
          (SD) hingga Sekolah Menengah Atas (SMA). Kami percaya bahwa akses yang mudah dan kualitas bahan 
          belajar yang baik adalah kunci untuk menciptakan kesuksesan belajar yang berkelanjutan, Selain itu <br>
          teman - teman juga dapat mengupload ebook yang kalian punya agar dapat membantu orang lain.</p>
      </div>
    </div><!-- End Breadcrumbs -->
    
    <section class="content">
      <div class="container-fluid">
          <div class="row">
              <div class="col-12">
                  <div class="card mt-3">
                      <div class="card-header">
                          <h3 class="card-title">Daftar E-Book</h3>
                      </div>
                      <div class="ms-3 mt-3">
                        <div class="form-outline">
                              <button type="button" class="btn btn-success" data-bs-toggle="modal" data-bs-target="#myModal">Upload E-Book</button>
                              <input class="ms-4" type="text" id="getEbook" placeholder="Cari E-Book"/>
                          </div>
                      </div> 
                      <div class="container mt-1">
                        <div class="modal" id="myModal">
                            <div class="modal-dialog">
                                <div class="modal-content">
                                    <div class="modal-header">
                                        <h5 class="modal-title">Upload E-Book</h5>
                                        <button type="button" class="btn-close" data-bs-dismiss="modal"></button>
                                    </div>
                                    <div class="modal-body">
                                        <form action="#" method="POST" id="form-add" enctype="multipart/form-data">
                                          <div class="mb-2">
                                              <label class="form-label required">Nama E-Book</label>
                                              <input type="text" class="form-control" id="nama_ebook" name="nama_ebook">
                                          </div>
                                          <div class="mb-2">
                                            <label for="chef">Jenjang</label>
                                            <select class="form-select" aria-label="Category" id="jenjang" name="jenjang" required>
                                                <?php
                                                    foreach ($listjenjang as $jenjang) {
                                                        $listjenjang = readjenjang($jenjang['id_jenjang'])
                                                        ?>
                                                            <option value="<?=$jenjang['id_jenjang']?>">
                                                                <?=$jenjang['jenjang']?>
                                                            </option>
                                                        <?php
                                                    }
                                                ?>
                                            </select>
                                        </div>
                                        <div class="mb-2">
                                          <label for="ebook" class="form-label">PDF E-Book</label>
                                          <input class="form-control" type="file" id="ebook" name="ebook" required>
                                      </div>
                                      <button type="submit" name="btn-add" id="btn-add" form="form-add" class="btn btn-primary">Submit</button>
                                      <a href="ebook_user.php"><button data-bs-target="modal" type="submit" class="btn btn-danger">Cancel</button></a>
                                      </form>
                                      <?php
                                        if (isset($_POST['btn-add'])) {
                                            // jalankan query tambah record baru
                                            $listjenjang = $_POST['jenjang'];
                                            $isAddSucceed = addEbook($_POST, $_FILES);
                                            if ($isAddSucceed > 0) {
                                                // jika penambahan sukses, tampilkan alert
                                                echo "
                                                <script>
                                                    alert('Data Berhasil Ditambahkan');
                                                    document.location.href = 'ebook_user.php';
                                                </script>";
                                            } else {
                                                echo "
                                                <script>
                                                alert('Gagal menambahkan Data !');
                                                document.location.href = 'ebook_user.php';
                                                </script>
                                                ";
                                            }
                                        }                
                                        ?>
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
                                          <th>Nama</th>
                                          <th>Jenjang</th>
                                          <th>Download E-Book</th>
                                      </tr>
                                  </thead>
                                  <tbody id="showdata">
                                  <?php
                                    foreach ($listebook as $ebook) {
                                        $listebook = readtebook($ebook['id_ebook'])
                                        ?>
                                        <tr>
                                            <td><?=$ebook['nama_ebook']?></td>
                                            <td><?=$ebook['jenjang']?></td>
                                            <td><a href='E-Book/<?php echo $ebook['ebook']; ?>' target='_blank'>Download</a></td>
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
    $('#getEbook').on("keyup", function(){
      var getEbook = $(this).val();
      $.ajax({
        method:'POST',
        url:'searchbook.php',
        data:{name:getEbook},
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