<?php
include("./connection.php");

$Id = $_GET['id'];
$sql = "delete from role where id = $Id";
$result = mysqli_query($con, $sql);

echo"<script>
alert('Role Deleted Successfully');
window.location.href='role_show.php'
</script>";
?>