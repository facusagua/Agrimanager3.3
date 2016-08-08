<?php
header('Access-Control-Allow-Origin: *');  
header('Access-Control-Allow-Headers: X-Requested-With');

function f_log($string){
	$myFile = "sql_log.txt";
	$fh = fopen($myFile, 'a');
	fwrite($fh,"\r\n" .date("Y-m-d H:i:s")." - ". $string);
	fclose($fh);
}

//$base    = $_GET['base'] ;
//$server  = $_GET['server'] ;
$base    = 'sistec_base' ;
$server  = 'sistec01.dnsalias.com' ;

$base    = strtolower($base);
$server  = strtolower($server);

if (!mysql_connect($server, 'dba', 'gestion525')) {
    echo 'Could not connect to mysql';
    exit;
}
$dbresult = mysql_query('SHOW TABLES FROM ' . $base );

if (!$dbresult) {
    echo "DB Error, could not list tables\n";
    echo 'MySQL Error: ' . mysql_error();
    exit;
}

$result = array();
if (mysql_affected_rows() > 0) {
	while($obj = mysql_fetch_object($dbresult)) {
		$result[] = $obj;
	}
	
}
$sql_table = 'tablas';
header("name-Type: application/x-json");
echo '{"'.$sql_table.'":'.json_encode($result).'}';
f_log('{"'.$sql_table.'":'.json_encode($result).'}');

mysql_free_result($dbresult);
?>