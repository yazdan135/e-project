<?php
include("./connection.php");

$Id = $_GET['id'];
$sql = "delete from client where id = $Id";
$result = mysqli_query($con, $sql);

echo"<script>
alert('client Deleted Successfully');
window.location.href='client_show.php'
</script>";
?>