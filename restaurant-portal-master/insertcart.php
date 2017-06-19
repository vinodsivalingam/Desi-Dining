<?php
error_reporting(0);
// mysqli
$mid =$_GET['mid'];
$menuname =$_GET['menuname'];
$hotelname=$_GET['hotelname'];


$hotelid =$_GET['hotelid'];
echo $hotelid;
echo $hotelname;
$price =$_GET['price'];
$qty =$_GET['qty'];
$date = date("Y/m/d");
$time =date("h:i:s");
$sessid =$_GET['sessionid'];
echo 
$cid =$_GET['cid'];

$servername = "localhost";
$username = "dbscu";
$password = "desi123";
$dbname = "desi";

// Create connection
$conn = new mysqli($servername, $username, $password, $dbname);
// Check connection
if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
} 

$sql = "INSERT INTO cart (ctid, date, time, menuid, menuname, price, qnty, total, hotelid, custid, sessionid) 
values ('','$date', '$time','$mid','$menuname','$price','$qty','$price','$hotelid','$cid', '$sessid')";


if ($conn->query($sql) === TRUE) {
	header("Location:cartfinal.php");
    echo "New record created successfully";
} else {
   header("Location: menu.php?msg=Add to cart again.");
    echo "Error: " . $sql . "<br>" . $conn->error;
}


$conn->close();
?>
