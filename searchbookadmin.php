<?php 
  include("koneksi.php");

  session_start();

  if(!isset($_SESSION['admin_name'])){
    header('location:login.php');
  }
  
    $name = $_POST['name'];

   $sql = "SELECT * FROM tebook join tjenjang on tebook.id_jenjang = tjenjang.id_jenjang WHERE nama_ebook LIKE '$name%'";
   $query = mysqli_query($conn,$sql);
   $data='';
   while($row = mysqli_fetch_assoc($query)) {
    ?>
    <tr>
        <td><?=$row['nama_ebook']?></td>
        <td><?=$row['jenjang']?></td>
        <td><a href='E-Book/<?php echo $row['ebook']; ?>' target='_blank'><?php echo $row['ebook']; ?></a></td>
        <td>
            <a href="edit_ebook.php?id_ebook=<?=$row['id_ebook']?>" class="link-warning"><i class="bi bi-pencil-square">Edit</i></a>
            <a href="delete_ebook.php?id=<?=$row['id_ebook']?>" onclick="return confirm('Yakin Hapus?')"><i class="bi bi-trash3">Delete</i></a>
        </td>
    </tr>
    <?php
  }

 ?>