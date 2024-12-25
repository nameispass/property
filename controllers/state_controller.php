<?php

include_once("../models/state_model.php");

class PropertyController {
    private $model;

    public function __construct($dbConnection) {
        $this->model = new PropertyModel($dbConnection);
    }

    public function showProperties($state) {
        return $this->model->getPropertiesByState($state);
    }

    public function showRecentProperties() {
        return $this->model->getRecentProperties();
    }
}
include_once("../views/state_view.php");
?>