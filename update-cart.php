<!--Nevin James,000825144
--This is  the FINAL PROJECT of PHP AND JAVSCRIPT of FALL 2020 and it is created and submitted on 13th December 2020 
--This assignment is a practical explanation of PHP and Javscript, AJAX,session managment and web security
--This is the php file which uses for the updation of the cart-->
<?php

if(!isset($_SESSION))
  {
    session_start();
  }

include 'connection.php';
$conn = Connect();

$F_ID = $_GET['id'];
$action = $_GET['action'];




$sql = "SELECT quantity FROM food WHERE F_id = ".$F_ID;

$result = mysqli_query($conn, $sql);


if($result){

  if($obj = mysqli_fetch_assoc($result)) {

    switch($action) {

      case "add":
      if($_SESSION['cart'][$F_ID]+1 <= $row["quantity"])
        $_SESSION['cart'][$F_ID]++;
      break;

      case "remove":
      $_SESSION['cart'][$F_ID]--;
      if($_SESSION['cart'][$F_ID] == 0)
        unset($_SESSION['cart'][$F_ID]);
        break;



    }
  }
}



header("location:cart.php");

?>
