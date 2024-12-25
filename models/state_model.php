<?php
include_once("../config.php");
class PropertyModel {
    private $con;

    public function __construct($dbConnection) {
        $this->con = $dbConnection;
    }

    public function getPropertiesByState($state) {
        $query = $this->con->prepare("SELECT property.*, user.uname, user.utype, user.uimage 
                                      FROM property, user 
                                      WHERE property.uid = user.uid AND state = ?");
        $query->bind_param("s", $state);
        $query->execute();
        return $query->get_result();
    }

    public function getRecentProperties($limit = 6) {
        $query = $this->con->prepare("SELECT * FROM property ORDER BY date DESC LIMIT ?");
        $query->bind_param("i", $limit);
        $query->execute();
        return $query->get_result();
    }
}
