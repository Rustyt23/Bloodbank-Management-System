<html>

<head>


<title>BDMS</title>

<!-- Bootstrap Core CSS -->
<link href="../css/bootstrap.min.css" rel="stylesheet">

<!-- MetisMenu CSS -->
<link href="../vendor/metisMenu/metisMenu.min.css" rel="stylesheet">

<!-- DataTables CSS -->
 <link href="../css/dataTables/dataTables.bootstrap.css" rel="stylesheet">
 
<!-- DataTables Responsive CSS -->
<link href="../css/dataTables/dataTables.responsive.css" rel="stylesheet">

<!-- Custom CSS -->
<link href="../dist/css/sb-admin-2.css" rel="stylesheet">

<!-- Custom Fonts -->
<link href="../vendor/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css">

<link rel="stylesheet" href="../icofont/icofont.min.css">

</head>


<body>
<div id="wrapper">

<?php include 'includes/nav.php'?>


<div id="page-wrapper">
<div class="container-fluid">
<div class="row">
<div class=".col-lg-12">
               <h1 class="page-header">Manage Orders</h1>
                </div>
  </div>  

				<div class="row">
                        <div class=".col-lg-12">
                            <div class="panel panel-default">
        
								
								 <div class="panel-body">
                                    <div class="table-responsive">
									<table class="table table-striped table-bordered table-hover" id="dataTables-example">
									
									<?php

						include "dbconnect.php";

						$qry="select blood_grp ,email,name from patient";
						$result=mysqli_query($conn,$qry);


						echo'
              <form role="form" action="addorder.php" method="post">
                                     
                                        <div class="form-group">
                                            <label>Patient</label>
                                            <select class="form-control" name="patient" type="text" placeholder="" required>
<option value="" >Select Patient</option>';
while($row1=mysqli_fetch_array($result)){
						  echo '<option value="'.$row1['name'].':'.$row1['email'].':'.$row1['blood_grp'].'">Name:'.$row1['name'].' Blood Type:'.$row1['blood_grp'].'</option>';}
echo '
</select></div>
<input type=hidden name="p_name" value="'.$row1['name'].'">';

$qry="select bloodgroup,email,name from donor";
						$result=mysqli_query($conn,$qry);


						echo'                         
                                        <div class="form-group">
                                            <label>Donor</label>
                                            <select class="form-control" name="donor" type="text" placeholder="" required>
<option value="" >Select Donor</option>';
#while($row=mysqli_fetch_array($result)){
					#	  echo '<option value="'.$row['email'].'">Name:'.$row['name']."          Email:".$row['email'].'</option>';}
while($row=mysqli_fetch_array($result)){
						  echo '<option value="'.$row['name'].':'.$row['email'].':'.$row['bloodgroup'].'">Name:'.$row['name'].'        Blood Type:'.$row['bloodgroup'].'</option>';} 
 #Email:".$row['email'].'
#</option>';}
echo '
</select></div>';
?>

               
                <div class="form-group">
                                            <label>Blood Quantity</label>
                                            <input class="form-control" type="number" name="bloodqty" value='' required>
                                                                   
                                        </div>
    
                <div class="form-group">
                                            <label>Date</label>
                                            <input class="form-control" placeholder="dd-mm-yy" type="date" name="date" value='' >
                                                                   
                                        </div>
 <div class="form-group">
                                            <label>Time</label>
                                            <input class="form-control"  type="time" name="time" value='' >
                                                                   
                                        </div>
                 <button type="submit" class="btn btn-success" class="btn btn-success" style="border-radius:0%";>Save</button>

                
                                    </form>

									
				</div>
				</div>		
		</div>
		</div>	
		</div>	
		</div>
		</div>
		</div>

  <!-- jQuery -->
  <script src="../vendor/jquery/jquery.min.js"></script>

<!-- Bootstrap Core JavaScript -->
<script src="../vendor/bootstrap/js/bootstrap.min.js"></script>

<!-- Metis Menu Plugin JavaScript -->
<script src="../vendor/metisMenu/metisMenu.min.js"></script>

<!-- Custom Theme JavaScript -->
<script src="../dist/js/sb-admin-2.js"></script>

<!-- DataTables JavaScript -->
<script src="../js/dataTables/jquery.dataTables.min.js"></script>
<script src="../js/dataTables/dataTables.bootstrap.min.js"></script>

</body>
</html>