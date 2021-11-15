<?php

if(isset($_GET['email'])){
$email=$_GET['email'];

include 'dbconnect.php';


$qry="delete from patient where email='$email'";
$result=mysqli_query($conn,$qry);
echo $qry;

if($result){
    echo"DELETED";
    header('Location:deletepatient.php');
}else{
    echo"ERROR!!";
echo $conn->error;
}
}
?>