<?php 
$companycode = $_GET['companycode'] ;

$companycode    = strtolower($companycode);

$conn=mysql_connect('localhost',"root","")  or die("Could not connect: " . mysql_error());
mysql_select_db($companycode) 				or die("Not a database: " 	 . mysql_error());

mysql_query("BEGIN");

$orden_sql = "Update sequence set sequence = sequence +1 ";
$result = mysql_query($orden_sql) ;
if (!$result) {
	mysql_query("ROLLBACK");
    echo 'Error 1: ' . mysql_error();
    exit;
}
$orden_sql = "SELECT sequence from sequence";
$result = mysql_query($orden_sql);
if (!$result) {
	mysql_query("ROLLBACK");
    echo 'Error 2: ' . mysql_error();
    exit;
}

mysql_query("COMMIT");
mysql_close($conn);

$row = mysql_fetch_array($result);
echo $row['sequence'] ;

?>