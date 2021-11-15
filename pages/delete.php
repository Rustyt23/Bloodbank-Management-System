<?php

if(isset($_GET['email'])){
$email=$_GET['email'];

include 'dbconnect.php';


$qry="delete from donor where email=$email";
$result=mysqli_query($conn,$qry);

if($result){
    echo"DELETED";
    header('Location:deleteview.php');
}else{
    echo"ERROR!!";
}
}
?>