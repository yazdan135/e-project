<?php
include("./connection.php");

$Id = $_GET['id'];
$sql = "delete from main_category where id = $Id";
$result = mysqli_query($con, $sql);

echo "<script>
alert('Main_Category Deleted Successfully');
window.location.href='main_category_show.php'
</script>";
