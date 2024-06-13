<?php
include("./connection.php");

$Id  = $_GET['id'];
$sql = "delete from user where id = $Id";
$result = mysqli_query($con, $sql);


echo"<script>
alert('User Deleted Successfully');
window.location.href='user_show.php'
</script>";

?>