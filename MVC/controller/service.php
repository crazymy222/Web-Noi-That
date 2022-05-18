<?php
class service extends controller{
    function show() {
        $this->view("layout1",[
            "title"=>"Service",
            "pages"=>"service"
        ]);
    }
}