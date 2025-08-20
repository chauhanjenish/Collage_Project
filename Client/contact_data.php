<?php
include "../db_conn.php";
$name=$_POST['name'];
$email=$_POST['email'];
$mo=$_POST['mob'];

$qry="insert into contact(Name,Email,Mobile_No)values('$name','$email','$mo')";
$result=mysqli_query($con,$qry);
if (isset($result))
{
	echo "Contact Details Submitted!!";
	header("Location:../client/test.php");
	exit();

}
?>