<?php

$servername="localhost";
$uname="root";
$pass="Hello@123";
$db="bloodbank";

$conn=mysqli_connect($servername,$uname,$pass,$db);

if(!$conn){
    die("Connection Failed");
}

?>