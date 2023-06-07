<?php

include 'config/koneksi.php';
include 'config/config.php';

if (isset($_GET['npwp'])) {
    $npwp = $_GET['npwp'];

    $query = "DELETE FROM npwp WHERE npwp = '$npwp'";
    mysqli_query($conn, $query);

    // Check for errors during the database insertion
    if (mysqli_error($conn)) {
        echo "Error inserting data: " . mysqli_error($conn);
    }

    session_start();
    $_SESSION['message'] = 'data berhasil di dihapus';
    header('location: ' . baseurl . '/import.php');
}
