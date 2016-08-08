<?php
header('Access-Control-Allow-Origin: *');  
header('Access-Control-Allow-Headers: X-Requested-With');

$myFile = "js_error_log.txt";
$fh = fopen($myFile, 'a');
fwrite($fh,"\r\n" .date("Y-m-d H:i:s")." - ". $_REQUEST["mensaje"]);
fclose($fh);

?>
