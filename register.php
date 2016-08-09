<?php
session_name('main_site');
session_start();
if(isset($_SESSION['user'])!="")
{
	header("Location: home.php");
}
include_once 'include/functions.php';
include_once 'dbconnect.php';

if(isset($_POST['btn-signup']))
{
	$uname = escape($_POST['uname']);
	$email = escape($_POST['email']);
	$upass = md5(escape($_POST['pass']));
	
	$uname = trim($uname);
	$email = trim($email);
	$upass = trim($upass);
	
	// email exist or not
	$query = "SELECT user_email FROM users WHERE user_email='$email'";
	$sth=$dbh->prepare($query);
	$sth->execute();
	$count = $sth->fetchAll();   // if email not found then register
	
	
	if(empty($count)){
		$sql = "INSERT INTO users(user_name,user_email,user_pass, school_id) VALUES('$uname','$email','$upass', 0)";
		$sth = $dbh->prepare($sql);
		$sql_success = $sth->execute();
		
		if($sql_success)
		{
			?>
			<script>alert('successfully registered ');</script>
			<?php
		}
		else
		{
			?>
			<script>alert('error while registering you...');</script>
			<?php
		}		
	}
	else{
			?>
			<script>alert('Sorry Email ID already taken ...');</script>
			<?php
	}
	
}
?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Pedagogy of Difference - Login & Registration System</title>
<link rel="stylesheet" href="style.css" type="text/css" />

</head>
<body>
<center>
<div id="login-form">
<form method="post">
<table align="center" width="30%" border="0">
<tr>
<td><input type="text" name="uname" placeholder="Full Name" required /></td>
</tr>
<tr>
<td><input type="email" name="email" placeholder="Your Email" required /></td>
</tr>
<tr>
<td><input type="password" name="pass" placeholder="Your Password" required /></td>
</tr>
<tr>
<td><button type="submit" name="btn-signup">Sign Me Up</button></td>
</tr>
<tr>
<td><a href="index.php">Sign In Here</a></td>
</tr>
</table>
</form>
</div>
</center>
</body>
</html>