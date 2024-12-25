<?php
include "../models/prodetail_model.php";

class PropertyController {
    private $model;

    public function __construct($con) {
        $this->model = new PropertyModel($con);
    }

    public function displayPropertyDetail($id) {
        global $con;
        $query = "SELECT property.*, user.* FROM `property`, `user` WHERE property.uid=user.uid and pid='$id'";
        $result = $this->model->getPropertyById($id);
        $property = $result->fetch_assoc();
        include "../views/prodetail_view.php"; // Load view with data
    }

    public function displayRecentProperties() {
        return $this->model->getRecentProperties();
    }
}

$controller = new PropertyController($con);

// Nhận tham số từ URL
if (isset($_GET['pid'])) {
    $controller->displayPropertyDetail($_GET['pid']);
}
include_once("../views/prodetail_view.php");
?>