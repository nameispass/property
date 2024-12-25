<?php
include_once("../config.php");
include_once("../models/calc_model.php");

class CalcController {
    public function handleRequest() {
        $data = [
            'amount' => "",
            'mon' => "",
            'int' => "",
            'interest' => "",
            'pay' => "",
            'month' => ""
        ];

        if (isset($_REQUEST['calc'])) {
            $amount = $_REQUEST['amount'] ?? 0;
            $mon = $_REQUEST['month'] ?? 0;
            $int = $_REQUEST['interest'] ?? 0;

            // Model xử lý tính toán
            $calcModel = new CalcModel();
            $data = $calcModel->calculateEMI($amount, $mon, $int);
        }

        // Gửi dữ liệu đến View
        
    }
}
include_once("../views/calc_view.php");
$controller = new CalcController();
$controller->handleRequest();
?>
