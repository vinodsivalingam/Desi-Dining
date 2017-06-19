<?php
error_reporting(0);
// mysqli
$email =$_GET['email'];
$name =$_GET['name'];
$msg=$_GET['message'];


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

$sql = "INSERT INTO contact (name, email, message)
values ('$name','$email', '$msg')";


if ($conn->query($sql) === TRUE) {
	header("Location:index.php");
    echo "New record created successfully";
} else {
   header("Location: contact.php?msgKindly fill the message again.");
    echo "Error: " . $sql . "<br>" . $conn->error;
}


$conn->close();
?>
