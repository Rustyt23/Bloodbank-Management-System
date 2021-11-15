
<?php

$servername="localhost";
$uname="root";
$pass="Hello@123";
$db="admin";
$conn=mysqli_connect($servername,$uname,$pass,$db);

if(!$conn){
    die("Connection Failed");
}

$sql = "SELECT * FROM blood";
                $query = $conn->query($sql);

                echo "<h1>".$query->num_rows."</h1>";
?>