<?php

//interperted language
//pop as well as oop
//pop database connectivity
//mysqli_connect(SERVER,USER,PASSWORD,DB): It returns connection object error which is created by connection
//
//$username = "some$><user@somedomain.com' or 1=1 #";
//$password = 'somepassword';
//$connection = mysqli_connect("localhost","Dhiraj","Dhiraj@123","degree");
//
//$cleaned_username = mysqli_real_escape_string($connection,$username);
//
//echo $username;
//echo"<br>";
//echo $cleaned_username;
//
//echo "<br>";
//

//$query = "SELECT * FROM users where email = '$cleaned_username' and password = '$password'";
//
//echo "<br>";
//
//$result = mysqli_query($connection,$query);
//
//if(mysqli_num_rows($result) == 0){
//    echo "Apna username password yaad nahi";
//}
//else{
//    echo"Logged in";
//}
// enter correct email present in users table 

$password = "abc123";

$hashed_password = password_hash($password , PASSWORD_DEFAULT);
echo $hashed_password;

// $db_password = '$2y$12$8PmqiteX1tgaTshSA8SbJOWyZOEqGnH5fUPG6GiLeoiGqLnr9h8Cu';
// $password_verification = "abc123";

// $test = password_verify($password_verification , $db_password);

// if($test){
//     echo "<br>";
//     echo "correct"; 
//     echo "<br>";
// }
// else
// {
//     echo "incorrect";
// }


?>