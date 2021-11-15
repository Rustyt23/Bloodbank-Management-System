<?php

if(isset($_GET['email'])){
$email=$_GET['email'];

include 'dbconnect.php';


$qry="delete from orders where order_id='$email'";
$result=mysqli_query($conn,$qry);
echo $qry;

if($result){
    echo"DELETED";
    header('Location:editorder.php');
}else{
    echo"ERROR!!";
echo $conn->error;
}
}
?>