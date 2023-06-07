

<?php

include 'config/koneksi.php';

$dir = 'D:\CPH\source_files';
$files = scandir($dir);
$fileMoved = 0;
$failMoved = 0;

foreach ($files as $index => $file) {
    if (strpos($file, '.pdf') !== false) {
        $exFiles = explode('-', $file);
        $folderName = $exFiles[1];
        $fileName = $file;



        $query = "SELECT nama FROM npwp WHERE npwp = '$folderName'";
        $result = mysqli_query($conn, $query);

        $data = [];

        if ($result) {
            while ($row = mysqli_fetch_assoc($result)) {
                $data[] = $row;
            }
            mysqli_free_result($result);
        } else {
            echo "Error executing query: " . mysqli_error($conn);
        }


        $query = "SELECT nama,kode FROM npwp WHERE npwp = '$folderName' LIMIT 1";
        $result = mysqli_query($conn, $query);

        if ($result) {
            $data = mysqli_fetch_assoc($result);
        } else {
            // Error executing the query
            echo "Error executing the query: " . mysqli_error($conn);
        }

        if (!$data) {
            $failMoved++;
            $bulan = 'TANPA-NAMA';
        } else {
            $fileMoved++;
            $bulan = isset($_POST['bulan']) ? $_POST['bulan'] : '';
            $folderName = $data['kode'] . '-' . $data['nama'];

            // Create a new directory with the folder name
            $newDir = "G:/My Drive/cph/destination_files/{$folderName}";
            $subDir = "G:/My Drive/cph/destination_files/{$folderName}/{$bulan}";

            if (!file_exists($newDir)) {
                mkdir($newDir, 0777, true); // Create the new directory and its parents recursively
            }

            if (!file_exists($subDir)) {
                mkdir($subDir, 0777, true); // Create the subdirectory and its parents recursively
            }

            $source = $dir . DIRECTORY_SEPARATOR . $fileName;
            $destination = $subDir . DIRECTORY_SEPARATOR . $fileName;

            if (rename($source, $destination)) {
                // $fileMoved++;
            } else {
                $error = error_get_last();
                echo "Error moving file: " . $error['message'];
            }
        }
    }
}


echo json_encode([
    'fail' => $failMoved,
    'success' => $fileMoved
]);




// if ($fileMoved > 0) {
//     echo $fileMoved . " file berhasil dipindahkan";
// } else {
//     echo "tidak ada file yang dipindahkan";
// }
