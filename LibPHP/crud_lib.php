<?php
header('Access-Control-Allow-Origin: *');  
header('Access-Control-Allow-Headers: X-Requested-With');
header("name-Type: application/x-json");
header("Access-Control-Allow-Headers: Origin, X-Requested-With, Content-Type, Accept");

function f_crud() {
	$f01 = "EXT.DATAVIEW.LIST";

	$link = mysqli_connect($_REQUEST["base_url"],$_REQUEST["base_usuario"],$_REQUEST["base_clave"],$_REQUEST["base_nombre"]);

	f_log("Conjunto de caracteres actual: %s\n" . mysqli_character_set_name($enlace));

	if (!mysqli_set_charset($link, "utf8")) {
	    f_log("Error cargando el conjunto de caracteres utf8: %s\n "  . mysqli_error($link));
	    exit();
	}
	
	// Select
	if (!isset($_REQUEST["action"])) {  

		$sql_table   = f_01($_REQUEST["sql_table"],$f01);
		$fields      = f_01($_REQUEST["sql_fields"],$f01);
		
		if (isset($_REQUEST["sql_command"])) {
			$query  = f_01($_REQUEST["sql_command"],$f01);
		} else 	{
			$query  = "select " . $fields. " from " . $sql_table;
		}
		//f_log($query);
		
		$sql_fields = explode(",", $fields);
				
		$dbresult = mysqli_query($link, $query);
		$result = array();
		if (mysqli_affected_rows($link) > 0) {
			while($obj = mysqli_fetch_object($dbresult)) {
			//while($obj = mysqli_fetch_array($dbresult,MYSQLI_NUM)) {
				$result[] = $obj;
			}
		}
		header("name-Type: application/x-json");
		echo '{"'.$sql_table.'":'.json_encode( $result).'}';
		f_log('{"'.$sql_table.'":'.json_encode($result).'}');
	}
	// Batch commands width transaction 
	else if ($_REQUEST["action"] == "batch") {
		$fields = "";
		$sql_values = "";
		$sql_data = f_01($_POST["data"],$f01);
		$sql_data = json_decode($sql_data);		
		
		mysqli_query($link, "BEGIN");

		foreach ($sql_data->records as $sql_command)  {
			//f_log($sql_command);
			$dbresult = mysqli_query($link, $sql_command) ;
			if(strlen(mysqli_error($link)) >0 ) {
				$error = mysqli_error($link);
				mysqli_query($link, "ROLLBACK");
				$result = array("success"=>false,"message"=>$error);
				echo json_encode($result);
				f_log($error);
				exit;
			}
		}
		mysqli_query($link, "COMMIT");
		$result = array("success"=>true,"message"=>"Updated");
		echo json_encode($result);
	}
	else if ($_REQUEST["action"] == "secuencia") {
		mysqli_query($link, "BEGIN");
		$cant = $_REQUEST["cant"] ;
		mysqli_query($link, "Update secuencia set secuencia = secuencia + 1 + " . $cant);
		if(strlen(mysqli_error($link)) >0 ) {
			$error = mysqli_error($link);
			mysqli_query($link, "ROLLBACK");
			$result = array("success"=>false,"message"=>$error);
			echo json_encode($result);
			f_log('Error sql: '.$error);
			exit;
		}
		$result = mysqli_query($link, "SELECT secuencia FROM secuencia");
		mysqli_query($link, "COMMIT");
		$row = $result->fetch_object();
		echo json_encode($row) ;
	}
	mysqli_close($link);
}

// Function tools
function f_01($text,$f01) {
    $newtext = "";
    $sum = 0;
	
	$array_f01 = array() ;
	for ($i = 0; $i <  strlen($f01); $i++) { 
		$array_f01[$i] = ord($f01[$i]);
	}
	$j = 0;
    for ($i = 0; $i < strlen($text); $i++) {
		$char_num = $array_f01[$j];
		$j++;
		if ($j == strlen($f01)) {
			$j = 0;
		};
        if (ord($text[$i]) - $char_num > 31) {
            $sum = (ord($text[$i]) - $char_num);
        } else {
            $sum = 126 - (31 - (ord($text[$i]) - $char_num));
        }
        $newtext.= chr($sum);
    }
//    return $newtext;
    return $text;
} 

function f_log($string){
	$myFile = "sql_log.txt";
	$fh = fopen($myFile, 'a');
	fwrite($fh,"\r\n" .date("Y-m-d H:i:s")." - ". $string);
	fclose($fh);
}

f_crud();

?>
