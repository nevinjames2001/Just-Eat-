<html>
<!--Nevin James,000825144
--This is  the FINAL PROJECT of PHP AND JAVSCRIPT of FALL 2020 and it is created and submitted on 13th December 2020 
--This assignment is a practical explanation of PHP and Javscript, AJAX,session managment and web security
--This is the php file which shows a success message after the successfull signup as a new customer in the website-->
  <head>
    <!--Heading of the website-->
    <title> Manager Login | Just Eat' </title>
  </head>
<!--Connecting with the css and javscript files-->
  <link rel="stylesheet" type = "text/css" href ="css/manager_registered_success.css">
  <link rel="stylesheet" type = "text/css" href ="css/bootstrap.min.css">
  <script type="text/javascript" src="js/jquery.min.js"></script>
  <script type="text/javascript" src="js/bootstrap.min.js"></script>

  <body>

  
    <button onclick="topFunction()" id="myBtn" title="Go to top">
      <span class="glyphicon glyphicon-chevron-up"></span>
    </button>
  
    <script type="text/javascript">
      window.onscroll = function()
      {
        scrollFunction()
      };

      function scrollFunction(){
        if (document.body.scrollTop > 20 || document.documentElement.scrollTop > 20) {
          document.getElementById("myBtn").style.display = "block";
        } else {
          document.getElementById("myBtn").style.display = "none";
        }
      }

      function topFunction() {
        document.body.scrollTop = 0;
        document.documentElement.scrollTop = 0;
      }
    </script>
<!--This is the header of the website-->
    <nav class="navbar navbar-inverse navbar-fixed-top navigation-clean-search" role="navigation">
      <div class="container">
        <div class="navbar-header">
          <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#myNavbar">
            <span class="sr-only">Toggle navigation</span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
          </button>
          <a class="navbar-brand" href="index.php">Just Eat'</a>
        </div>

        <div class="collapse navbar-collapse " id="myNavbar">
          <ul class="nav navbar-nav">
            <li class="active" ><a href="index.php">Home</a></li>
            <li><a href="aboutus.php">About</a></li>
            <li><a href="contactus.php">Contact Us</a></li>
          </ul>

          <ul class="nav navbar-nav navbar-right">
            <li><a href="#"><span class="glyphicon glyphicon-user"></span> Sign Up </a></li>
            <li><a href="#"><span class="glyphicon glyphicon-log-in"></span> Login </a></li>
          </ul>
        </div>

      </div>
    </nav>

<?php
//Connecting with the database
include 'connection.php';
$conn = Connect();

$fullname = $conn->real_escape_string($_POST['fullname']);
$username = $conn->real_escape_string($_POST['username']);
$email = $conn->real_escape_string($_POST['email']);
$contact = $conn->real_escape_string($_POST['contact']);
$address = $conn->real_escape_string($_POST['address']);
$password = $conn->real_escape_string($_POST['password']);


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
$encryption = openssl_encrypt($password , $ciphering, 
            $encryption_key, $options, $encryption_iv); 








//Inserting all the details into the table that the customer entered

$query = "INSERT into CUSTOMER(fullname,username,email,contact,address,password) VALUES('" . $fullname . "','" . $username . "','" . $email . "','" . $contact . "','" . $address ."','" . $encryption ."')";
$success = $conn->query($query);

if (!$success){
	die("Couldnt enter data: ".$conn->error);
}

$conn->close();

?>
<!--Display of success message-->

<div class="container">
	<div class="jumbotron" style="text-align: center;">
		<h2> <?php echo "Welcome $fullname!" ?> </h2>
		<h1>Your account has been created.</h1>
		<p>Login Now from <a href="customerlogin.php">HERE</a></p>
	</div>
</div>

    </body>
</html>