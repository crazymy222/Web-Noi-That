<?php
class productModel extends DB{
    public function getProductsSale(){
        $query="SELECT pr.id as id, pr.name as name,Pr.img as img,price,sale
        FROM products as PR inner join category as CA on PR.category=CA.id 
        WHERE PR.sale>0
        LIMIT 3";
        $rows= mysqli_query($this->con,$query);
        $mang = array();
        while($row = mysqli_fetch_array($rows)){
            $mang[]=$row;
        }
        return json_encode($mang);
    }
    public function getProducts(){
        $query="SELECT pr.id as id, pr.name as name,Pr.img as img,price,sale
        FROM products as PR inner join category as CA on PR.category=CA.id
        order by pr.id";
        return mysqli_query($this->con,$query);
    }
    public function getProductsByCategory($category){
        $query="SELECT pr.id as id, pr.name as name,Pr.img as img,price,sale
        FROM products as PR inner join category as CA on PR.category=CA.id
        WHERE PR.category=$category";
        return mysqli_query($this->con,$query);
    }
    
}
?>