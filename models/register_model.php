<?php
require_once "../config.php";
class model {
    private $con;

    public function __construct($dbConnection) {
        $this->con = $dbConnection;
    }

    public function isEmailExist($email) {
        $query = "SELECT * FROM user WHERE uemail = ?";
        $stmt = $this->con->prepare($query);
        $stmt->bind_param("s", $email);
        $stmt->execute();
        $stmt->store_result();
        return $stmt->num_rows > 0;
    }

    public function registerUser($name, $email, $phone, $pass, $utype, $uimage) {
        $query = "INSERT INTO user (uname, uemail, uphone, upass, utype, uimage) VALUES (?, ?, ?, ?, ?, ?)";
        $stmt = $this->con->prepare($query);
        $stmt->bind_param("ssssss", $name, $email, $phone, $pass, $utype, $uimage);
        return $stmt->execute();
    }
}
?>
