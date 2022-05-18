<?php

use LDAP\Result;

class usersModel extends DB{
    public function insertNewUser($username,$password,$email,$fullname,$address){
        $qr="INSERT INTO users VALUES (null,'$username','$password','$email','$fullname','$address')";
        $result=false;
        if(mysqli_query($this->con,$qr)){
            $result=true;
        }
        return json_encode($result);
    }
    public function checkUserName($userName){
        $query = "SELECT  id FROM users
        WHERE '$userName' = username";
        $rows = mysqli_query($this->con,$query);
        $result=false;
        if(mysqli_num_rows($rows)>0){
            $result = true;
        }
        return json_encode($result);
    }
}
?>