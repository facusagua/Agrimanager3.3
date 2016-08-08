<?php
$servidor = "sistec01.dnsalias.com";
$usuario = "dba";	
$pass = "gestion525";
$base_de_datos = "agrimanager_base";

$conect = mysql_connect($servidor, $usuario, $pass) or die("Error al Seleccionar la BD");
mysql_select_db($base_de_datos, $conect) or die("Error al seleccionar la BD");

?>		