<?php

require_once("../../includes/functions.php");

session_start();
$employee_id = $_SESSION['employee_id'];
if(isset($_POST['deleteBtn'])){
    $product_id = $_POST['product_id'];
//    $query = "update product set deleted = 1,deleted_at=now(), deleted_by = $employee_id where product_id = $product_id";
    $product_id = $_POST['product_id'];
    $tableName = "product";
    $primaryKeyColumnName = "product_id";
    
    deleteRecord($tableName, $primaryKeyColumnName,$product_id,$employee_id);
    
    $tableName = "product_sale_rate";
    deleteRecord($tableName , $primaryKeyColumnName,$product_id,$employee_id);
    
    echo "Deleted Successfully";
    
    
    
//    mysqli_query($connection,$query);
//    echo "Deleted Successfully";
//    
//    
//    
//    $query = "update product_sale_rate set deleted = 1,deleted_at=now(), deleted_by = $employee_id where product_id = $product_id";
//    
//    mysqli_query($connection,$query);
//    echo "Deleted Successfully";
    
}


?>