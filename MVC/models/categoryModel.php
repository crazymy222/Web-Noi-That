<?php
class categoryModel extends DB{
    public function getCategories(){
        $query="SELECT * FROM category";
        return mysqli_query($this->con,$query);
    }
    public function getCategoriesByID($categoryID){
        $query="SELECT * FROM category
        WHERE category.id = $categoryID";
        return mysqli_query($this->con,$query);
    }
}
?>