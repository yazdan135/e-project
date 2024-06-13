<?php
include("./connection.php");

$Id = $_GET['id'];
$sql = "delete from sub_cateory where id = $Id";
$result = mysqli_query($con, $sql);

echo "<script>
alert('Sub_category Deleted Successfully');
window.location.href='sub_category_show.php'
</script>";
