<!--Nevin James,000825144
--This is  the FINAL PROJECT of PHP AND JAVSCRIPT of FALL 2020 and it is created and submitted on 13th December 2020 
--This assignment is a practical explanation of PHP and Javscript, AJAX,session managment and web security
--This is the php file which helps to logout from the page-->
<?php
session_start();
if(session_destroy()) // Destroying All Sessions
{
header("Location: customerlogin.php"); // Redirecting To Home Page
}
?>