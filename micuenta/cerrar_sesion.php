<?php 
session_start(); 
include("../startApp.php"); 

// $template_seccion = "home.php";
session_destroy(); 
Header( "Location: ../index.php");
// include("../templates/main.php");
// include("../endApp.php");

?>
