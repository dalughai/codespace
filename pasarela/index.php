<?php
session_start();
require '../startApp.php';
$titulo = "Pasarela";

if(isset($_SESSION["usuario"])) {
    $template_seccion = "../templates/pasarela.php";
} else {
    $error = "Debes iniciar sesion para realizar un pedido!";
    $template_seccion = "../templates/login.php";
}
// 


include "../templates/main.php";

include "../endApp.php";
