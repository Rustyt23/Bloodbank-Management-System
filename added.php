<!DOCTYPE html>
<html lang="en">

<head>

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>BDMS</title>

    <!-- Bootstrap Core CSS -->
    <link href="../vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">

    <!-- MetisMenu CSS -->
    <link href="../vendor/metisMenu/metisMenu.min.css" rel="stylesheet">

    <!-- Custom CSS -->
    <link href="../dist/css/sb-admin-2.css" rel="stylesheet">

    <!-- Custom Fonts -->
    <link href="../vendor/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css">

    <link rel="stylesheet" href="../icofont/icofont.min.css">


    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
        <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->

</head>

<body>

    <div id="wrapper">
        <div id="page-wrapper">
            <div class="row">
                <div class="col-lg-12">
                    <h1 class="page-header">Signed Up</h1>
                </div>
                <!-- /.col-lg-12 -->
            </div>
            <!-- /.row -->
            <div class="row">
                <div class="col-lg-12">
                    <div class="panel panel-default">
                        <div class="panel-heading">
                      SIGNUP   STATUS
                        </div>
                        <div class="panel-body">
                            <div class="row">
                                <div class="col-lg-6">
                                    <form role="form"  action='added.php' method='POST'>

            <?php 
     session_start();
    if(isset($_SESSION["otp"])){
     $otp=$_SESSION["otp"];
}
    else{
        $digits = 4;
        $otp= rand(pow(10, $digits-1), pow(10, $digits)-1);

        $_SESSION["otp"] = $otp;
        }


    

if($_SERVER["REQUEST_METHOD"] == "POST") { 

    include 'dbconnect.php';    

    

    $username = $_POST["username"];  

    $password = $_POST["password"];  

            

    
#echo $_POST["username"];  
    $sql = "Select * from donor where username='$username'"; 

    

    $result = mysqli_query($conn, $sql); 

    

    $num = mysqli_num_rows($result);  
echo $num;

if($num>0)  

   { 

      echo "Username not available";  


   }  
}

if(isset($_POST['name'])){
        $name = $_POST["name"];
        $guardiansname = $_POST["guardiansname"];
        $gender = $_POST["gender"];
        $dob = $_POST["dob"];
        $weight = $_POST["weight"];
        $bloodgroup = $_POST["bloodgroup"];
        $email = $_POST["email"];
        $address = $_POST["address"];
        $contact = $_POST["contact"];
        $username = $_POST["username"];
        $password = $_POST["password"];
$sql="insert into admin(name,username,password,role) values('$name','$username','$password','donor');";
        $sql .= "insert into donor(name,guardiansname,gender,dob,weight,bloodgroup,email,address,contact,username,password) values ('$name','$guardiansname','$gender','$dob','$weight','$bloodgroup','$email','$address','$contact', '$username', '$password')";
        $_SESSION["sql"]=$sql;
$_SESSION["email"]=$email;
    }
    else {$sql=$_SESSION["sql"];
$email=$_SESSION['email'];}
    if(isset($_POST['send'])){
       
        #$msg= "Your otp for Bloodbank Management is \<h3\>$otp\<\\h3\>";
#echo $otp;
shell_exec("head  -228 pages/otp.html > pages/tmp.html ");
shell_exec("echo '".$otp."' >> pages/tmp.html ");
shell_exec(" tail -120 pages/otp.html >> pages/tmp.html ");
        $result= shell_exec("mail -s \" OTP and Account Activation \"  -a \"Content-Type: text/html\" -a \"From: rustyt@rustyt.me(Bloodbank)\" $email < pages/tmp.html "." 2>&1");
        if($result){
        echo "OTP not sent due :- $result ";}
else echo "OTP sent to $email"."<br>";
     
    }
//echo $_SESSION["otp"];
if(isset($_POST['otp'])){
    if($_POST['otp']==$otp){
// Create connection
        $conn = mysqli_connect("localhost","root","Hello@123","admin");
        // Check connection
        if ($conn->connect_error) {
          die("Connection failed: " . $conn->connect_error);
        }


        if ($conn->multi_query($sql) === TRUE) {
#$conn->query($sql1);
#mysqli_query($conn,$sql1);
           echo" <div style='text-align: center'><h1>SUBMITTED SUCCESSFULLY</h1>";
            echo" <a href='index.php' <div style='text-align: center'><h3>LOGIN</h3>";
        } else {
          echo "Error: " . $sql . "<br>" . $conn->error;
        }

        $conn->close();
    }
    else echo "<div style='text-align: center'><h3>WRONG OTP</h3>";
}
else {
echo" <div style='text-align: center'><h3>ENTER OTP</h3>";
}

?>
  <?php if($_POST['otp']!=$otp || !isset($_POST['otp']) ): ?>
                                    OTP->: <input name='otp' value='' /><br>
                                    <input type='submit' value='Send' /><br>
                                  
                                    <?php endif; ?>

                                  </form>
<form action="added.php"  method="POST">
   <input type='hidden' name="send" value='Send' /><br>   
      <input type='submit' value='Resend Otp' /><br>                          
            </form>    
                           
                                </div>
                                
                            </div>
                            <!-- /.row (nested) -->
                        </div>
                        <!-- /.panel-body -->
                    </div>
                    <!-- /.panel -->
                </div>
                <!-- /.col-lg-12 -->
            </div>
            <!-- /.row -->
        </div>
        <!-- /#page-wrapper -->

    </div>
    <!-- /#wrapper -->

    <!-- jQuery -->
    <script src="../vendor/jquery/jquery.min.js"></script>

    <!-- Bootstrap Core JavaScript -->
    <script src="../vendor/bootstrap/js/bootstrap.min.js"></script>

    <!-- Metis Menu Plugin JavaScript -->
    <script src="../vendor/metisMenu/metisMenu.min.js"></script>

    <!-- Custom Theme JavaScript -->
    <script src="../dist/js/sb-admin-2.js"></script>
</body>


</html>


















