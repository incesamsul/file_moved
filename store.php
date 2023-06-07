<?php

include 'config/koneksi.php';
include 'config/config.php';

if (isset($_POST['simpan'])) {
    $kode = $_POST['kode'];
    $nama = $_POST['nama'];
    $npwp = $_POST['npwp'];

    $query = "INSERT INTO npwp (nama, kode, npwp) VALUES ('$kode','$nama','$npwp')";
    mysqli_query($conn, $query);

    // Check for errors during the database insertion
    if (mysqli_error($conn)) {
        echo "Error inserting data: " . mysqli_error($conn);
    }

    session_start();
    $_SESSION['message'] = 'data berhasil di simpan';
    header('location: ' . baseurl . '/import.php');
}
