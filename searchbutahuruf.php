<?php 
  include("koneksi.php");

    $name = $_POST['name'];

   $sql = "SELECT * FROM tbutahuruf join tprovinsi on tbutahuruf.id_provinsi = tprovinsi.id_provinsi WHERE tahun LIKE '%$name%' order by persentase DESC";
   $query = mysqli_query($conn,$sql);
   $data='';
   while($row = mysqli_fetch_assoc($query)) {
    ?>
    <tr>
        <td><?=$row['nama_provinsi']?></td>
        <td><?=$row['persentase']?>%</td>
        <td><?=$row['tahun']?></td>
    </tr>
    <?php
  }

 ?>