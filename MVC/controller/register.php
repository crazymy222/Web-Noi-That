<?php
class register extends controller
{
    private $userModel;
    public function __construct()
    {
        $this->userModel = $this->model("usersModel");
    }
    public function show()
    {
        $this->view("layout1", [
            "title" => "Register",
            "pages" => "register"
        ]);
    }
    public function xuLyDangKy()
    {
        if (isset($_POST["btnRegister"])) {
            $username = $_POST["username"];
            $password = $_POST["password"];
            $password = password_hash($password, PASSWORD_DEFAULT);
            $email = $_POST["email"];
            $fullname = $_POST["fullname"];
            $address = $_POST["address"];

            $result =  $this->userModel->insertNewUser($username, $password, $email, $fullname, $address);
            
            $this->view("layout1", [
                "title" => "Register",
                "pages" => "register",
                "result"=> $result
            ]);
        }
    }
}
