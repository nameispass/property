<?php


include("../models/feature_model.php");

if (!isset($_SESSION['uemail'])) {
    header("Location: ../controllers/login_controller.php");
    exit();
}

$uid = $_SESSION['uid'];
$query = mysqli_query($con, "SELECT * FROM `property` WHERE uid='$uid'");

$properties = [];
while ($row = mysqli_fetch_assoc($query)) {
    $properties[] = $row;
}

// Pass data to the view
include_once("../views/feature_view.php");
?>