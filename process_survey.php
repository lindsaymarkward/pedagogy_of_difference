<?php
include_once 'dbconnect.php';
session_name('main_site');
session_start();
$res=mysql_query("SELECT * FROM users WHERE user_id=".$_SESSION['user']);
$userRow=mysql_fetch_array($res);
function average($arr)
{
   if (!is_array($arr)) return false;

   return array_sum($arr)/count($arr);
}
?>


<!doctype html>
<html>
   <head>
      <meta charset="utf-8">
      <title>Project Management</title>
      <link href="mainstyles.css" rel="stylesheet" type="text/css">
      <!--The following script tag downloads a font from the Adobe Edge Web Fonts server for use within the web page. We recommend that you do not modify it.--><script>var __adobewebfontsappname__="dreamweaver"</script><script src="http://use.edgefonts.net/arimo:n4:default.js" type="text/javascript"></script>
   </head>
   <body>
      <div id="wrapper">
         <header>
            <h1> Project Management </h1>   
         </header>
         <div id="mainbody">
            <p>Thank you for taking the survey</p>
			<p>This is a Temp Landing page</p>
			<h2>Please wait while we process your results</h2> 
			<!-- loading bar code http://projects.lukehaas.me/css-loaders/ -->
			<div class="loader">Loading...</div>
			
			<?php

			// without composer this line can be used
			require_once 'include/jsonRPCClient.php';
			// with composer support just add the autoloader
			//include_once 'vendor/autoload.php';

			define( 'LS_BASEURL', 'http://localhost/jcu/limesurvey/');  // adjust this one to your actual LimeSurvey URL
			define( 'LS_USER', 'admin' );
			define( 'LS_PASSWORD', 'admin' );

			// the survey to process
			$survey_id=764745;

			// instanciate a new client
			$myJSONRPCClient = new \org\jsonrpcphp\JsonRPCClient( LS_BASEURL.'/admin/remotecontrol' );

			// receive session key
			$sessionKey= $myJSONRPCClient->get_session_key( LS_USER, LS_PASSWORD );

			// receive all ids and info of groups belonging to a given survey
			// $groups = $myJSONRPCClient->list_groups( $sessionKey, $survey_id );
			// print_r($groups, null );
			
			
			$answers = $myJSONRPCClient->export_responses($sessionKey, $survey_id, 'json');
			//print_r($answers, null);

			$decoded = base64_decode($answers);
			$ar = json_decode($decoded, true); //<-- Now returned as an array, and not an object
			
			
			foreach ($ar as $responce) {
				foreach ($responce as $responce2) {
					foreach ($responce2 as $responce3) {
						//print_r($responce3);  // <-- array of answers
						
						
						// gets servey averages from survey id from url
						if ($_GET['surveyid'] == $responce3["id"]){
							//print_r($responce3);  // <-- array of answers
							
							$qquery = "SELECT * FROM users WHERE user_id=".$_SESSION['user']; 
							print($qquery);
							$user_info_query = mysql_query($qquery);
							print_r($user_info_query);
							$user_info = mysql_fetch_array($user_info_query);
							print($responce3[datestamp]);
							print(gettype($responce3[datestamp]));
						
							// print "Indigenous Cultural Value";
							// print "<br>";
							$indigenous_culrural_value = average(array($responce3["A1"], $responce3["A2"], $responce3["A3"], $responce3["A4"], $responce3["A5"], $responce3["A6"]));
							// print_r($indigenous_culrural_value);
							// print "<br><br>";
							
							// print "Explicitness";
							// print "<br>";
							$explicitness = average(array($responce3["B1"], $responce3["B2"], $responce3["B3"], $responce3["B4"], $responce3["B5"], $responce3["B6"]));
							// print_r($explicitness);
							// print "<br><br>";
							
							// print "Self-regulation support";
							// print "<br>";
							$self_regulation_support = average(array($responce3["C1"], $responce3["C2"], $responce3["C3"], $responce3["C4"], $responce3["C5"], $responce3["C6"], $responce3["C7"], $responce3["C8"], $responce3["C9"], $responce3["C10"], $responce3["C11"]));
							// print_r($self_regulation_support);
							// print "<br><br>";
							
							// print "Ethic of care";
							// print "<br>";
							$ethic_of_care = average(array($responce3["D1"], $responce3["D2"], $responce3["D3"], $responce3["D4"], $responce3["D5"], $responce3["D6"], $responce3["D7"], $responce3["D8"], $responce3["D9"]));
							// print_r($ethic_of_care);
							// print "<br><br>";
							
							// print "Literacy teaching";
							// print "<br>";
							$literacy_teaching = average(array($responce3["E1"], $responce3["E2"], $responce3["E3"], $responce3["E4"], $responce3["E5"], $responce3["E6"], $responce3["E7"]));
							// print_r($literacy_teaching);
							// print "<br><br>";
							
							// print "Behaviour support";
							// print "<br>";
							$behaviour_support = average(array($responce3["F1"], $responce3["F2"], $responce3["F3"], $responce3["F4"], $responce3["F5"], $responce3["F6"], $responce3["F7"]));
							// print_r($behaviour_support);
							// print "<br><br>";
							
							// print "Pegagogical expertise";
							// print "<br>";
							$pegagogical_expertise = average(array($responce3["G1"], $responce3["G2"], $responce3["G3"], $responce3["G4"], $responce3["G5"], $responce3["G6"], $responce3["G7"], $responce3["G8"], $responce3["G9"], $responce3["G10"], $responce3["G11"], $responce3["G12"], $responce3["G13"], $responce3["G14"], $responce3["G15"]));
							// print_r($pegagogical_expertise);
							// print "<br><br>";
							
							$query_add = "INSERT INTO historic_survey_data(A1, A2, A3, A4, A5, A6, B1, B2, B3, B4, B5, B6, C1, C2, C3, C4, C5, C6, C7, C8, C9, C10, C11, D1, D2, D3, D4, D5, D6, D7, D8, D9, E1, E2, E3, E4, E5, E6, E7, F1, F2, F3, F4, F5, F6, F7, G1, G2, G3, G4, G5, G6, G7, G8, G9, G10, G11, G12, G13, G14, G15, historic_survey_data_AVG_A, historic_survey_data_AVG_B, historic_survey_data_AVG_C, historic_survey_data_AVG_D, historic_survey_data_AVG_E, historic_survey_data_AVG_F, historic_survey_data_AVG_G, user_id, school_id, time_finished) VALUES(".$responce3['A1'].", ".$responce3['A2'].", ".$responce3['A3'].", ".$responce3['A4'].", ".$responce3['A5'].", ".$responce3['A6'].", ".$responce3['B1'].", ".$responce3['B2'].", ".$responce3['B3'].", ".$responce3['B4'].", ".$responce3['B5'].", ".$responce3['B6'].", ".$responce3['C1'].", ".$responce3['C2'].", ".$responce3['C3'].", ".$responce3['C4'].", ".$responce3['C5'].", ".$responce3['C6'].", ".$responce3['C7'].", ".$responce3['C8'].", ".$responce3['C9'].", ".$responce3['C10'].", ".$responce3['C11'].", ".$responce3['D1'].", ".$responce3['D2'].", ".$responce3['D3'].", ".$responce3['D4'].", ".$responce3['D5'].", ".$responce3['D6'].", ".$responce3['D7'].", ".$responce3['D8'].", ".$responce3['D9'].", ".$responce3['E1'].", ".$responce3['E2'].", ".$responce3['E3'].", ".$responce3['E4'].", ".$responce3['E5'].", ".$responce3['E6'].", ".$responce3['E7'].", ".$responce3['F1'].", ".$responce3['F2'].", ".$responce3['F3'].", ".$responce3['F4'].", ".$responce3['F5'].", ".$responce3['F6'].", ".$responce3['F7'].", ".$responce3['G1'].", ".$responce3['G2'].", ".$responce3['G3'].", ".$responce3['G4'].", ".$responce3['G5'].", ".$responce3['G6'].", ".$responce3['G7'].", ".$responce3['G8'].", ".$responce3['G9'].", ".$responce3['G10'].", ".$responce3['G11'].", ".$responce3['G12'].", ".$responce3['G13'].", ".$responce3['G14'].", ".$responce3['G15'].", ".$indigenous_culrural_value.", ".$explicitness.", ".$self_regulation_support.", ".$ethic_of_care.", ".$literacy_teaching.", ".$behaviour_support.", ".$pegagogical_expertise.", ".$_SESSION['user'].", ".$user_info['school_id'].", '".$responce3['datestamp']."')";
							print("\n".$query_add);
							$result = mysql_query($query_add);
							if (!$result) {
								die('Invalid query: ' . mysql_error());
							}
							header("Location: index.php");
							
							
							
							print "<br>";
							print "-----------------";
							print "<br><br>";
						}
					}
				}
				
				
				
			}
			

			// release the session key
			$myJSONRPCClient->release_session_key( $sessionKey );
			
			?>
         </div>
      </div>
   </body>
</html>