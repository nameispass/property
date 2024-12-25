<?php

session_start();
include("../config.php"); // Kết nối cơ sở dữ liệu

class PropertyModel {
    private $db;

    public function __construct($dbConnection) {
        $this->db = $dbConnection;
    }

    public function getFilteredProperties($type, $stype, $city) {
        $query = "SELECT * FROM property WHERE 1=1";
    
        if (!empty($type)) {
            $query .= " AND type = ?";
        }
        if (!empty($stype)) {
            $query .= " AND stype = ?";
        }
        if (!empty($city)) {
            $query .= " AND city = ?";
        }
    
        $stmt = $this->db->prepare($query);
        $params = array_filter([$type, $stype, $city], fn($val) => !empty($val));
        $stmt->bind_param(str_repeat("s", count($params)), ...$params);
        $stmt->execute();
        return $stmt->get_result()->fetch_all(MYSQLI_ASSOC);
    }
    

    public function getRecentProperties($limit = 10) {
        $query = "SELECT * FROM property ORDER BY date DESC LIMIT ?";
        $stmt = $this->db->prepare($query);
        $stmt->bind_param("i", $limit);
        $stmt->execute();
        return $stmt->get_result();
    }
}


?>
