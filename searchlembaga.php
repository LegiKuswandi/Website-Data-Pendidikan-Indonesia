<?php 
  include("koneksi.php");
  include("fungsi.php");
    $name = $_POST['name'];

   $sql = "SELECT * FROM tlembaga JOIN tprovinsi on tlembaga.id_provinsi = tprovinsi.id_provinsi join tjenjang on tlembaga.id_jenjang = tjenjang.id_jenjang WHERE jenjang LIKE '$name%'";
   $query = mysqli_query($conn,$sql);
   $data='';
   while($row = mysqli_fetch_assoc($query)) {
    $listtfs = readtfs($row['id_lembaga'])
    ?>
    <tr>
    <td><?=$row['nama_lembaga']?></td>
    <td><?=$row['nama_provinsi']?></td>
    <td><?=$row['alamat']?></td>
    <td><?=$row['jumlah_pengajar']?></td>
    <td><?=$row['jumlah_murid']?></td>
    <td><?=$row['jenjang']?></td>
    <td><?php
        foreach($listtfs as $tfs){
            echo$tfs['nama_fasilitas'].", ";
        }
    ?></td>
    </tr>
    <?php
  }

 ?>