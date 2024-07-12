<?php
include('koneksi.php');
if(isset($_POST['submit'])){

    $name = mysqli_real_escape_string($conn, $_POST['name']);
    $email = mysqli_real_escape_string($conn, $_POST['email']);
    $pass = md5($_POST['pass']);
    $cpass = md5($_POST['cpass']);
    $user_type = $_POST['type'];
 
    $select = " SELECT * FROM tlogin WHERE email = '$email' && password = '$pass' ";
 
    $result = mysqli_query($conn, $select);
 
    if(mysqli_num_rows($result) > 0){
 
       $error[] = 'user sudah ada!';
 
    }else{
 
       if($pass != $cpass){
          $error[] = 'password tidak sama!';
       }else{
          $insert = "INSERT INTO tlogin(name, email, password, type) VALUES('$name','$email','$pass','$user_type')";
          mysqli_query($conn, $insert);
          header('location:login.php');
       }
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
              <h3>Register<strong> EduDataID</strong></h3>
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
                <label for="name">Nama</label>
                <input type="text" class="form-control" id="name" name="name">
              </div>
              <div class="form-group first">
                <label for="email">E-Mail</label>
                <input type="email" class="form-control" id="email" name="email">
              </div>
              <div class="form-group last mb-4">
                <label for="password">Password</label>
                <input type="password" class="form-control" id="password" name="pass">
              </div>
              <div class="form-group last mb-4">
                <label for="password">Confirm Password</label>
                <input type="password" class="form-control" id="password" name="cpass">
              </div>
              <input type="hidden" name="type" id="type" value="user">
              <div class="d-flex mb-3 align-items-center">
              </div>
              <input type="submit" name="submit" value="Register" class="btn text-white btn-block btn-primary">
              <p class="mt-2">already have an account? <a href="login.php">login now</a></p>
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