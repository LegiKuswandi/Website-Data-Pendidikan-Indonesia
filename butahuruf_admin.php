<?php
  include("fungsi.php");
    
  session_start();

  if(!isset($_SESSION['admin_name'])){
    header('location:login.php');
  }
  $listbh=readbutahuruf();
  $listprov=readprov();
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
  <section class="content">
      <div class="container-fluid">
          <div class="row">
              <div class="col-12">
                  <div class="card mt-1">
                      <div class="card-header">
                          <h3 class="card-title">Data Buta Huruf</h3>
                      </div>
                      <div class="ms-3 mt-3">
                        <div class="form-outline d-flex justify-content-end">
                            <select class="me-4" aria-label="Category" id="getBH" name="getBH" required>
                                    <option value="">Pilih Tahun</option>
                                    <option value="2020">Tertinggi di 2020</option>
                                    <option value="2021">Tertinggi di 2021</option>
                                    <option value="2022">Tertinggi di 2022</option>
                              </select>
                              <a class="me-4" href="tambah_butahuruf.php"><button type="button" class="btn btn-success">Tambah Data</button></a>
                          </div>
                      </div>
                      <!-- /.card-header -->
                      <div class="card-body">
                          <div class="table-responsive">
                              <table id="example1" class="table table-bordered table-striped" style="width: 1185px;" style="font-size: 14px;" >
                              <thead>
                                      <tr>
                                          <th>Provinsi</th>
                                          <th>Persentase</th>
                                          <th>Tahun</th>
                                          <th>Aksi</th>
                                      </tr>
                                  </thead>
                                  <tbody id="showdata">
                                  <?php
                                    foreach ($listbh as $bh) {
                                        $lisbh = readbutahuruf($bh['id_buta_huruf'])
                                        ?>
                                        <tr>
                                            <td><?=$bh['nama_provinsi']?></td>
                                            <td><?=$bh['persentase']?>%</td>
                                            <td><?=$bh['tahun']?></td>
                                            <td>
                                                <a href="edit_butahuruf.php?id_buta_huruf=<?=$bh['id_buta_huruf']?>" class="link-warning"><i class="bi bi-pencil-square">Edit</i></a>
                                                <a href="delete_butahuruf.php?id=<?=$bh['id_buta_huruf']?>" onclick="return confirm('Yakin Hapus?')"><i class="bi bi-trash3">Delete</i></a>
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
  </section>
  <script>
    $(document).ready(function(){
    $('#getBH').on("change", function(){
      var getBH = $(this).val();
      $.ajax({
        method:'POST',
        url:'searchbutahurufadmin.php',
        data:{name:getBH},
        success:function(response)
        {
              $("#showdata").html(response);
        } 
      });
    });
    });
  </script>
</div>
<!-- end wrapper -->

<!-- script -->
<script src="https://cdn.jsdelivr.net/npm/apexcharts"></script>
<script src="js/scripts.js"></script>
<!-- end script -->

</body>
</html>
