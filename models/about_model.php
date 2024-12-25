<?php

session_start();
require_once '../config.php';
class AboutModel {
    private $conn;

    public function __construct($con) {
        $this->conn = $con;
    }

    public function getAboutData() {
        $query = "SELECT * FROM about";
        $result = mysqli_query($this->conn, $query);
        $data = mysqli_fetch_all($result, MYSQLI_ASSOC);
        return $data;
    }
}
?>
