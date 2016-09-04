<?php
// replace any non-ascii character with its hex code.
function escape($value) {
    $return = '';
    for($i = 0; $i < strlen($value); ++$i) {
        $char = $value[$i];
        $ord = ord($char);
        if($char !== "'" && $char !== "\"" && $char !== '\\' && $ord >= 32 && $ord <= 126)
            $return .= $char;
        else
            $return .= '\\x' . dechex($ord);
    }
    return $return;
}

function get_column_color($value){
	if ($value < 3){
		return '#ea423d';
	}
	elseif ($value < 4){
		return '#f1d71e';
	}
	else{
		return '#44c51f';
	}
}


function to_date($date_as_string){
	$date_format = "Y-m-d H:i:s";
	$date_as_string = "2016-05-10 08:12:03";
	//$date = DateTime::createFromFormat($date_format, $date_as_string);
	
	return DateTime::createFromFormat($date_format, $date_as_string);
}
?>