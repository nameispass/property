<?php
session_start();
include("../config.php");
class model {
    private $con;

    public function __construct($db) {
        $this->con = $db;
    }
    public function login($email, $password) {
        $stmt = $this->con->prepare("SELECT * FROM user WHERE uemail = ? AND upass = ?");
        $stmt->bind_param("ss", $email, $password);
        $stmt->execute();
        $result = $stmt->get_result();
        return $result->fetch_assoc();
    }
}
?>
