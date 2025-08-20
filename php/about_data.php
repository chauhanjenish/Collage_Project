<?php
include '../db_conn.php';
if ($_POST['submit'])
{
	$name=$_POST['nm'];
	$mo=$_POST['no'];
	$email=$_POST['em'];
	$msg=$_POST['msg'];
	$star=$_POST['review'];

	$qry=mysqli_query($con,"INSERT INTO review_data(Name,Mobile_No,Email,Message,Review) VALUES ('$name','$mo','$email','$msg','$star')");
	if($qry)
	{?>
		<center><h2>Thank You For Review</h2></center>
	<?php }
	else
	{
		echo "Data Insert Not Success";
	}
}
else
{
	echo "Connection Problem";
}
?>