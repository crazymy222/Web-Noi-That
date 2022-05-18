<?php
class product extends controller
{
    private $categoryModel;
    private $productModel;
    
    public function __construct()
    {
        $this->categoryModel = $this->model("categoryModel");
        $this->productModel = $this->model("productModel");
    }
     public function show()
    {
        $this->view("layout1", [
            "title" => "Product",
            "pages" => "product",
            "products" => $this->productModel->getProducts(),
            "categories" => $this->categoryModel->getCategories()
        ]);
    }
    public function category($categoryID){
        $this->view("layout1", [
            "title" => "Product",
            "pages" => "product",
            "products" => $this->productModel->getProductsByCategory($categoryID),
            "categories" => $this->categoryModel->getCategories()
        ]);
    }
}
