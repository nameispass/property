<?php
include("../config.php");
$pid = $_GET['id'];
$sql = "DELETE FROM property WHERE pid = {$pid}";
$result = mysqli_query($con, $sql);
if($result == true)
{
	$msg="<p class='alert alert-success'>Xóa Bất Động Sản</p>";
	header("Location:../views/feature.php?msg=$msg");
}
else{
	$msg="<p class='alert alert-warning'>Bất động sản chưa được xóa</p>";
	header("Location:../views/feature.php?msg=$msg");
}
mysqli_close($con);
?>