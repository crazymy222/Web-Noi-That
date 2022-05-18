<?php
class login extends controller{
    private $usersModel;
    public function __construct()
    {
       $this->usersModel = $this->model("usersModel");
    }
    public function show()
    {
        $this->view("layout1", [
            "title" => "Login",
            "pages" => "login"
        ]);
    }
}
?>
