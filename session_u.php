<!--Nevin James,000825144
--This is  the FINAL PROJECT of PHP AND JAVSCRIPT of FALL 2020 and it is created and submitted on 13th December 2020 
--This assignment is a practical explanation of PHP and Javscript, AJAX,session managment and web security
--This is the php file which check the username and password match by calling it from the website-->
<?php
require 'connection.php';
$conn = Connect();

session_start();

$user_check=$_SESSION['login_user2'];

// SQL Query To Fetch Complete Information Of User
$query = "SELECT username FROM CUSTOMER WHERE username = '$user_check'";
$ses_sql = mysqli_query($conn, $query);
$row = mysqli_fetch_assoc($ses_sql);
$login_session =$row['username'];


?>