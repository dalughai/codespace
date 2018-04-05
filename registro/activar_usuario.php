<?php
require '../startApp.php';

$id_usuario = (isset($_GET["id"])) ? $_GET["id"] : "";

if ($id_usuario == '') {
    die();
    $error = "Error en la activación";
    $template_seccion = "../templates/login.php";
} else {
    
    $sql = "UPDATE usuarios SET active = 1 WHERE id = '$id_usuario'";
    $resultado = sqlsrv_query($conexion, $sql);
    if ($resultado) {
         $template_seccion = "../templates/micuenta.php";
    } else {
        die();
        $error = "Error en la activación";
        $template_seccion = "../templates/login.php";
    }
    
}

include '../templates/main.php';
include("../endApp.php");

?>