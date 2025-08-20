<style type="text/css">
	*
	{
		margin: 0;
		padding: 0;
	}
	table
	{
		text-align: center;
	}
	th,tr,td
	{
		padding: 10px;
		margin: 10px;
	}
	img
	{
		width: 100px;
		height: 100px;
	}	
	a
	{
		text-decoration: none;
		border: 1px solid black;
		background: red;
		color: white;
		padding: 10px;
	}
	.BUY
	{
		background: blue;
	}
	.cart_img
	{
		height: 30px;
		width: 30px;
	}
</style>
<?php
session_start();
if (!isset($_SESSION['user_id'])) 
{
	echo "<script>alert('Please Login');
	window.location.href='login.php';
	</script>";
	exit;
}
$userid=$_SESSION['user_id'];
    include "../db_conn.php";
    $qry = "SELECT * FROM cart where p_id='$userid'";
    $result = mysqli_query($con, $qry);
?>

    <center>
        <h2>Cart Items</h2>
        <table border="1" cellspacing="10" cellpadding="20">
            <tr>
                <th>Image</th>
                <th>Product Name</th>
                <th>Size</th>
                <th>Price</th>
                <th>Qty</th>
                <th>Total</th>
                <th>Action</th>
            </tr>

            <?php
            if(isset($_SESSION['user_id']))
            {
            if (mysqli_num_rows($result) > 0) {
                while ($row = mysqli_fetch_assoc($result)) {
                    echo "<tr>
                        <td><img src='../uploads/{$row['images']}' alt='Product Image' width='80'></td>
                        <td>{$row['title']}</td>
                        <td>{$row['size']}</td>
                        <td>{$row['price']}</td>
                        <td>{$row['qty']}</td>
                        <td>{$row['total']}</td>
                        <td>
                            <a href='cart_delete.php?table=cart&id={$row['p_id']}'>Delete</a>
                            <a href='check_out.php?table=cart&id={$row['p_id']}' class='BUY'>BUY NOW</a>
                        </td>
                    </tr>";
                }
            } else {
                echo "<tr><td colspan='7'>No items in your cart</td></tr>";
            }
           }
            ?>
        </table>
    </center>
	</table>
	<br>
	<a href="../client/test.php" style="padding:10px 20px;"><img src="../img/cart.svg" class="cart_img">Countinue Shopping..</a>
</center>