<?php session_start(); // Starting Session ?>
<?php 

// Define $username and $password
$username=$_POST['email'];
$password=$_POST['password'];
// Establishing Connection with Server by passing server_name, user_id and password as a parameter
$connection = mysql_connect('localhost', 'dbscu', 'desi123'); 
// To protect MySQL injection for Security purpose
$username = stripslashes($username);
$password = stripslashes($password);
$username = mysql_real_escape_string($username);
$password = mysql_real_escape_string($password);
// Selecting Database
$db = mysql_select_db("desi", $connection);
// SQL query to fetch information of registerd users and finds user match.
$query = mysql_query("select * from customers where passwd='$password' AND email='$username'", $connection);
$rows = mysql_num_rows($query);
if ($rows == 1) {
$_SESSION['email']=$username; // Initializing Session
header("location: index.php"); // Redirecting To Other Page
} else {
header("Location: login.php");
}
mysql_close($connection); // Closing Connection


?>




