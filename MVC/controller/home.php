<?php
class home extends controller{
    private $categoryModel;
    private $productSaleModel;
    
     public function __construct()
    {
        $this->categoryModel = $this->model("categoryModel");
        $this->productSaleModel = $this->model("productModel");
    }
     public function show(){
        
        $this->view("layout1",
        ["title"=>"Home",
        "pages"=>"home",
        "productsSale"=>$this->productSaleModel->getProductsSale(),
        "categories"=>$this->categoryModel->getCategories()
        ]);        
    }
}
