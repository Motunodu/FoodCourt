<?php 
$firstname = $_POST['firstname'];
$lastname=  $_POST['lastname'];
$InputAddress = $_POST['InputAddress']; 
$state=$_POST['state'];
$PhoneNumber=$_POST['PhoneNumber'];
$MealOption=$_POST['MealOption'];
$RiceCombo=$_POST['RiceCombo'];
$RicePlate=$_POST['RicePlate'];
$SwallowCombo=$_POST['SwallowCombo'];
$SwallowNumber=$_POST['SwallowNumber'];
$Meat=$_POST['Meat'];
$MeatNumber=$_POST['MeatNumber'];
$Snacks=$_POST['Snacks'];
$SnacksNumber=$_POST['SnacksNumber'];
$Drinks=$_POST['Drinks'];
$DrinksNumber=$_POST['DrinksNumber'];
$date_delivery=$_POST['date_delivery'];
$time_delivery=$_POST['time_delivery'];
$Payment=$_POST['Payment'];
saveToDatabase($firstname, $lastname, $InputAddress, $state, $PhoneNumber, $MealOption, $RiceCombo, $RicePlate, $SwallowCombo, $Meat, $MeatNumber, $Snacks, $SnacksNumber,$Drinks, $DrinksNumber, $date_delivery,$time_delivery, $Payment);
header('Location:FoodCourt-Success.html');
function saveToDatabase($firstname, $lastname, $InputAddress, $state, $PhoneNumber, $MealOption, $RiceCombo, $RicePlate, $SwallowCombo, $Meat, $MeatNumber, $Snacks, $SnacksNumber,$Drinks, $DrinksNumber, $date_delivery,$time_delivery, $Payment) {  
     $serverName = "localhost";  
      $database = "FoodCourt"; 
        $username = "root";   
        $password = "";
 $conn = mysqli_connect($serverName, $username, $password, $database);
 if (!$conn) {      
      die("Connection failed: " . mysqli_connect_error());   
    }     $sql = "INSERT INTO Menu_Order (firstname,lastname,InputAddress,state, PhoneNumber, MealOption,RiceCombo,RicePlate,SwallowCombo, SwallowNumber, Meat, MeatNumber,Snacks, SnacksNumber, Drinks, DrinksNumber, date_delivery,time_delivery, Payment,created_date)
        VALUES ('$firstname','$lastname', '$InputAddress', '$state', '$PhoneNumber', '$MealOption', '$RiceCombo', '$RicePlate', '$SwallowCombo','$SwallowNumber', '$Meat', '$MeatNumber', '$Snacks', '$SnacksNumber','$Drinks', '$DrinksNumber', '$date_delivery', '$time_delivery', '$Payment', NOW())"; 
         $result = mysqli_query($conn, $sql);
 if (!$result) {       
       die ("Error:" . $sql . "<br>" . mysqli_error($conn)); 
      }   
       mysqli_close($conn);
     }
?>