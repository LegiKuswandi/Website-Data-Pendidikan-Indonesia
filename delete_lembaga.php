<?php
    include('fungsi.php');


    $id = $_GET['id'];
    if ($id > 0) {
        $isDeleteSucceed = deletelembaga($id);  
        if ($isDeleteSucceed > 0) {
        echo "
        <script>
        alert('Delete Success !');
        document.location.href = 'lembaga_admin.php';
        </script>
        ";
        } else {
        echo "
        <script>
        alert('Delete Failed !');
        document.location.href = 'lembaga_admin.php';
        </script>
        ";
    }
    }
?>