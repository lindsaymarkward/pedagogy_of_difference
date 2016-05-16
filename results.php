<?php
session_name('main_site');
session_start();
include_once 'dbconnect.php';

if(!isset($_SESSION['user']))
{
	header("Location: index.php");
} else {
	$sql = "SELECT * FROM users WHERE user_id=".$_SESSION['user'];
	$sth=$dbh->prepare($sql);
	$sth->execute();
	$userRow = $sth->fetchAll();
	$userRow = $userRow[0];
}

?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>My Results - <?php echo $userRow['user_email']; ?></title>
<link rel="stylesheet" href="style.css" type="text/css" />

</head>
<body>
<?php
include 'include/header.php';
?>


<div id="body">
	<h2><a href='index.php'>Home</a></h2>
	<h2><a href='http://edwardsdean.net/jcu/limesurvey/index.php/764745?lang=en?UserID=<?php echo $_SESSION['user'] ?>'>Take Survey</a></h2>
	
	<h2><a href='results.php'>My Results</a></h2>
	
	<?php
		$sql = "SELECT * FROM historic_survey_data WHERE user_id=".$_SESSION['user']; 
		//print($sql);
		
		$sth=$dbh->prepare($sql);
		$sth->execute();
		$surveys_info = $sth->fetchAll();
		
		//print_r($surveys_info);
		
		foreach ($surveys_info as $survey) {
			//print_r($survey)."\n <br><br>";
			print("<a href='result.php?survey_id=".$survey['historic_survey_data_id']."'>Survey Results from ".$survey['time_finished']."</a> \n <br> \n <br> \n");
		}
		
	?>
	
	



	
	
	
	
	
	
</div>

</body>
</html>