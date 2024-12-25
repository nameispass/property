<?php

require_once '../models/contact_model.php';
// require_once '../views/contact_view.php';

class ContactController {
    private $model;
    // private $view;
    private $error = '';
    private $msg = '';

    public function __construct($con) {
        $this->model = new ContactModel($con);
    }

    public function handleRequest() {
        // $msg = "";
        // $error = "";

        if ($_SERVER['REQUEST_METHOD'] === 'POST' && isset($_POST['send'])) {
            $data = [
                'name' => $_POST['name'] ?? '',
                'email' => $_POST['email'] ?? '',
                'phone' => $_POST['phone'] ?? '',
                'subject' => $_POST['subject'] ?? '',
                'message' => $_POST['message'] ?? '',
            ];

            if (!empty($data['name']) && !empty($data['email']) && !empty($data['phone']) && !empty($data['subject']) && !empty($data['message'])) {
                if ($this->model->saveMessage($data)) {
                    $msg = "Message sent successfully.";
                } else {
                    $error = "Failed to send message.";
                }
            } else {
                $error = "Please fill all the fields.";
            }
        }

        // Render view
        // $this->view->renderForm($msg, $error);
        
    }
    public function getMessages() {
        return ['msg' => $this->msg, 'error' => $this->error];
    }
    
}
$controller = new ContactController($con);
$controller->handleRequest();
$messages = $controller->getMessages();
$error = $data['error'] ?? "";
$msg = $data['msg'] ?? "";
include_once("../views/contact_view.php");
?>