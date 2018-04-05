<?php 
session_start(); 
session_destroy(); 
include("../startApp.php"); 



$template_seccion = "login.php";

include("../templates/main.php");
include("../endApp.php");

?>
