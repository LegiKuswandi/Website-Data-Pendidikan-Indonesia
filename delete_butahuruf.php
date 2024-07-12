<?php
    include('fungsi.php');

    session_start();

    if(!isset($_SESSION['admin_name'])){
        header('location:login.php');
    }

    $id = $_GET['id'];
    if ($id > 0) {
        $isDeleteSucceed = deletebh($id);  
        if ($isDeleteSucceed > 0) {
        echo "
        <script>
        alert('Delete Success !');
        document.location.href = 'butahuruf_admin.php';
        </script>
        ";
        } else {
        echo "
        <script>
        alert('Delete Failed !');
        document.location.href = 'butahuruf_admin.php';
        </script>
        ";
    }
    }
?>