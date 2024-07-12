<?php 
  include("koneksi.php");

    $name = $_POST['name'];

   $sql = "SELECT * 
   FROM tpartisipasi 
   JOIN tprovinsi ON tpartisipasi.id_provinsi = tprovinsi.id_provinsi 
   JOIN tjenjang ON tjenjang.id_jenjang = tpartisipasi.id_rentang 
   WHERE tjenjang.id_jenjang = 1 AND tpartisipasi.tahun_partisipasi LIKE '%$name%'";
   $query = mysqli_query($conn,$sql);
   $data='';
   while($row = mysqli_fetch_assoc($query)) {
    ?>
    <tr>
        <td><?=$row['nama_provinsi']?></td>
        <td><?=$row['angka_partisipasi_sekolah']?>%</td>
        <td><?=$row['angka_partisipasi_kasar']?>%</td>
        <td><?=$row['angka_partisipasi_murni']?>%</td>
        <td><?=$row['tahun_partisipasi']?></td>
        <td><?=$row['jenjang']?></td>
    </tr>
    <?php
  }

 ?>