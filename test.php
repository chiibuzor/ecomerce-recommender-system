<?php 
$connection = mysqli_connect('localhost', 'root', '1234567890' );
if (!$connection){
    die("Database Connection Failed" . mysqli_error($connection));
}
$select_db = mysqli_select_db($connection, 'datab');
if (!$select_db){
    die("Database Selection Failed" . mysqli_error($connection));
}
$sql = "SELECT * from www";
	$q = mysqli_query($connection, $sql);
	
	while($result = mysqli_fetch_array($q)){
		echo $result['fullname'];
	}
	
	mysqli_close($connection);
phpinfo();
?>