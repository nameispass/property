<?php
// model/FeedbackModel.php
session_start();
include('../config.php');
class FeedbackModel {
    private $con;

    public function __construct($con) {
        $this->con = $con;
    }

    public function insertFeedback($uid, $content) {
        $sql = "INSERT INTO feedback (uid, fdescription, status) VALUES ('$uid', '$content', '0')";
        return mysqli_query($this->con, $sql);
    }
    
    public function getUserInfo($uid) {
        $sql = "SELECT * FROM user WHERE uid='$uid'";
        return mysqli_query($this->con, $sql);
    }
}
?>
