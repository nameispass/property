<?php

require_once "../models/register_model.php";

class RegisterController {
    private $model;

    public function __construct($con) {
        $this->model = new model($con);
    }

    public function handleRegister() {
        $error = "";
        $msg = "";

        if (isset($_POST['reg'])) {
            $name = $_POST['name'] ?? "";
            $email = $_POST['email'] ?? "";
            $phone = $_POST['phone'] ?? "";
            $pass = $_POST['pass'] ?? "";
            $utype = $_POST['utype'] ?? "";
            $uimage = $_FILES['uimage']['name'] ?? "";
            $temp_name1 = $_FILES['uimage']['tmp_name'] ?? "";

            if ($this->model->isEmailExist($email)) {
                $error = "<p class='alert alert-warning'>Email này đã được sử dụng</p>";
            } else if (!empty($name) && !empty($email) && !empty($phone) && !empty($pass) && !empty($uimage)) {
                move_uploaded_file($temp_name1, "../admin/user/$uimage");
                if ($this->model ->registerUser($name, $email, $phone, $pass, $utype, $uimage)) {
                    $msg = "<p class='alert alert-success'>Đăng ký thành công</p>";
                } else {
                    $error = "<p class='alert alert-warning'>Đăng ký không thành công</p>";
                }
            } else {
                $error = "<p class='alert alert-warning'>Xin vui lòng nhập đầy đủ thông tin</p>";
            }
        }

        return ['error' => $error, 'msg' => $msg];
    }
}
include_once("../views/register_view.php");
?>
