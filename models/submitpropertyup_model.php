<?php
session_start();
include("../config.php");
class Property {
    private $con;

    public function __construct($dbConnection) {
        $this->con = $dbConnection;
    }

    public function updateProperty($data, $pid) {
        $sql = "UPDATE property SET 
            title= '{$data['title']}', 
            pcontent= '{$data['content']}', 
            type='{$data['ptype']}', 
            bhk='{$data['bhk']}', 
            stype='{$data['stype']}', 
            bedroom='{$data['bed']}', 
            bathroom='{$data['bath']}', 
            balcony='{$data['balc']}', 
            kitchen='{$data['kitc']}', 
            hall='{$data['hall']}', 
            floor='{$data['floor']}', 
            size='{$data['asize']}', 
            price='{$data['price']}', 
            location='{$data['loc']}', 
            city='{$data['city']}', 
            state='{$data['state']}', 
            feature='{$data['feature']}', 
            pimage='{$data['aimage']}', 
            pimage1='{$data['aimage1']}', 
            pimage2='{$data['aimage2']}', 
            pimage3='{$data['aimage3']}', 
            pimage4='{$data['aimage4']}', 
            uid='{$data['uid']}', 
            status='{$data['status']}', 
            mapimage='{$data['fimage']}', 
            topmapimage='{$data['fimage1']}', 
            groundmapimage='{$data['fimage2']}', 
            totalfloor='{$data['totalfloor']}' 
            WHERE pid = {$pid}";

        return mysqli_query($this->con, $sql);
    }
}
?>