<?php
  include("fungsi.php");
  
  session_start();

  if(!isset($_SESSION['admin_name'])){
    header('location:login.php');
  }
  $listbh=readbutahuruf();
  $listprov=readprov();

  if (isset($_GET['id_buta_huruf'])) {
    $id = ($_GET["id_buta_huruf"]);
    $result = readQuery('tbutahuruf', 'id_buta_huruf', $id);
    $data = mysqli_fetch_assoc($result);
       if (!count($data)) {
            echo "<script>alert('Data tidak ditemukan pada database');window.location='butahuruf_admin.php';</script>";
        }
    } else {
        echo "<script>alert('Masukkan data id.');window.location='butahuruf_admin.php';</script>";
    }   

    if (isset($_POST['btn-edit-bh'])) {
        // jalankan query tambah record baru
        $isAddSucceed = updatebh($_POST, $_FILES);
        if ($isAddSucceed > 0) {
            // jika penambahan sukses, tampilkan alert
            echo "
            <script>
                alert('Data Berhasil di update');
                document.location.href = 'butahuruf_admin.php';
            </script>
        ";
        } else {
            echo "
            <script>
            alert('Tidak Ada Data yang diperbarui !');
            document.location.href = 'butahuruf_admin.php';
            </script>
            ";
        }
    }
?>

<!doctype html>
<html lang="en">
<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">  
  <link rel="shortcut icon" href="./img/fav.png" type="image/x-icon">  
  <link rel="stylesheet" href="https://kit-pro.fontawesome.com/releases/v5.12.1/css/pro.min.css">
  <link rel="stylesheet" type="text/css" href="css/styleadmin.css">  
  <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css">
  <script src="https://cdn.jsdelivr.net/npm/jquery@3.6.0/dist/jquery.min.js"></script>
  <title>EduDataID Admin Page</title>
  <script src="https://cdn.jsdelivr.net/npm/jquery@3.6.0/dist/jquery.min.js"></script>
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

    
</head>
<body class="bg-gray-100">


<!-- start navbar -->
<div class="md:fixed md:w-full md:top-0 md:z-20 flex flex-row flex-wrap items-center bg-white p-6 border-b border-gray-300">
    
    <!-- logo -->
    <div class="flex-none w-56 flex flex-row items-center">
    <h3 class="logo me-auto"><a href="index.html">EduDataID</a></h3>

      <button id="sliderBtn" class="flex-none text-right text-gray-900 hidden md:block">
        <i class="fad fa-list-ul"></i>
      </button>
    </div>
    <!-- end logo -->   
    
    <!-- navbar content toggle -->
    <button id="navbarToggle" class="hidden md:block md:fixed right-0 mr-6">
      <i class="fad fa-chevron-double-down"></i>
    </button>
    <!-- end navbar content toggle -->

    <!-- navbar content -->
    <div id="navbar" class="animated md:hidden md:fixed md:top-0 md:w-full md:left-0 md:mt-16 md:border-t md:border-b md:border-gray-200 md:p-10 md:bg-white flex-1 pl-3 flex flex-row flex-wrap justify-between items-center md:flex-col md:items-center">
      <!-- left -->
      <div class="text-gray-600 md:w-full md:flex md:flex-row md:justify-evenly md:pb-10 md:mb-10 md:border-b md:border-gray-200"></div>
        <!-- end left -->      

      <!-- right -->
      <div class="flex flex-row-reverse items-center"> 

        <!-- user -->
        <div class="dropdown relative md:static">

          <button class="menu-btn focus:outline-none focus:shadow-outline flex flex-wrap items-center">
            <div class="w-8 h-8 overflow-hidden rounded-full">
              <img class="w-full h-full object-cover" src="img/user.svg" >
            </div> 

            <div class="ml-2 capitalize flex ">
              <h1 class="text-sm text-gray-800 font-semibold m-0 p-0 leading-none"><?php echo $_SESSION['admin_name'] ?></h1>
              <i class="fad fa-chevron-down ml-2 text-xs leading-none"></i>
            </div>                        
          </button>

          <button class="hidden fixed top-0 left-0 z-10 w-full h-full menu-overflow"></button>

          <div class="text-gray-500 menu hidden md:mt-10 md:w-full rounded bg-white shadow-md absolute z-20 right-0 w-40 mt-5 py-2 animated faster">
            <!-- item -->
            <a class="px-4 py-2 block capitalize font-medium text-sm tracking-wide bg-white hover:bg-gray-200 hover:text-gray-900 transition-all duration-300 ease-in-out" href="logout.php">
              <i class="fad fa-user-times text-xs mr-1"></i> 
              log out
            </a>
          </div>
        </div>
      </div>
    </div>
  </div>


