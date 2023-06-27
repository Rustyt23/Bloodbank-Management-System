<?php

$servername="localhost";
$uname="rustyt";
$pass="Hello@123";
$db="bloodbank";

$conn=mysqli_connect($servername,$uname,$pass,$db);

if(!$conn){
    die("Connection Failed");
}

?>
