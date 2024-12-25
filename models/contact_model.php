<?php
session_start();
require_once '../config.php';
class ContactModel {
    private $con;

    public function __construct($db) {
        $this->con = $db;
    }

    public function saveMessage($data) {
        $sql = "INSERT INTO contact (name, email, phone, subject, message) VALUES (?, ?, ?, ?, ?)";
        $stmt = $this->con->prepare($sql);
        return $stmt->execute([$data['name'], $data['email'], $data['phone'], $data['subject'], $data['message']]);
    }
}
