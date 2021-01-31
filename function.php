<?php 
    session_start();
    // membuat koneksi database
    $conn = mysqli_connect("localhost","root","","db_stokbarang") or die(mysql_error());
    if ($conn->connect_error) {
        die ($conn->connect_error);
    };

    //Input Barang
    if(isset($_POST['tambahbarang'])){
        $kodebarang = $_POST['kodebarang'];
        $namabarang = $_POST['namabarang'];
        $stok = $_POST['stok'];

        $addbarang = mysqli_query($conn, "INSERT into barang (kode_barang, nama_barang, stok) values ('$kodebarang', '$namabarang', '$stok')");
    }

    //Edit Barang
    
    if(isset($_POST['updatebarang'])){
        $idb = $_POST['idb'];
        $kodebarang = $_POST['kodebarang'];
        $namabarang = $_POST['namabarang'];
        $stok = $_POST['stok'];
        $tanggal = $_POST['tanggal'];
        
        $updatebarang = mysqli_query($conn, "UPDATE barang set kode_barang='$kodebarang', nama_barang ='$namabarang', stok='$stok', tanggal_update_terakhir ='$tanggal' where id_barang = '$idb'");
    }

    //Delete Barang
    if(isset($_POST['deletebarang'])){
        $idb = $_POST['idb'];

        $deletebarang = mysqli_query($conn, "DELETE FROM barang where id_barang = '$idb'");
    }
    
?>