<html>
<body>
<?php
if(! session_id() ) { session_start(); }
 require('db_connect.php');

if(isset($_POST['login']))  
{   
	
// Assigning POST values to variables.
$username = $_POST['username'];
$password = $_POST['password'];
}



// CHECK FOR THE RECORD FROM TABLE
$query = "SELECT * FROM www WHERE username='$username' AND password='$password'";
 
$result = mysqli_query($connection, $query) or die(mysqli_error($connection));
$count = mysqli_num_rows($result);


if ($count > 0 ) {
    $user = mysqli_fetch_row($result);
	$_SESSION['email'] = $user[0];
	$_SESSION['userid'] = $user[4];
	echo "<script> location.href='loggedindex.php'; </script>";
    exit;
}


if($count == 0 ){
	?>
<script type='text/javascript'>alert('Please input correct details');window.history.back();</script>

<?php 
}
?>
</body>
</html>