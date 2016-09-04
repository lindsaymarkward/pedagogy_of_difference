<?php
session_name('main_site');
session_start();
include_once 'dbconnect.php';
include_once 'include/functions.php';

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

if (isset($_POST['btn-generate-report'])){
	$school_id = $_POST['school'];
	
	//vv create list of surveys to average out for school
	$school_surveys = [];
	
	//vv gets list of users that teach at school_id
	$sql = "SELECT user_id FROM users WHERE school_id=".$school_id; 
	$sth=$dbh->prepare($sql);
	$sth->execute();
	$users_in_school = $sth->fetchAll();
	
	
	//vv goes through each user in list
	foreach ($users_in_school as $user) {
		//gets list of surveys that user has completed where at the school
		$sql = "SELECT historic_survey_data_id, historic_survey_data_AVG_A, historic_survey_data_AVG_B, historic_survey_data_AVG_C, historic_survey_data_AVG_D, historic_survey_data_AVG_E, historic_survey_data_AVG_F, historic_survey_data_AVG_G, time_finished FROM historic_survey_data WHERE user_id=".$user['user_id']." AND school_id=".$school_id; 
		$sth=$dbh->prepare($sql);
		$sth->execute();
		$survey_data = $sth->fetchAll();
		
		//vv current oldest survey user has done while at school
		$user_survey = [];
		foreach ($survey_data as $survey) {
			
			if (empty($user_survey)){
				$user_survey = $survey;
			} else{
				//vv comparing the dates of current iteration and current olderst survay
				$date_format = "Y-m-d H:i:s";
				$date = DateTime::createFromFormat($date_format, $user_survey['time_finished']);
				$new_date = DateTime::createFromFormat($date_format, $survey['time_finished']);
				if ($date < $new_date){
					//echo'should have changed current survey';
					$user_survey = $survey;
				}
			}
		}
		//vv addeds users survey for school to list of school surveys
		if (!empty($user_survey)){
		$school_surveys[] = $user_survey;
		$user_survey = [];
		}
	}
	
	//vv count number of surveys and avgerage them.
	
	//print_r($school_surveys);
	
	if (!empty($school_surveys)){
		$school_survey_count = 0;
		$A = [];
		$B = [];
		$C = [];
		$D = [];
		$E = [];
		$F = [];
		$G = [];
		foreach ($school_surveys as $school_survey){
			//echo '\n<br><br> school survey';
			//print_r($school_survey);
			$school_survey_count = $school_survey_count + 1;
			$A[] = $school_survey['historic_survey_data_AVG_A'];
			$B[] = $school_survey['historic_survey_data_AVG_B'];
			$C[] = $school_survey['historic_survey_data_AVG_C'];
			$D[] = $school_survey['historic_survey_data_AVG_D'];
			$E[] = $school_survey['historic_survey_data_AVG_E'];
			$F[] = $school_survey['historic_survey_data_AVG_F'];
			$G[] = $school_survey['historic_survey_data_AVG_G'];
		}
		$AVG_A = array_sum($A) / $school_survey_count;
		$AVG_B = array_sum($B) / $school_survey_count;
		$AVG_C = array_sum($C) / $school_survey_count;
		$AVG_D = array_sum($D) / $school_survey_count;
		$AVG_E = array_sum($E) / $school_survey_count;
		$AVG_F = array_sum($F) / $school_survey_count;
		$AVG_G = array_sum($G) / $school_survey_count;
		
		$current_time = date($date_format);
		
		/* test display of processed data for school
		$school_survey_avg = [
			'AVG_A' => $AVG_A,
			'AVG_B' => $AVG_B,
			'AVG_C' => $AVG_C,
			'AVG_D' => $AVG_D,
			'AVG_E' => $AVG_E,
			'AVG_F' => $AVG_F,
			'AVG_G' => $AVG_G,
			'Number_of_users' => $school_survey_count,
			'Time_processed' => $current_time
		];
		
		echo '\n<br><br> school avg';
			print_r($school_survey_avg);
		*/
		
		
		$sql = "INSERT INTO historic_school_survey_data (AVG_A, AVG_B, AVG_C, AVG_D, AVG_E, AVG_F, AVG_G, school_id, num_of_users, time_processed) VALUES ('$AVG_A', '$AVG_B', '$AVG_C', '$AVG_D', '$AVG_E', '$AVG_F', '$AVG_G', '$school_id', '$school_survey_count', '$current_time')";
		//echo $sql;
		$sth=$dbh->prepare($sql);
		$sth->execute();
		$survey_data = $sth->fetchAll();
		?><script>alert('School Report Generated Successfully');</script><?php
	}
}

?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>School Results</title>
<link rel="stylesheet" href="style.css" type="text/css" />

</head>
<body>
<?php
include 'include/header.php';
include 'include/nav.php';
?>


<div id="body">

	
	
	
	<h3>Select School.</h3>
	<form method="post">
	<select name="school"> 
		
	  
	<?php
	
	if(isset($_POST['btn-select-school']) or isset($_POST['btn-generate-report'])){
		$sql = "SELECT school_id, school_name FROM schools WHERE school_id=".$_POST['school'];
		$sth=$dbh->prepare($sql);
		$sth->execute();
		$school_from_form = $sth->fetchAll();
		print_r($school);
		echo "<option value='".$_POST['school']."'>".$school_from_form[0][1]."</option>\n";
	}
	
	$sql = "SELECT school_id, school_name FROM schools";
	$sth=$dbh->prepare($sql);
	$sth->execute();
	$schools = $sth->fetchAll();

	foreach ($schools as $school){
		echo "<option value='$school[0]'>$school[1]</option>\n";
	}

	?>
		
	</select>
	<button type="submit" name="btn-select-school">Select</button>
	</form>
	<br>
	
	<?php
	if(isset($_POST['btn-select-school']) or isset($_POST['btn-generate-report'])){
	
	echo "<h3>Results From - ".$school_from_form[0][1]."</h3>\n<br>\n";
	
	
	
	?>
	
	<form method="post">
	<input type="hidden" name="school" value="<?php echo $_POST['school'];?>">
	<button type="submit" name="btn-generate-report">Generate new report</button>
	</form>
	
	
	
	<?php
	//do this when school is selected
	$sql = "SELECT * FROM historic_school_survey_data WHERE school_id=".$_POST['school']; 
	//print($sql);
	
	$sth=$dbh->prepare($sql);
	$sth->execute();
	$surveys_info = $sth->fetchAll();
	
	//print_r($surveys_info);
	
	foreach ($surveys_info as $survey) {
		//print_r($survey)."\n <br><br>";
		print("<a href='school_result.php?school_survey_id=".$survey['historic_school_survey_data_id']."'>Survey Results from ".$survey['time_processed']."</a> \n <br> \n <br> \n");
	}
	?>
        
    <?php
	
	
}
	
	
		
		
	?>
	
	



	
	
	
	
	
	
</div>

</body>
</html>