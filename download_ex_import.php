<?php


downloadContohImport('npwp.xlsx');

function downloadContohImport($files = null)
{
    $file_name = $files; // replace with your file name
    $file_path = "storage/contoh_import/" . $file_name; // replace with your file path

    if (file_exists($file_path)) {
        header('Content-Type: application/vnd.openxmlformats-officedocument.spreadsheetml.sheet');
        header('Content-Disposition: attachment; filename=' . $file_name);
        header('Pragma: no-cache');
        readfile($file_path);
        header("Location: {$_SERVER['HTTP_REFERER']}"); //redirect back
    } else {
        header("Location: {$_SERVER['HTTP_REFERER']}"); //redirect back
    }
}
