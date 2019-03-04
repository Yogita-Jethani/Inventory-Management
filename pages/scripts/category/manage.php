<?php
require_once("../../includes/db.php");

$columns = array("category.category_name","category.hsn_code","gst.gst_rate");
$query = "select * from category,gst where category.hsn_code = gst.hsn_code having category.deleted=0";

if(isset($_POST["search"]["value"])){
    $query .= " and  (category.category_name like '%" . $_POST['search']['value']."%' or category.hsn_code like '%". $_POST['search']['value']."%')";
}

if(isset($_POST["order"])){
    $query.= " order by ".$columns[$_POST['order']['0']['column']]." ".$_POST['order']['0']['dir'];
}
else{
    $query.= " order by ".$columns[0]." ASC ";
}

$query1 = " ";

if($_POST["length"]!=-1){
    $query1 = ' limit '.$_POST['start'].','.$_POST['length'];
}

$number_filtered_row = mysqli_num_rows(mysqli_query($connection,$query));

$result = mysqli_query($connection , $query.$query1);


$data = array();

while($row = mysqli_fetch_assoc($result)){
    $sub_array = array();
    
    $sub_array[] = $row["category_name"];
    $sub_array[] = $row["hsn_code"];
    $sub_array[] = $row["gst_rate"];
    $sub_array[] = "<button class ='edit fa fa-pencil btn blue' id = '".$row['category_id']."' data-toggle='modal' data-target='#editModal'></button>";
    $sub_array[] = "<button class ='delete fa fa-trash btn btn-danger' id = '".$row['category_id']."' data-toggle='modal' data-target='#deleteModal'></button>";
    // i may have to add some more columns
    
    $data[] = $sub_array;
}

function get_all_data($connection){
    $query =  "select * from category,gst where category.hsn_code  =  gst.hsn_code ";
    return (mysqli_num_rows(mysqli_query($connection, $query)));
    
}

$output = array(
    "draw" => intval($_POST['draw']),
    "recordsTotal" => get_all_data($connection),
    "recordsFiltered" => $number_filtered_row,
    "data" => $data,
);


echo json_encode($output);
?>