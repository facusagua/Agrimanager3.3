<?php
	include("connect.php");

	$nombre  	= $_GET['nombre'] ;
	$apellido   = $_GET['apellido'] ;
	$email    	= $_GET['email'] ;
	$dni  		= $_GET['dni'] ;

	$queryString = "UPDATE contactos SET (nombre='$nombre',apellido='$apellido',email='$email',dni='$dni')";
	$query = mysql_query($queryString) or die(mysql_error());
?>