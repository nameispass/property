<?php
session_start();
include("../config.php");
class PropertyModel {
    private $con;

    public function __construct($db) {
        $this->con = $db;
    }

    public function getAllProperties() {
        $query = "SELECT property.*, user.uname, user.utype, user.uimage 
                  FROM `property` 
                  JOIN `user` ON property.uid = user.uid";
        return $this->con->query($query);
    }

    public function getRecentProperties() {
        $query = "SELECT * FROM `property` ORDER BY date DESC LIMIT 6";
        return $this->con->query($query);
    }
}
?>
