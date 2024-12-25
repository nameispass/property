<?php
  
require_once '../models/about_model.php';


class AboutController {
    private $model;

    public function __construct($con) {
        $this->model = new AboutModel($con); // Khởi tạo model
    }

    public function handleRequest() {
        // Lấy dữ liệu từ model
        $aboutData = $this->model->getAboutData();

        
    }
    
}
require_once '../views/about_view.php';
?>
