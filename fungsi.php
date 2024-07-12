<?php
    include('koneksi.php');

    
    function readtebook(){
        global $conn;
        
        $query = 'SELECT * FROM tebook JOIN tjenjang on tebook.id_jenjang = tjenjang.id_jenjang';
        $result = mysqli_query($conn, $query);
        
        return $result;
    }

    function readpsd(){
        global $conn;
        
        $query = 'SELECT * FROM tpartisipasi JOIN tprovinsi on tpartisipasi.id_provinsi = tprovinsi.id_provinsi JOIN tjenjang on tjenjang.id_jenjang = tpartisipasi.id_rentang WHERE id_jenjang = 1';
        $result = mysqli_query($conn, $query);
        
        return $result;
    }

    function readpsmp(){
        global $conn;
        
        $query = 'SELECT * FROM tpartisipasi JOIN tprovinsi on tpartisipasi.id_provinsi = tprovinsi.id_provinsi JOIN tjenjang on tjenjang.id_jenjang = tpartisipasi.id_rentang WHERE id_jenjang = 2';
        $result = mysqli_query($conn, $query);
        
        return $result;
    }

    function readpsma(){
        global $conn;
        
        $query = 'SELECT * FROM tpartisipasi JOIN tprovinsi on tpartisipasi.id_provinsi = tprovinsi.id_provinsi JOIN tjenjang on tjenjang.id_jenjang = tpartisipasi.id_rentang WHERE id_jenjang = 3';
        $result = mysqli_query($conn, $query);
        
        return $result;
    }

    function readpartisi(){
        global $conn;
        
        $query = 'SELECT * FROM tpartisipasi JOIN tprovinsi on tpartisipasi.id_provinsi = tprovinsi.id_provinsi JOIN tjenjang on tjenjang.id_jenjang = tpartisipasi.id_rentang';
        $result = mysqli_query($conn, $query);
        
        return $result;
    }
    
    function readjenjang(){
        global $conn;
        
        $query = 'SELECT * FROM tjenjang';
        $result = mysqli_query($conn, $query);
        
        return $result;
    }

    function readprov(){
        global $conn;
        
        $query = 'SELECT * FROM tprovinsi';
        $result = mysqli_query($conn, $query);
        
        return $result;
    }

    function readbutahuruf(){
        global $conn;
        
        $query = 'SELECT * FROM tbutahuruf JOIN tprovinsi on tbutahuruf.id_provinsi = tprovinsi.id_provinsi';
        $result = mysqli_query($conn, $query);
        
        return $result;
    }

    function readlembaga(){
        global $conn;
        
        $query = 'SELECT * FROM tlembaga JOIN tprovinsi on tlembaga.id_provinsi = tprovinsi.id_provinsi join tjenjang on tlembaga.id_jenjang = tjenjang.id_jenjang';
        $result = mysqli_query($conn, $query);
        
        return $result;
    }

    function readfasilitas(){
        global $conn;
        $query = "SELECT * from tfasilitas";
        $result = mysqli_query($conn, $query);


        return $result;
    }

    function readtfs($lembaga){
        global $conn;

        $query = "SELECT * FROM tfs JOIN tfasilitas ON tfs.id_fasilitas = tfasilitas.id_fasilitas WHERE tfs.id_lembaga =".$lembaga;
        $result = mysqli_query($conn, $query);

        return $result;
    }
    
    function readQuery($table, $id, $find){
        global $conn;
        $query = "SELECT * FROM ".$table." WHERE ".$id."=".$find;
        $result = mysqli_query($conn, $query);

        return $result;
    }
    
    function addEbook($data, $file){
       
        global $conn;
        $ebook = $file['ebook']['name'];
        $tempNamaEbook = $file['ebook']['tmp_name'];
        $direktori = 'E-book/' . $ebook;
        $isMoved = move_uploaded_file($tempNamaEbook, $direktori);
        $jenjang = $data['jenjang'];
        $nama_ebook = $data['nama_ebook'];


        $query = "INSERT INTO tebook VALUES('', '$nama_ebook', '$ebook', '$jenjang')";
        $result = mysqli_query($conn, $query);


        $isSucceed = mysqli_affected_rows($conn);
        // mengembalikan nilai sukses
        return $isSucceed;
    }

    function addlembaga($data, $file, $listfasilitas){
       
        global $conn;
        $namalembaga = $data['nama_lembaga'];
        $alamat = $data['alamat'];
        $pengajar = $data['pengajar'];
        $murid = $data['murid'];
        $jenjang = $data['jenjang'];
        $provinsi = $data['provinsi'];


        $query = "INSERT INTO tlembaga VALUES('', '$namalembaga', '$alamat', '$pengajar', '$murid', '$provinsi', '$jenjang')";
        $result = mysqli_query($conn, $query);


        $isSucceed = mysqli_affected_rows($conn);
        if ($isSucceed > 0) {
            $query = "SELECT id_lembaga from tlembaga WHERE nama_lembaga LIKE '$namalembaga'";
            $result = mysqli_query($conn, $query);
            while($data = mysqli_fetch_assoc($result))
            {
                $id = $data['id_lembaga'];
            }
            foreach ($listfasilitas as $fasilitas) {
                $query = "INSERT INTO tfs VALUES('','$fasilitas', '$id')";
                $result = mysqli_query($conn, $query);
            }
        }
        // mengembalikan nilai sukses
        return $isSucceed;
    }

    function addbutahuruf($data, $file){
       
        global $conn;
        $provinsi = $data['provinsi'];
        $tahun = $data['tahun'];
        $persentase = $data['persentase'];

        $query = "INSERT INTO tbutahuruf VALUES('', '$persentase', '$tahun', '$provinsi')";
        $result = mysqli_query($conn, $query);


        $isSucceed = mysqli_affected_rows($conn);
        // mengembalikan nilai sukses
        return $isSucceed;
    }

    function addpartisipasi($data, $file){
       
        global $conn;
        $provinsi = $data['provinsi'];
        $aps = $data['aps'];
        $apk = $data['apk'];
        $apm = $data['apm'];
        $tahun = $data['tahun'];
        $jenjang = $data['jenjang'];

        $query = "INSERT INTO tpartisipasi VALUES('', '$aps', '$apk', '$apm', '$tahun', '$provinsi', '$jenjang')";
        $result = mysqli_query($conn, $query);


        $isSucceed = mysqli_affected_rows($conn);
        // mengembalikan nilai sukses
        return $isSucceed;
    }

    function deleteebook($id){
        global $conn;
        $ebook = readtebook($id);
        $query = "DELETE FROM tebook WHERE id_ebook = $id";
        $result = mysqli_query($conn, $query);

        $isSucceed = mysqli_affected_rows($conn);
        return $isSucceed;
    }

    function deletepartisi($id){
        global $conn;
        $ebook = readpartisi($id);
        $query = "DELETE FROM tpartisipasi WHERE id_partisipasi = $id";
        $result = mysqli_query($conn, $query);

        $isSucceed = mysqli_affected_rows($conn);
        return $isSucceed;
    }

    function deletebh($id){
        global $conn;
        $ebook = readbutahuruf($id);
        $query = "DELETE FROM tbutahuruf WHERE id_buta_huruf = $id";
        $result = mysqli_query($conn, $query);

        $isSucceed = mysqli_affected_rows($conn);
        return $isSucceed;
    }

    function deletelembaga($id){
        global $conn;
        $fasilitas = readtfs($id);
        while ($listfasilitas = mysqli_fetch_assoc($fasilitas)) {
            $query = "DELETE FROM tfs WHERE id_fs = ".$listfasilitas['id_fs'];
            $result = mysqli_query($conn, $query);
        }
        $query = "DELETE FROM tlembaga WHERE id_lembaga = $id";
        $result = mysqli_query($conn, $query);


        $isSucceed = mysqli_affected_rows($conn);


        // mengembalikan nilai sukses
        return $isSucceed;
    }

    function updateebook($data, $file){
       
        global $conn;
        $id = $data['id'];
        $nama_ebook = $data['nama_ebook'];
        $jenjang = $data['jenjang'];
        $ebook = $file['ebook']['name'];

        if ($ebook != "") {   
            $tempNamaEbook = $file['ebook']['tmp_name'];
            $direktori = 'E-Book/' . $ebook;
            move_uploaded_file($tempNamaEbook, $direktori);
            $query = "UPDATE tebook SET nama_ebook = '$nama_ebook', ebook = '$ebook', id_jenjang = $jenjang WHERE id_ebook = $id";
            $result = mysqli_query($conn, $query);
        }else{
            $query = "UPDATE tebook SET nama_ebook = '$nama_ebook', id_jenjang = $jenjang WHERE id_ebook = $id";
            $result = mysqli_query($conn, $query);
        }
        $isSucceed = mysqli_affected_rows($conn);

        return $isSucceed;
    }

    function updatebh($data, $file){
       
        global $conn;
        $id = $data['id'];
        $persentase = $data['persentase'];
        $provinsi = $data['provinsi'];
        $tahun = $data['tahun'];
   
        $query = "UPDATE tbutahuruf SET persentase = $persentase, tahun = '$tahun', id_provinsi = $provinsi WHERE id_buta_huruf = $id";
        $result = mysqli_query($conn, $query);
        
        $isSucceed = mysqli_affected_rows($conn);

        return $isSucceed;
    }

    function updatepartisipasi($data, $file){
       
        global $conn;
        $id = $data['id'];
        $provinsi = $data['provinsi'];
        $aps = $data['aps'];
        $apk = $data['apk'];
        $apm = $data['apm'];
        $tahun = $data['tahun'];
        $jenjang = $data['jenjang'];
   
        $query = "UPDATE tpartisipasi SET angka_partisipasi_sekolah = $aps, angka_partisipasi_kasar = $apk, angka_partisipasi_murni = $apm, tahun_partisipasi = '$tahun', id_provinsi = $provinsi, id_rentang = $jenjang WHERE id_partisipasi = $id";
        $result = mysqli_query($conn, $query);
        
        $isSucceed = mysqli_affected_rows($conn);

        return $isSucceed;
    }

    function updatelembaga($data, $file, $listFasilitas){
       
        global $conn;
        $id = $data['id'];
        $namalembaga = $data['nama_lembaga'];
        $alamat = $data['alamat'];
        $pengajar = $data['pengajar'];
        $murid = $data['murid'];
        $jenjang = $data['jenjang'];
        $provinsi = $data['provinsi'];

        $tfs = readtfs($id);
        $query = "UPDATE tlembaga SET nama_lembaga = '$namalembaga', alamat = '$alamat', jumlah_pengajar = $pengajar, jumlah_murid = $murid, id_provinsi = $provinsi, id_jenjang = $jenjang WHERE id_lembaga = $id";
        $result = mysqli_query($conn, $query);

        $isSucceed = mysqli_affected_rows($conn);
        if ($isSucceed >= 0) {
            foreach ($tfs as $fs) {
                $query = "DELETE FROM tfs WHERE id_fs = ".$fs['id_fs'];
                $result = mysqli_query($conn, $query);
            }
            foreach ($listFasilitas as $fasilitas) {
                $query = "INSERT INTO tfs VALUES('','$fasilitas', '$id')";
                $result = mysqli_query($conn, $query);
            }
        }
        // mengembalikan nilai sukses
        return $isSucceed;
    }
?>