<!-- strat wrapper -->
<div class="h-screen flex flex-row flex-wrap">
  
    <!-- start sidebar -->
  <div id="sideBar" class="relative flex flex-col flex-wrap bg-white border-r border-gray-300 p-6 flex-none w-64 md:-ml-64 md:fixed md:top-0 md:z-30 md:h-screen md:shadow-xl animated faster">
    

    <!-- sidebar content -->
    <div class="flex flex-col">

      <!-- sidebar toggle -->
      <div class="text-right hidden md:block mb-4">
        <button id="sideBarHideBtn">
          <i class="fad fa-times-circle"></i>
        </button>
      </div>
      <!-- end sidebar toggle -->

      <p class="uppercase text-xs text-gray-600 mb-4 tracking-wider">homes</p>
      
      <!-- link -->
      <a href="./e-book_admin.php" class="mb-3 capitalize font-medium text-sm hover:text-teal-600 transition ease-in-out duration-500">
          <i class="fad fa-chart-pie text-xs mr-2"></i>                
          E-Book
        </a>
        <a href="./butahuruf_admin.php" class="mb-3 capitalize font-medium text-sm hover:text-teal-600 transition ease-in-out duration-500">
          <i class="fad fa-chart-pie text-xs mr-2"></i>                
          Buta Huruf
        </a>
        <a href="./partisipasi_admin.php" class="mb-3 capitalize font-medium text-sm hover:text-teal-600 transition ease-in-out duration-500">
          <i class="fad fa-chart-pie text-xs mr-2"></i>                
          Partisipasi Pendidikan
        </a>
        <a href="./lembaga_admin.php" class="mb-3 capitalize font-medium text-sm hover:text-teal-600 transition ease-in-out duration-500">
          <i class="fad fa-chart-pie text-xs mr-2"></i>                
          Lembaga Pendidikan
        </a>

    </div>
    <!-- end sidebar content -->

  </div>
  <!-- end sidbar -->
  <main id="main">
        <!-- ======= Form Add Section ======= -->
    <section id="add-menu" class="about">

      <div class="container" data-aos="fade-up">
            <div class="gradient-custom-1 h-100">
                <div style="margin-left: 400px;" class="mask d-flex align-items-center h-100">
                <div class="container">
                    <div class="section-header">
                        <br>
                        <p>Edit<span> Data Buta Huruf </span>Baru</p>
                    </div>
                    <form action="#" method="POST" id="form-add">
                    <input type="hidden" name="id" id="id" value="<?=$data['id_buta_huruf']?>">
                        <div class="mb-3">
                        <label for="provinsi">Provinsi</label>
                            <select class="form-select" aria-label="Category" id="provinsi" name="provinsi" required>
                            <?php
                                    while ($listProv = mysqli_fetch_assoc($listprov))
                                    {
                                ?>
                                <option value="<?=$listProv['id_provinsi']?>" <?php 
                                  if ($listProv['id_provinsi'] == $data['id_provinsi']) {?>
                                  selected
                                  <?php 
                                  }
                                  ?>>
                                    <?=$listProv['nama_provinsi']?>
                                </option>
                                <?php
                                }
                                ?>
                            </select>
                        </div>
                        <div class="mb-3">
                            <label for="persentase" class="form-label">Persentase</label>
                            <input class="form-control" type="number" step="any" id="persentase" name="persentase" value="<?=$data['persentase']?>" required>
                        </div>
                        <div class="mb-3">
                            <label for="tahun" class="form-label">Tahun</label>
                            <input class="form-control" id="tahun" name="tahun" value="<?=$data['tahun']?>" required>
                        </div>
                        <button type="submit" name="btn-edit-bh" id="btn-edit-bh" form="form-add" class="btn btn-success">Submit</button>
                        <a href="butahuruf_admin.php"><button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Cancel</button></a>
                    </form>
                    </div>
                </div>
                </div>
            </div>
      </div>
    </section>
</div>
<!-- end wrapper -->

<!-- script -->
<script src="https://cdn.jsdelivr.net/npm/apexcharts"></script>
<script src="js/scripts.js"></script>
<!-- end script -->

</body>
</html>
