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
	
	<h3>What are my beliefs, values and understandings?</h3>
	<p>Teachers have the potential to effect reconciliation and redress educational inequities. Building trust is an imperative.. An ethic of care is the foundation for all teaching practices. The belief that all students can achieve to the level expected for their age, despite, and also due to, a diversity of knowledge, culture, language brought to school from home. All students are regarded as having the capacity to learn. Knowledge of the legacy of Australia's educational history and Aboriginal and Torres Strait Islander perspectives on curriculum content endows teaching with respect, humility and flexibility. Awareness of community aspirations for their children's education informs teaching.</p>
	<br>
	<h3>What characteristics of relationships contribute to learning?</h3>
	<p>The teachers' role is to facilitate learning; this is achieved through respectful, positive and warm interactions with students. Teachers communicate their regard for all dimensions of learning, including social development, not just academic achievement. Teachers can demonstrate their care for students through verbal and no-verbal interactions outside of the classroom, and pursuit of high expectations in the classroom.</p>
	<br>
	<h3>How can building cultural bridges facilitate learning?</h3>
	<p>Valuing students’ cultural identity includes showing respect for students’ home language and knowledge, family and community, values and beliefs. Furthermore, local community members and cultural knowledges and values are welcomed into the classroom and used to scaffold children’s learning. Education about oppression and authentic Aboriginal and Torres Strait Islander perspectives are included in the curriculum.</p>
	<br>
	<h3>How do I teach literacy?</h3>
	<p>Literacy is taught from a foundation of spoken language. Code switching between Aboriginal English and Standard Australian English is explicitly taught. Students are orientated to ageappropriate texts before reading; then reading strategies and writing are taught and repeatedly modelled in context. In addition, literacy is taught across the curriculum as the vocabulary, language features and text features of each curriculum area are explicitly taught. Shared reading is common. Visual images are commonly used to prompt conversation before textual reading.</p>
	<br>
	<h3>How do I make my teaching explicit?</h3>
	<p>Expectations of students both in behaviour and achievement, and the direction of future learning are clearly and repeatedly communicated to students. The knowledge and skills needed by students are explained and modelled in a variety of ways especially through concrete example. Constructive feedback is regularly given to students as they learn. There is a tendency towards explicit instruction, emphasizing a gradual release of responsibility, but inquiry-based learning is encouraged, especially in regards to student initiated questions and ideas.</p>
	<br>
	<h3>In which ways do I differentiate my teaching to accommodate student diversity?</h3>
	<p>All students are unique so multiple learning trajectories and experiences that cater for a variety of learning preferences are provided. The teacher establishes individual goals for student achievement, gives individual feedback and provides intervention for students not meeting expected achievement. Gifted students are identified and supported for extended learning even if literacy levels are low. Individual strengths of students are used as foundations for supporting collective learning.</p>
	<br>
	<h3>What are my practices for causing learning?</h3>
	<p>The teacher behaves as a learning facilitator rather than an authority figure and students are given choices, open ended, experiential, group and outside activities from which to learn. The use of narrative to provide context for learning is frequent. Visual imagery is used to prompt engagement and support learning. A holistic approach is usually taken, in which information and skills are chunked and scaffolded, and connected to prior knowledge. Students are provided time to gain mastery of skills, to reflect and to self-assess, especially through tasks that involve working to end type products. Individual feedback is given and learning success is celebrated. Communication of ideas, especially abstract tasks, occurs orally when students are engaged physically with learning tasks. Explanation of ideas is succinct. Teachers under-talk rather than over-talk.</p>
	<br>
	<h3>How can I support and advance student behaviour?</h3>
	<p>Students contribute to the setting of classroom expectations, which are clearly and consistently communicated to students. The encouragement of cooperative behaviours, engaging and accessible tasks and use of routine decrease the need to manage student behaviours. Off-task behaviour is managed promptly with less provocative techniques such as non-verbal, proximity, pause and wait, close talk (private reprimands) or group reprimands. The learning expectations of classrooms are not compromised by misbehaviour.</p>
	<br>
	<h3>What is my role in supporting student health and wellbeing?</h3>
	<p>Student health and wellbeing underpin academic and social development. Students with individual needs, such as hearing loss, have access to support services. Strategies advocated by specialists are enacted in the classroom. In addition to creating a supportive learning environment, vigilance in detecting the need to refer students to specialist services is the essence of an ethos of care.</p>
	<br>
	<h3>How does the school context in which I teach assist learning?</h3>
	<p>Indigenous staff that are positive role models and engage with students and family are critical members of the school. Schools support teachers’ pursuit of student academic and social outcomes by providing an accessible process by which students and community can be included in school decision making. Schools provide staff time to visit families at home and organise cross-cultural training from community Elders. Strategies to maximise student attendance at school include facilitating student re-enrolment and transitions from other schools and supporting students’ educational pathway. School administration provides professional development for Aboriginal or Torres Strait Islander teacher aides to maximise their teaching roles. School provides access to cultural peer support and role models for Aboriginal and Torres Strait Islander students.</p>
	<br><br>
	
</div>

</body>
</html>