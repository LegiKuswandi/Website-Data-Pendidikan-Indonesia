<?php 
  include("koneksi.php");
    $name = $_POST['name'];

   $sql = "SELECT * FROM tebook join tjenjang on tebook.id_jenjang = tjenjang.id_jenjang WHERE nama_ebook LIKE '$name%'";
   $query = mysqli_query($conn,$sql);
   $data='';
   while($row = mysqli_fetch_assoc($query)) {
    ?>
    <tr>
        <td><?=$row['nama_ebook']?></td>
        <td><?=$row['jenjang']?></td>
        <td><a href='E-Book/<?php echo $row['ebook']; ?>' target='_blank'>Download</a></td>
    </tr>
    <?php
  }

 ?>