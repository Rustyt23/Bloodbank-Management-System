<?php


if(isset($_GET['id'])){

$id=$_GET['id'];


include 'dbconnect.php';



$qry="update blood set status="approved" where id=$id";

$result=mysqli_query($conn,$qry);


if($result){

    echo"APPROVED";

#    header('Location:deleteview.php');

}else{

    echo"ERROR!!";

}

}

?>
