<?php

include_once("../models/progrid_model.php");

class PropertyController {
    private $model;

    public function __construct($dbConnection) {
        $this->model = new PropertyModel($dbConnection);
    }

    public function handleRequest() {
        global $con;

        $uname = isset($_SESSION['uname']) ? $_SESSION['uname'] : null;

        $properties = null;

        if (isset($_REQUEST['filter'])) {
            $type = isset($_REQUEST['type']) ? $_REQUEST['type'] : '';
            $stype = isset($_REQUEST['stype']) ? $_REQUEST['stype'] : '';
            $city = isset($_REQUEST['city']) ? $_REQUEST['city'] : '';
            $properties = $this->model->getFilteredProperties($type, $stype, $city);
        }

        $recentProperties = $this->model->getRecentProperties();

        // Pass data to the view
        
    }
}
include_once("../views/progrid_view.php");
$propertyController = new PropertyController($con);
$propertyController->handleRequest();
?>
