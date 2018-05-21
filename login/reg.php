<?php

require '../startApp.php';

$usuario_email = (isset($_POST["email_create"])) ? $_POST["email_create"] : "";

if ($usuario_email == '') {
    die();
    $error = "Error de autentificación";
    $template_seccion = "../templates/login.php";
}
/*Comprobamos que el email no este resgistrado en la BD*/
$sql = "SELECT * FROM usuarios WHERE email='$usuario_email'";

$resultado = mysqli_query($conexion, $sql);

if ($resultado) {
    
    $usuario = mysqli_fetch_assoc( $resultado );
    
    if($usuario) {
        
        $error = "Este email ya esta registrado en el sistema";
        $template_seccion = "../templates/login.php";
        
    } else {
        /*Aqui ya nos aseguramos de que el email es valido para la creacion del usuario*/
        /*asi que redirigimos al formulario para rellenar los datos */
        $template_seccion = "../templates/registro.php";
    }
    
} else {
    $error = "Error de conexión";
    $template_seccion = "../templates/login.php";
}

include '../templates/main.php';
include("../endApp.php");




