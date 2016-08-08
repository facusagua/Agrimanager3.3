<?php

function f_crud() {
	$f01 = "EXT.DATAVIEW.LIST";
	// Select
	if (!isset($_REQUEST["action"])) {  

		$sql_table   = f_01($_REQUEST["sql_table"],$f01);
		$fields      = f_01($_REQUEST["sql_fields"],$f01);
		
		if (isset($_REQUEST["sql_command"])) {
			$query  = f_01($_REQUEST["sql_command"],$f01);
		} else 	{
			$query  = "select " . $fields. " from " . $sql_table;
		}
		f_log($query);
		
		$sql_fields = explode(",", $fields);
				
		$dbresult = mysql_query($query);
		$result = array();
		if (mysql_affected_rows() > 0) {
			//while($obj = mysql_fetch_object($dbresult)) {
			while($obj = mysql_fetch_array($dbresult)) {
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
		//f_log("Antes decode = ".$sql_data);
		$sql_data = json_decode($sql_data);		
		
		mysql_query("BEGIN");

		foreach ($sql_data->records as $row)  {
			$sql_table  = "";
			$sql_action = "";
			$fields     = "";
			$values     = "";
			$sql_id = "";
			$sql_insert = "";
			$sql_update = "";
			$sql_delete = "";
			$sql_command = "";
			foreach ($row as $field => $value)  {
				if ($field == "sql_table") 		 {$sql_table = $value;}
				else if ($field == "sql_action") {$sql_action = $value;}
				else {
					if ($field == "id") $sql_id = $value; 
					$fields = $fields . $field . ", " ;
					$values = $values ."'".htmlspecialchars($value). "', " ;
					$sql_update = $sql_update .$field. " = '" . htmlspecialchars($value) . "', " ;
				}
			}
			$fields = substr($fields,0,strlen($fields) -2);
			$values = substr($values,0,strlen($values) -2);
			
			$sql_update = "Update ".$sql_table." set ".substr($sql_update,0,strlen($sql_update) -2) ." where id=".$sql_id;			
			$sql_insert = "Insert into " . $sql_table . " (". $fields ." ) values(" . $values . ")";
			$sql_delete = "Delete from " . $sql_table . " where id =".$sql_id;
			if ($sql_action == "update") $sql_command = $sql_update ;
			if ($sql_action == "insert") $sql_command = $sql_insert ;
			if ($sql_action == "delete") $sql_command = $sql_delete;
			f_log($sql_command);
			$dbresult = mysql_query($sql_command) ;
			if(strlen(mysql_error()) >0 ) {
				$error = mysql_error();
				mysql_query("ROLLBACK");
				$result = array("success"=>false,"message"=>$error);
				echo json_encode($result);
				f_log($error);
				exit;
			}
		}
		mysql_query("COMMIT");
		$result = array("success"=>true,"message"=>"Updated");
		echo json_encode($result);
	}
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



?>
