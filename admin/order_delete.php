<?php
include("./connection.php");

$Id = $_GET['id'];
$sql = "delete from `order` where id = $Id";
$result = mysqli_query($con, $sql);

echo"<script>
alert('Order Deleted Successfully');
window.location.href='order_show.php'
</script>";
?>