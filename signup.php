<?php  
  
include("db_connect.php");//make connection here  
if(isset($_POST['register']))  
{  
    $fullname=$_POST['fullname'];//here getting result from the post array after submitting the form.  
     
    $username=$_POST['username'];//same  
    $password=$_POST['password'];//same  
    $email=$_POST['email'];
    
  
  
    
//here query check weather if user already registered so can't register again.  
   // $check_email_query="select * from users WHERE user_email='$user_email'";  
   // $run_query=mysqli_query($dbcon,$check_email_query);  
  
   /* if(mysqli_num_rows($run_query)>0)  
    {  
echo "<script>alert('Email $user_email is already exist in our database, Please try another one!')</script>";  
exit();  
    }  */
//insert the user into the database.  
    $insert_user="INSERT INTO www (fullname,username,password,email) VALUE ('$fullname','$username','$password','$email')";  
    if(mysqli_query($connection,$insert_user))  
    {  
        echo"<script>window.open('login.html','_self')</script>";  
    }  
  
  
  
}  
  
?>  