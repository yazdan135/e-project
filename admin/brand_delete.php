<?php
include("./connection.php");

$Id = $_GET['id'];
$sql = "delete from brand where id = $Id";
$result = mysqli_query($con, $sql);

echo "<script>
alert('brand Deleted Successfully');
window.location.href='brand_show.php'
</script>";
