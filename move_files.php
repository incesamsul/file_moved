

<?php

$dir = 'D:\CPH\source_files';
$files = scandir($dir);
$fileMoved = 0;

foreach ($files as $file) {
    if (strpos($file, '.pdf') !== false) {
        $exFiles = explode('-', $file);
        $folderName = $exFiles[1];
        $fileName = $file;

        // Create a new directory with the folder name
        $newDir = 'G:\My Drive\cph\destination_files\\' . $folderName;
        if (!file_exists($newDir)) {
            mkdir($newDir);
        }

        $source = $dir . '\\' . $fileName;
        $destination = $newDir . '\\' . $fileName;

        if (rename($source, $destination)) {
            $fileMoved++;
        } else {
            $error = error_get_last();
            echo "Error moving file: " . $error['message'];
        }
    }
}


echo $fileMoved;

// if ($fileMoved > 0) {
//     echo $fileMoved . " file berhasil dipindahkan";
// } else {
//     echo "tidak ada file yang dipindahkan";
// }
