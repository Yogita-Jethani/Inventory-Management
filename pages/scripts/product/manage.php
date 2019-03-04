<?php
require_once("../../includes/db.php");
require_once("../../includes/functions.php");
$columns=array("","product.product_name","product.eoq","product_sale_rate.rate_of_sale","product.additional_specification","supplier.supplier_name","category.category_name");
$query="SELECT product.image_extension,product.product_id, product.product_name, product.eoq, product_sale_rate.rate_of_sale, product.additional_specification, category.category_name, GROUP_CONCAT( DISTINCT supplier.supplier_name, ', ')as supplier_name, product.deleted from product, category, supplier, product_supplier,product_sale_rate where category.category_id = product.category_id and supplier.supplier_id = product_supplier.supplier_id and product.product_id = product_supplier.product_id and product.product_id = product_sale_rate.product_id GROUP BY product.product_id HAVING product.deleted = 0";

if(isset($_POST["search"]["value"])){
    $query.=" and (product.product_name like '%".$_POST["search"]["value"]."%' or category.category_name like '%".$_POST['search']['value']."%' or supplier_name like '%".$_POST["search"]["value"]."%')";
}
if(isset($_POST["order"])){
    $query.=" order by ".$columns[$_POST['order']['0']['column']]." ".$_POST['order']['0']['dir'];
}
else{
    $query.=" order by ".$columns[1]."ASC";
}

$query1="";
if($_POST["length"]!=-1){
    $query1=' limit '.$_POST['start'].','.$_POST['length'];
}

$number_filtered_row=mysqli_num_rows(mysqli_query($connection,$query));
//echo $query.$query1;
$result=mysqli_query($connection,$query.$query1);

$data=array();
while($row=mysqli_fetch_assoc($result)){
    $sub_array=array();
    $image_name = $row['product_id'] . "." . $row['image_extension'];
    if($row['image_extension'] != "")
        $image_path = "<img height = '75px' class = 'img-responsive' src ='http://localhost/erp/assets/product/images/" .$image_name . "'>";
    else
        $image_path = '<img height="75px" class ="img-responsive" src="http://www.placehold.it/200x150/EFEFEF/AAAAAA&amp;text=no+image" alt="no image" />';
    $sub_array[] = $image_path;
//    $sub_array[]=$row["product_id"].".".$row['image_extension'];
    $sub_array[]=$row["product_name"];
    $sub_array[]=$row["eoq"];
    $sub_array[]=$row["rate_of_sale"];
    $sub_array[]=$row["additional_specification"];
    $sub_array[]=$row["supplier_name"];
    $sub_array[]=$row["category_name"];
    $sub_array[]="<button class='fa fa-pencil btn blue edit' id='".$row['product_id']."' data-toggle='modal' data-target='#editModal'></button>";
    $sub_array[]="<button class='fa fa-trash btn red delete' id='".$row['product_id']."' data-toggle='modal' data-target='#deleteModal'></button>";
    //i my have to add some more columns!
    
    $data[]=$sub_array;
}

function get_all_data($connection){
    $query="SELECT product.product_id, product.product_name, product.eoq, product_sale_rate.rate_of_sale, product.additional_specification, category.category_name, GROUP_CONCAT( DISTINCT supplier.supplier_name, ', ')as supplier_name, product.deleted from product, category, supplier, product_supplier,product_sale_rate where category.category_id = product.category_id and supplier.supplier_id = product_supplier.supplier_id and product.product_id = product_supplier.product_id and product.product_id = product_sale_rate.product_id GROUP BY product.product_id HAVING product.deleted = 0";
    return(mysqli_num_rows(mysqli_query($connection,$query)));
}

$output= array(
    "draw"=>intval($_POST['draw']),
    "recordsTotal"=>get_all_data($connection),
    "recordsFiltered"=>$number_filtered_row,
    "data"=>$data,
);


echo json_encode($output);


?>