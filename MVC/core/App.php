<?php
class App
{
    protected $controller = "home";
    protected $action = "show";
    protected $params = [];

    function __construct()
    {
        $url = $this->getUrl();
        //xu li controller
        if (file_exists("./MVC/controller/" . $url[0] . ".php")) {
            $this->controller = $url[0];
            unset($url[0]);
        }

        require_once "./MVC/controller/" . $this->controller . ".php";
        $this->controller = new $this->controller;

        //xu li action
        if (isset($url[1])) {
            if (method_exists($this->controller, $url[1])) {
                $this->action = $url[1];
                unset($url[1]);   
            }
            
        }

        //xu ly params
        $this->params = $url ? array_values($url) : [];

        call_user_func_array([$this->controller, $this->action], $this->params);
    }

    function getUrl()
    {
        if (isset($_GET["url"])) {
            return explode("/", filter_var(trim($_GET["url"], "/")));
        }
    }
}
