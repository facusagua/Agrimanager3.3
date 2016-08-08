<?php
	include("connect.php");

	echo $nombre  	= $_GET['nombre'] ;
	echo $apellido   = $_GET['apellido'] ;
	echo $email    	= $_GET['email'] ;
	echo $dni  		= $_GET['dni'] ;

	$queryString = "INSERT INTO contactos (nombre,apellido,email,dni) VALUES ('$nombre','$apellido','$email','$dni')";
	$query = mysql_query($queryString) or die(mysql_error());
?>