<?php
	include("connect.php");

	$queryString = $_GET['sql'];
	//$queryString = "SELECT codigo,descrip as nombre FROM cuentas";
	$query = mysql_query($queryString) or die(mysql_error());

	$reqList = array();
	while($contato = mysql_fetch_assoc($query)) {
	    $reqList[] = $contato;
	}
	echo json_encode(array(
		"success" => mysql_errno() == 0,
		"reqList" => $reqList
	));
?>