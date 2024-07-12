<?php

include('koneksi.php');

session_start();

if(isset($_POST['submit'])){

  $email = mysqli_real_escape_string($conn, $_POST['email']);
  $pass = md5($_POST['pass']);

  $select = " SELECT * FROM tlogin WHERE email = '$email' && password = '$pass' ";

  $result = mysqli_query($conn, $select);

   if(mysqli_num_rows($result) > 0){

      $row = mysqli_fetch_array($result);

      if($row['type'] == 'admin'){

         $_SESSION['admin_name'] = $row['name'];
         header('location:e-book_admin.php');

      }elseif($row['type'] == 'user'){

         $_SESSION['user_name'] = $row['name'];
         header('location:index_user.php');

      }
     
   }else{
      $error[] = 'E-Mail/Password salah atau anda tidak punya akun!!';
   }

};
?>

<!doctype html>
<html lang="en">
  <head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <link href="https://fonts.googleapis.com/css?family=Roboto:300,400&display=swap" rel="stylesheet">

    <link rel="stylesheet" href="fonts/icomoon/style.css">

    <link rel="stylesheet" href="css/owl.carousel.min.css">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="css/bootstrap.min.css">
    
    <!-- Style -->
    <link rel="stylesheet" href="css/style.css">

    <title>Login #8</title>
  </head>
  <body>
  

  
  <div class="content">
    <div class="container">
      <div class="row">
        <div class="col-md-6 order-md-2">
          <img src="images/undraw_file_sync_ot38.svg" alt="Image" class="img-fluid">
        </div>
        <div class="col-md-6 contents">
          <div class="row justify-content-center">
            <div class="col-md-8">
              <div class="mb-4">
              <h3>Login<strong> EduDataID</strong></h3>
            </div>
            <form action="#" method="post">
            <?php
              if(isset($error)){
                foreach($error as $error){
                    echo '<span class="error-msg">'.$error.'</span>';
                };
              };
              ?>
              <div class="form-group first">
                <label for="email">E-Mail</label>
                <input type="email" class="form-control" id="email" name="email">
              </div>
              <div class="form-group last mb-4">
                <label for="password">Password</label>
                <input type="password" class="form-control" id="password" name="pass">
              </div>
              <div class="d-flex mb-3 align-items-center">
                <label class="control control--checkbox mb-0"><span class="caption">Remember me</span>
                  <input type="checkbox" checked="checked"/>
                  <div class="control__indicator"></div>
                </label>
                <span class="ml-auto"><a href="register.php" class="forgot-pass">Register</a></span> 
              </div>
              <input type="submit" name="submit" value="Log In" class="btn text-white btn-block btn-primary">
              <span class="ml-auto"><a href="index.html" class="forgot-pass">Lanjut tanpa login</a></span>
            </form>
            </div>
          </div>
          
        </div>
        
      </div>
    </div>
  </div>

  
    <script src="js/jquery-3.3.1.min.js"></script>
    <script src="js/popper.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <script src="js/main.js"></script>
  </body>
</html>