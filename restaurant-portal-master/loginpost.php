<?php
error_reporting(0);
// mysqli
$name =$_POST['fname'];
$email =$_POST['eaddr'];
$phone =$_POST['pnumb'];
$addr =$_POST['addr'];
$pass =$_POST['pass'];

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
$sel = "SELECT * FROM customers where email=".$email."";
if ($conn->query($sel) === TRUE) {
	header("Location: login.php?msg=User already exist.");
}
else{
$sql = "INSERT INTO customers (cid, cname, phone, email, location, passwd) values ('','$name','$phone','$email','$addr','$pass')";


if ($conn->query($sql) === TRUE) {
	header("Location: login.php?msg=New record created successfully");
    echo "New record created successfully";
} else {
   header("Location: login.php?msg=Please check your data and register again.");
    echo "Error: " . $sql . "<br>" . $conn->error;
}
}

$conn->close();
?>
