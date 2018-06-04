<?php
session_start();
require '../startApp.php';
$titulo = "Suscripción Mensual";

if(isset($_SESSION["usuario"])) {
    $template_seccion = "../templates/suscripcion.php";



} else {
    $error = "¡Debes iniciar sesion!";
    $template_seccion = "../templates/login.php";
}

include "../templates/main.php";

include "../endApp.php";
?>
