<div id="nav">
	<h2><a href='index.php'>Home</a></h2>
	<h2><a href='limesurvey/index.php/764745?lang=en?UserID=<?php echo $_SESSION['user'] ?>'>Take Survey</a></h2>
	<h2><a href='results.php'>My Results</a></h2>
	<?php
	if ($_SESSION['user_type'] == 'admin' OR $_SESSION['user_type'] == 'super_admin'){
		?>
		<h2><a href='school_results.php'>School Results</a></h2>
		<?php
	}
	?>
	<h2><a href='account.php'>My Account</a></h2>
</div>
