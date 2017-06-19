<?php session_start(); // Starting Session 

unset($_SESSION['email']);
//session_unset();
session_destroy();

header("Location:index.php");

?>

