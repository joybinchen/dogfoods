<?php
if ($handle = opendir('.')) {
    echo "<a href='..'>&lt;upper level&gt;</a><br/>\n";
    /* This is the correct way to walk though a directory. */
    $files = array();
    while (false !== ($file = readdir($handle))) {
        if ($file[0] != '.') {
          array_push($files, $file);
        }
    }
    sort($files);
    foreach($files as $file) {
          echo "<a href='$file'>$file</a><br/>\n";
    }
    closedir($handle);
}
?>  
