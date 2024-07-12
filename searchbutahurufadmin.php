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
        <td>
            <a href="edit_butahuruf.php?id_buta_huruf=<?=$bh['id_buta_huruf']?>" class="link-warning"><i class="bi bi-pencil-square">Edit</i></a>
            <a href="delete_butahuruf.php?id=<?=$bh['id_buta_huruf']?>" onclick="return confirm('Yakin Hapus?')"><i class="bi bi-trash3">Delete</i></a>
        
        </td>
    </tr>
    <?php
  }

 ?>