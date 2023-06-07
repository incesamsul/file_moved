<?php
require 'vendor/autoload.php';
include 'config/koneksi.php';
include 'config/config.php';

use PhpOffice\PhpSpreadsheet\IOFactory;


if (isset($_POST['import'])) {
    // Check if the file was uploaded successfully
    if ($_FILES['npwp']['error'] === UPLOAD_ERR_OK) {
        $excelFile = $_FILES['npwp']['tmp_name'];

        // Load the Excel file
        $spreadsheet = IOFactory::load($excelFile);

        // Get the active sheet
        $sheet = $spreadsheet->getActiveSheet();

        // Iterate through the rows and retrieve the data
        $rowIterator = $sheet->getRowIterator();
        $headerRowSkipped = false;

        foreach ($rowIterator as $row) {
            if (!$headerRowSkipped) {
                // Skip the header row
                $headerRowSkipped = true;
                continue;
            }

            $rowData = [];
            $cellIterator = $row->getCellIterator();
            $cellIterator->setIterateOnlyExistingCells(false); // Include empty cells

            foreach ($cellIterator as $cell) {
                $rowData[] = $cell->getValue();
            }

            // Check if the npwp value already exists in the database
            $npwp = $rowData[2]; // Assuming npwp is in the third column
            $query = "SELECT COUNT(*) as count FROM npwp WHERE npwp = '$npwp'";
            $result = mysqli_query($conn, $query);

            if ($result) {
                $row = mysqli_fetch_assoc($result);
                $count = $row['count'];

                if ($count > 0) {
                    // Duplicate entry, skip inserting into the database
                    continue;
                }
            }

            // Store the $rowData in the database
            $data = implode("', '", $rowData);
            $query = "INSERT INTO npwp (nama, kode, npwp) VALUES ('$data')";
            mysqli_query($conn, $query);

            // Check for errors during the database insertion
            if (mysqli_error($conn)) {
                echo "Error inserting data: " . mysqli_error($conn);
            }
        }

        // Perform any additional operations with the retrieved data
    } else {
        // Handle the file upload error
        echo "Error uploading file: " . $_FILES['npwp']['error'];
    }

    session_start();
    $_SESSION['message'] = 'data berhasil di import';
    header('location: ' . baseurl . '/import.php');
}
