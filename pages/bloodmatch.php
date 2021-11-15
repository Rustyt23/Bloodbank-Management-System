<?php function match($Recipient,$Donor){
$Recipient=strtoupper($Recipient);
$Donor=strtoupper($Donor);
if($Recipient == "A+"){ if($Donor == "A+"|| $Donor =="A-" || 
        $Donor == "O+" || $Donor == "O-"){return true;}
    }else if($Recipient =="A-"){
        if($Donor == "A-" || $Donor == "O-"){return true;}
    }else if($Recipient == "B+"){
        if($Donor =="B+"||$Donor == "B-"|| $Donor == "O-" || $Donor == 
        "O+"){return true;}
    }else if($Recipient == "B-"){
        if ($Donor == "B-"|| $Donor == "O-") {return true;}
    }else if($Recipient == "AB+"){
        if($Donor=="A+"||$Donor =="A-"||$Donor=="B+"||$Donor== 
        "B-"||$Donor=="AB+"||$Donor=="AB-"||$Donor=="O+"||$Donor == 
        "O-"){return true;}
    }else if($Recipient == "AB-"){
        if($Donor=="AB-"||$Donor=="A-"||$Donor=="B-"||$Donor=="O-"){return 
        true;}
    }else if($Recipient=="O+"){
        if($Donor=="O+"||$Donor=="O-"){return true;}
    }else if($Recipient == "O-"){
        if($Donor=="O-"){return true;}
    }
 return 0;
}

#if(match($_REQUEST['r'],$_REQUEST['d']))
#echo $_REQUEST['r']." is compatible with ".$_REQUEST['d'];
#else 
#echo $_REQUEST['r'] ." cant fuse with ".$_REQUEST['d'];


#echo match("A+","A+");
?>

