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

if(isset($_POST['btn-save-school']))
{
	
	
	$sql="UPDATE users SET school_id=".$_POST['school']." WHERE user_id=".$_SESSION['user'];
	$sth=$dbh->prepare($sql);
	$sth->execute();
	$row = $sth->fetchAll();
	
	?>
        <script>alert('School Updated');</script>
    <?php
	
	
}

?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Admin Tools - <?php echo $userRow['user_email']; ?></title>
<link rel="stylesheet" href="style.css" type="text/css" />
</head>
<body>
<?php
include 'include/header.php';
include 'include/nav.php';
?>

<div id="body">

<h3>Set School you teach at.</h3>
<form method="post">
<select name="school"> 
	<?php
	$sql = "SELECT school_id FROM users WHERE user_id=".$_SESSION['user'];
	$sth=$dbh->prepare($sql);
	$sth->execute();
	$school_id = $sth->fetchAll();
	print_r($school_id);
	
	
	$sql = "SELECT school_id, school_name FROM schools WHERE school_id=".$school_id[0][0];
	$sth=$dbh->prepare($sql);
	$sth->execute();
	$school = $sth->fetchAll();
	print_r($school);
	echo "<option value='".$school_id[0][0]."'>".$school[0][1]."</option>\n";
	?>

  <option value="0">No School</option>
  
  <?php
  $sql = "SELECT school_id, school_name FROM schools";
	$sth=$dbh->prepare($sql);
	$sth->execute();
	$schools = $sth->fetchAll();
	
	foreach ($schools as $school){
		echo "<option value='$school[0]'>$school[1]</option>\n";
	}
	
  ?>
  
  
  
</select>
<button type="submit" name="btn-save-school">Save</button>
</form>
<br>
	
	<?php 
	if(isset($_POST['btn-change-my-password'])){
			$sql = "UPDATE users SET user_pass='".md5(escape($_POST['pass']))."' WHERE user_email ='".$userRow['user_email']."'";
			$sth=$dbh->prepare($sql);
			$sth->execute();
			$test = $sth->fetchAll();
			?> <script>alert('Password updated');</script> <?php
		}
		
			$sql = "SELECT * FROM users WHERE user_email ='".$userRow['user_email']."'";
			$sth=$dbh->prepare($sql);
			$sth->execute();
			$user = $sth->fetchAll();
			$user = $user[0];
			
			?>
			<h2>Change my password</h2>
			<form method="post">
			<input type="hidden" name="email" value="<?php echo $userRow['user_email']?>">
			<input type="text" name="pass" placeholder="Password" required />
			<button type="submit" name="btn-change-my-password">Submit</button>
			</form>
			
			<?php
		
	if ($_SESSION['user_type'] == 'standard'){
		
	}
	
	if ($_SESSION['user_type'] == 'admin' OR $_SESSION['user_type'] == 'super_admin'){
		
	}
	
	if ($_SESSION['user_type'] == 'super_admin'){
		
		if(isset($_POST['btn-find-user']) or isset($_POST['btn-change-user-level']) or isset($_POST['btn-change-user-password'])){
			$user_email = escape($_POST['email']);
		}
		
		?>
		<br>
		<h1>Admin Tools</h1>
		<h3>Search for user</h3>
		<form method="post">
		Email: <input type="text" name="email" value="<?php if (isset($user_email)) echo $user_email;?>"><br>
		<button type="submit" name="btn-find-user">Search</button>
		</form>
		<br>
		<?php
		if(isset($_POST['btn-change-user-level'])){
				$sql = "UPDATE users SET user_type='".$_POST['user_level']."' WHERE user_email ='".$user_email."'";
				$sth=$dbh->prepare($sql);
				$sth->execute();
				$test = $sth->fetchAll();
				?> <script>alert('User status updated');</script> <?php
			}
		if(isset($_POST['btn-change-user-password'])){
				$sql = "UPDATE users SET user_pass='".md5(escape($_POST['pass']))."' WHERE user_email ='".$user_email."'";
				$sth=$dbh->prepare($sql);
				$sth->execute();
				$test = $sth->fetchAll();
				?> <script>alert('User password updated');</script> <?php
			}
		if (isset($user_email) or isset($_POST['btn-change-user-level']) or isset($_POST['btn-change-user-password'])){
			$sql = "SELECT * FROM users WHERE user_email ='".$user_email."'";
			$sth=$dbh->prepare($sql);
			$sth->execute();
			$user = $sth->fetchAll();
			$user = $user[0];
			
			?>
			<h3>Change user access level</h3>
			<form method="post">
			<input type="hidden" name="email" value="<?php echo $user['user_email']?>">
			<input type="radio" name="user_level" value="standard" <?php if ($user['user_type'] == 'standard') echo 'checked';?>>Standard <br>
			<input type="radio" name="user_level" value="admin" <?php if ($user['user_type'] == 'admin') echo 'checked';?>>Admin <br>
			<input type="radio" name="user_level" value="super_admin" <?php if ($user['user_type'] == 'super_admin') echo 'checked';?>>Super Admin <br>
			<button type="submit" name="btn-change-user-level">Submit</button>
			</form>
			<?php
			
		}
		if (isset($user_email) or isset($_POST['btn-change-user-level']) or isset($_POST['btn-change-user-password'])){
			$sql = "SELECT * FROM users WHERE user_email ='".$user_email."'";
			$sth=$dbh->prepare($sql);
			$sth->execute();
			$user = $sth->fetchAll();
			$user = $user[0];
			
			?>
			<h3>Change user password</h3>
			<form method="post">
			<input type="hidden" name="email" value="<?php echo $user['user_email']?>">
			<input type="text" name="pass" placeholder="Password" required />
			<button type="submit" name="btn-change-user-password">Submit</button>
			</form>
			<?php
			
		}
		
		echo"<h2>Stats:</h2> \n";
		
		$sql = "SELECT * FROM historic_survey_data"; 
		$sth=$dbh->prepare($sql);
		$sth->execute();
		$survey_data = $sth->fetchAll();

		//print_r($survey_data);

		echo "Number of surveys processed: ";
		echo count($survey_data);
		echo "\n <br> \n";
		echo "Last survey processed on the: ";
		print_r($survey_data[(count($survey_data)-1)]['time_finished']);
		
	}
	?>
	
</div>

</body>
</html>