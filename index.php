<?php
 
error_reporting(E_ALL);
ini_set("display_errors", "On");
 
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
			
			echo "<p> -------- </p>";
			
			$answers = $myJSONRPCClient->export_responses($sessionKey, $survey_id, 'json');
			print_r($answers, null);

			$decoded = base64_decode($answers);
			$ar = json_decode($decoded, true); //<-- Now returned as an array, and not an object

			echo "<pre>";
				print_r($decoded);
			echo "</pre>";

			echo "<pre>";
				print_r($ar);
			echo "</pre>";  
			
			
			$data = json_decode($answers,true);
			
			print_r($data, null);

			// release the session key
			$myJSONRPCClient->release_session_key( $sessionKey );
			
			?>
         </div>
      </div>
   </body>
</html>