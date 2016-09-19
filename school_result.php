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
	
	<?php
		$sql = "SELECT * FROM historic_school_survey_data WHERE historic_school_survey_data_id=".$_GET['school_survey_id']; 
		$sth=$dbh->prepare($sql);
		$sth->execute();
		$survey_info = $sth->fetchAll();
		$survey_info = $survey_info[0];
		//print_r($survey_info);
		
		$sql = "SELECT * FROM schools WHERE school_id=".$survey_info['school_id']; 
		$sth=$dbh->prepare($sql);
		$sth->execute();
		$school= $sth->fetchAll();
		$school_name = $school[0]['school_name'];
		
		
		?>
	<script type="text/javascript" src="https://ajax.googleapis.com/ajax/libs/jquery/1.8.2/jquery.min.js"></script>
	<script type="text/javascript">
	$(function () {
    $('#container').highcharts({
        chart: {
            type: 'column'
        },
        title: {
            text: 'Pedagogy of Difference - <?php echo $school_name;?>'
        },
        subtitle: {
            text: 'Result from - <?php echo $survey_info['time_processed']; ?>, Amount of users - <?php echo $survey_info['num_of_users']; ?>'
        },
        xAxis: {
            categories: [
                'Indigenous Cultural Value',
                'Explicitness',
                'Self-regulation support',
                'Ethic of care',
                'Literacy teaching',
                'Behaviour support',
                'Pegagogical expertise'
            ],
            crosshair: true
        },
        yAxis: {
            min: 1,
			max: 5,
            title: {
                text: 'Score'
            }
        },
        tooltip: {
            headerFormat: '<span style="font-size:10px">{point.key}</span><table>',
            pointFormat: '<tr><td style="color:{series.color};padding:0">{series.name}: </td>' +
                '<td style="padding:0"><b>{point.y:.1f} </b></td></tr>',
            footerFormat: '</table>',
            shared: true,
            useHTML: true
        },
        plotOptions: {
            column: {
                pointPadding: 0.2,
                borderWidth: 0
            }
        },
        series: [{
            name: 'Score',
            data: [{ y: <?php echo $survey_info['AVG_A']; ?>, color: '<?php echo get_column_color($survey_info['AVG_A']);?>'}, 
			{ y: <?php echo $survey_info['AVG_B']; ?>, color: '<?php echo get_column_color($survey_info['AVG_B']);?>'},
			{ y: <?php echo $survey_info['AVG_C']; ?>, color: '<?php echo get_column_color($survey_info['AVG_C']);?>'},
			{ y: <?php echo $survey_info['AVG_D']; ?>, color: '<?php echo get_column_color($survey_info['AVG_D']);?>'},
			{ y: <?php echo $survey_info['AVG_E']; ?>, color: '<?php echo get_column_color($survey_info['AVG_E']);?>'},
			{ y: <?php echo $survey_info['AVG_F']; ?>, color: '<?php echo get_column_color($survey_info['AVG_F']);?>'},
			{ y: <?php echo $survey_info['AVG_G']; ?>, color: '<?php echo get_column_color($survey_info['AVG_G']);?>'}
			]

        }]
    });
});
		</script>
	
	
<script src="https://code.highcharts.com/highcharts.js"></script>
<script src="https://code.highcharts.com/modules/exporting.js"></script>

<div id="container" style="min-width: 310px; height: 400px; margin: 0 auto"></div>
	
	<?php include 'include/character_profile.php';?>
	<br>
	
</div>

</body>
</html>