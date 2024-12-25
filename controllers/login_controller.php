<?php

require_once "../models/login_model.php";

class control {
    private $model;

    public function __construct($con) {
        $this->model = new model($con);
    }

    public function handleLogin() {
        $error = "";
        $msg = "";

        if (isset($_POST['login'])) {
            $email = $_POST['email'];
            $pass = $_POST['pass'];

            if (!empty($email) && !empty($pass)) {
                $user = $this->model->login($email, $pass);

                if ($user) {
                    $_SESSION['uid'] = $user['uid'];
                    $_SESSION['uemail'] = $user['uemail'];
                    header("Location: ../index.php");
                    exit();
                } else {
                    $error = "<p class='alert alert-warning'>Login Not Successfully</p>";
                }
            } else {
                $error = "<p class='alert alert-warning'>Please Fill all the fields</p>";
            }
        }

        return compact('error', 'msg');
    }
}

// Khởi tạo controller và xử lý yêu cầu
$controller = new control($con);
$data = $controller->handleLogin();
include_once("../views/login_view.php");
?>
