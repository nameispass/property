<?php
session_start();
include("../config.php");
function getUserProperties($con, $uid) {
    $stmt = $con->prepare("SELECT * FROM `property` WHERE uid = ?");
    $stmt->bind_param("i", $uid);
    $stmt->execute();
    $result = $stmt->get_result();
    $properties = $result->fetch_all(MYSQLI_ASSOC);
    $stmt->close();
    return $properties;
}
?>