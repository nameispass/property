<?php
session_start();
class CalcModel {
    public function calculateEMI($amount, $mon, $int) {
        $interest = $amount * $int / 100;
        $pay = $amount + $interest;
        $month = $pay / $mon;
        return [
            'amount' => $amount,
            'mon' => $mon,
            'int' => $int,
            'interest' => $interest,
            'pay' => $pay,
            'month' => $month
        ];
    }
}
?>
