<?php
    $dbhost = 'localhost';
    $dbuser = 'root';
    $dbpass = '';
    $conn = mysqli_connect($dbhost, $dbuser, $dbpass);
    
    $db_selected = mysqli_select_db($conn,  'db_pendidikan');

    if(!$conn){
        die ("Koneksi dengan database gagal: ".mysql_connect_error());
     }
?>  