<?php
session_start();
include ("../config.php");
class PropertyModel {
    private $con;

    public function __construct($db) {
        $this->con = $db;
    }

    public function getPropertyById($id) {
        $stmt = $this->con->prepare("SELECT property.*, user.* FROM `property`, `user` WHERE property.uid=user.uid AND pid=?");
        $stmt->bind_param("i", $id);
        $stmt->execute();
        return $stmt->get_result();
    }

    public function getRecentProperties() {
        $query = "SELECT * FROM `property` ORDER BY date DESC LIMIT 10";
        return $this->con->query($query);
    }
}
