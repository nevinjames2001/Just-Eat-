<!--Nevin James,000825144
--This is  the FINAL PROJECT of PHP AND JAVSCRIPT of FALL 2020 and it is created and submitted on 13th December 2020 
--This assignment is a practical explanation of PHP and Javscript, AJAX,session managment and web security
--This is the php file which checks the customer username and password-->
<?php
session_start(); 
$error=''; 

if (isset($_POST['submit'])) {
if (empty($_POST['username']) || empty($_POST['password'])) {
$error = "Username or Password is invalid";
}
else
{
// Define $username and $password
$username=$_POST['username'];
$encryption=$_POST['password'];

// Store the cipher method 
$ciphering = "AES-128-CTR"; 
  
// Use OpenSSl Encryption method 
$iv_length = openssl_cipher_iv_length($ciphering); 
$options = 0; 
  
// Non-NULL Initialization Vector for encryption 
$encryption_iv = '1234567891011121'; 
  
// Store the encryption key 
$encryption_key = "GeeksforGeeks"; 
  
// Use openssl_encrypt() function to encrypt the data 
 $password= openssl_encrypt($encryption, $ciphering, 
            $encryption_key, $options, $encryption_iv); 
  









// Establishing Connection with Server by passing server_name, user_id and password as a parameter
include 'connection.php';
$conn = Connect();

// SQL query to fetch information of registerd users and finds user match.
$query = "SELECT username, password FROM CUSTOMER WHERE username=? AND password=? LIMIT 1";

//To protect MySQL injection for Security purpose

$stmt = $conn->prepare($query);
$stmt -> bind_param("ss", $username, $password);
$stmt -> execute();
$stmt -> bind_result($username, $password);
$stmt -> store_result();

if ($stmt->fetch())  
{
	$_SESSION['login_user2']=$username; // Initializing Session
	header("location: foodlist.php"); // Redirecting To Other Page
} else {
$error = "Username or Password is invalid";
}
mysqli_close($conn); // Closing Connection
}
}
?>