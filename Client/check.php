<?php 
include '../db_conn.php';
session_start();
$username=$_POST['username'];
$password=$_POST['password'];
$qry="SELECT * FROM login WHERE Name='$username' AND Password='$password'";
$result=mysqli_query($con,$qry);
$m=mysqli_num_rows($result);
if($m>0)
{
	$_SESSION['username']=$username;
	$_SESSION['password']=$password;

echo "<script>
    alert('Successfully logged in as: " . $_SESSION['username'] . "');
    window.location.href='test.php';
</script>";

	
}
else {
    echo "<div style='color:red;'>invalid username and password!!</div>";
}
?>