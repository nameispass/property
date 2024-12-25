<?php

include "../models/pro_model.php";

class PropertyController {
    private $propertyModel;

    public function __construct($con) {
        $this->propertyModel = new PropertyModel($con);
    }

    public function showPropertyGrid() {
        global $con;
        $properties = $this->propertyModel->getAllProperties();
    }

    public function showRecentProperties() {
        return $this->propertyModel->getRecentProperties();
    }
}   
$action = $_GET['action'] ?? 'grid';
$controller = new PropertyController($con);
if ($action === 'grid') {
    $controller->showPropertyGrid();
}
include_once("../views/pro_view.php");
?>
