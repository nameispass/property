<?php
// controller/FeedbackController.php

include('../models/profile_model.php');

if (!isset($_SESSION['uemail'])) {
    header("location:../controllers/login_controller.php");
    exit;   
}

$feedbackModel = new FeedbackModel($con);
$msg = '';
$error = '';

if (isset($_POST['insert'])) {
    $name = $_POST['name'];
    $phone = $_POST['phone'];
    $content = $_POST['content'];
    $uid = $_SESSION['uid'];

    if (!empty($name) && !empty($phone) && !empty($content)) {
        if ($feedbackModel->insertFeedback($uid, $content)) {
            $msg = "<p class='alert alert-success'>Feedback Sent Successfully</p>";
        } else {
            $error = "<p class='alert alert-warning'>Feedback Not Sent Successfully</p>";
        }
    } else {
        $error = "<p class='alert alert-warning'>Please Fill all the fields</p>";
    }
}

// Fetch user info for the profile
$userQuery = $feedbackModel->getUserInfo($_SESSION['uid']);
$user = mysqli_fetch_array($userQuery);

// Include the view
include_once('../views/profile_view.php');
?>
