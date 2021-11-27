<?php session_start(); 
if($_SESSION['role']=='admin'){
								header('location:pages/index.php');}
elseif($_SESSION['role']=='donor'){header('location:donor/index.php');}

?>
<?php include('dbcon.php'); ?>

<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <meta name="description" content="">
        <meta name="author" content="">

        <title>BDMS - Login Panel</title>

        <!-- Bootstrap Core CSS -->
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">

        <!-- MetisMenu CSS -->
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/metismenu/dist/metisMenu.min.css">

        <!-- Custom CSS -->
        <link href="css/startmin.css" rel="stylesheet">

        <link rel="stylesheet" href="/bloodbank se/icofont/icofont.min.css">

        <!-- Custom Fonts -->
        <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.14.0/css/fontawesome.min.css" rel="stylesheet" type="text/css">

        <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
        <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
        <!--[if lt IE 9]>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/html5shiv/3.7.3/html5shiv.min.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/respond.js/1.4.2/respond.min.js"></script>
        <![endif]-->
    </head>
    <body>
	
		<nav class="navbar navbar-inverse">
			  <div class="container-fluid">
				<div class="navbar-header">
                <a class="navbar-brand" href="index.php"><i class="icofont-blood-drop"></i>Blood Donor Management System</a>
				</div>

				<ul class="nav navbar-nav navbar-right">
				  <!-- <li><a href="#"><span class="glyphicon glyphicon-user"></span> Sign Up</a></li> -->
				  <li><a href="signup.php" ><span class="glyphicon glyphicon-user" style="color:#00A10F;"></span> User Signup</a></li>
				</ul>
			  </div>
		</nav>

        <div class="container">
		 <form action="#" method="post">
            <div class="row">
                <div class="col-md-4 col-md-offset-4">
                    <div class="login-panel panel panel-default">
                        <div class="panel-heading">
                            <h3 class="panel-title"><center>Login</center></h3>
                        </div>
                        <div class="panel-body">
                            <form role="form">
                                <fieldset>
                                    <div class="form-group">
                                        <input class="form-control" placeholder="email" name="user" type="text" autofocus>
                                    </div>
                                    <div class="form-group">
                                        <input class="form-control" placeholder="Password" name="pass" type="password" value="">
                                    </div>
                     
                                    <!-- Change this to a button or input when using this as a form -->
                                    <input type="submit" class="btn btn-info btn-block" style="border-radius:0%;" title="Log In" name="login" value="Login"></input>
                                </fieldset>
                                
                            </form>
                            
                        </div>
                    </div>
                </div>
            </div>
			</form>
			
			<?php
				if (isset($_POST['login']))
					{
						$email = $_POST['user'];
						$password = mysqli_real_escape_string($con, $_POST['pass']);
						
						$query 		= mysqli_query($con, "SELECT * FROM user WHERE  password='$password' and email='$email'");
						$row		= mysqli_fetch_array($query);
						$num_row 	= mysqli_num_rows($query);
						
						if ($num_row > 0) 
							{			
								$_SESSION['email']=$row['email'];

if($row['role']=='admin'){
#if(isset($_POST["remember"]))
$_SESSION['role']='admin';
								header('location:pages/index.php');}
else{
#if(isset($_POST
$_SESSION['role']='donor';
header('location:donor/index.php');}
								
							}
						else
							{
								echo ' <div class="row"> <div class="col-md-4 col-md-offset-4">
								<div class="alert alert-danger alert-dismissible">
                                        Email & Password didnot match! Try Again.
                                    </div> </div> </div> ';
									
									
							}
					}
			  ?>
			
        </div>

        

        <!-- jQuery -->
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.5.1/jquery.min.js">

        <!-- Bootstrap Core JavaScript -->
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/3.5.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">

        <!-- Metis Menu Plugin JavaScript -->
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/metisMenu/3.0.6/metisMenu.min.js">

        <!-- Custom Theme JavaScript -->
        <script src="js/startmin.js"></script>
		
		

    </body>

    
</html>
  
  


