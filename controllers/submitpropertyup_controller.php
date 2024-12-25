<?php

include("../models/submitpropertyup_model.php");

if (!isset($_SESSION['uemail'])) {
    header("location:../controllers/login_controller.php");
    exit();
}

$propertyModel = new Property($con);
$msg = "";

if (isset($_POST['add'])) {
    $pid = $_REQUEST['id'];
    $data = [
        'title' => $_POST['title'],
        'content' => $_POST['content'],
        'ptype' => $_POST['ptype'],
        'bhk' => $_POST['bhk'],
        'bed' => $_POST['bed'],
        'balc' => $_POST['balc'],
        'hall' => $_POST['hall'],
        'stype' => $_POST['stype'],
        'bath' => $_POST['bath'],
        'kitc' => $_POST['kitc'],
        'floor' => $_POST['floor'],
        'price' => $_POST['price'],
        'city' => $_POST['city'],
        'asize' => $_POST['asize'],
        'loc' => $_POST['loc'],
        'state' => $_POST['state'],
        'status' => $_POST['status'],
        'uid' => $_SESSION['uid'],
        'feature' => $_POST['feature'],
        'totalfloor' => $_POST['totalfl'],
        'aimage' => $_FILES['aimage']['name'],
        'aimage1' => $_FILES['aimage1']['name'],
        'aimage2' => $_FILES['aimage2']['name'],
        'aimage3' => $_FILES['aimage3']['name'],
        'aimage4' => $_FILES['aimage4']['name'],
        'fimage' => $_FILES['fimage']['name'],
        'fimage1' => $_FILES['fimage1']['name'],
        'fimage2' => $_FILES['fimage2']['name'],
    ];

    // Move uploaded files
    foreach ($_FILES as $file) {
        move_uploaded_file($file['tmp_name'], "../admin/property/" . $file['name']);
    }

    if ($propertyModel->updateProperty($data, $pid)) {
        $msg = "<p class='alert alert-success'>Property Updated</p>";
    } else {
        $msg = "<p class='alert alert-warning'>Property Not Updated</p>";
    header("Location: ../views/feature.php?msg=$msg");
    exit();
    }
}
include_once("../views/submitpropertyup_view.php");
?>