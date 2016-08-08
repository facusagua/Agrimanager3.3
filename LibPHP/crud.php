<?php
header('Access-Control-Allow-Origin: *');  
header('Access-Control-Allow-Headers: X-Requested-With');

require_once("lib.php");

$link = mysql_connect($_REQUEST["base_url"],$_REQUEST["base_usuario"],$_REQUEST["base_clave"]);

mysql_select_db($_REQUEST["base_nombre"],$link);

mysql_set_charset('utf8',$link);

f_crud();

mysql_close();

?>

