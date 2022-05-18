<?php
class ajax extends controller
{
    public $usersModel;
    public function __construct()
    {
        $this->usersModel = $this->model("usersModel");
    }
    public function checkUserName()
    {
        $userName = $_POST["userName"];
        if (json_decode($this->usersModel->checkUserName($userName))) {
            echo "This user name is already in use";
        }
    }
}
