<?php 
header('Access-Control-Allow-Origin: *');  
header('Access-Control-Allow-Headers: X-Requested-With');

$user 	   = $_GET['user'] ;
$password    = $_GET['password'] ;
$companycode = $_GET['companycode'] ;

//$user 		 = 'admin';
//$password    = 'farm' ;
//$companycode = 'farm_test' ;

$user = strtolower($user);
$password   = strtolower($password);
$companycode    = strtolower($companycode);

$conn=mysql_connect('localhost',"root","")  or die("Could not connect: " . mysql_error());;
mysql_select_db($companycode) or die("Not a database: " . mysql_error());;

$orden_sql = "SELECT user from users where lower(user)='".$user."' and lower(password)='".$password."'";

$result = mysql_query($orden_sql);
if (!$result) {
    echo 'Could not run query: ' . mysql_error();
    exit;
}
$row = mysql_fetch_array($result);
if ($row['user'] == $user) { echo 'LOGIN_OK';} else {echo 'OOPS...';}
mysql_close($conn);

?>