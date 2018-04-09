<?php
session_start();
require '../startApp.php';

//$template_seccion = "../templates/login.php";

$usuario_email = (isset($_POST["email"])) ? $_POST["email"] : "";
$usuario_password = (isset($_POST["password"])) ? $_POST["password"] : "";

if ($usuario_email == '' && $usuario_password == '') {
    die();
    $error = "Error de autentificación";
    $template_seccion = "../templates/login.php";
}

$sql = "SELECT * FROM usuarios WHERE email='$usuario_email' AND passwd='$usuario_password'";

$resultado = sqlsrv_query($conexion, $sql);


if ($resultado) {
    
    $usuario = sqlsrv_fetch_array( $resultado, SQLSRV_FETCH_ASSOC);
    
    if($usuario) {

        $_SESSION["usuario"] = $usuario;
        
        
        if($usuario["active"] == 0){
            $error = "El usuario aun no esta activado, revise su correo porvafor.";
            $template_seccion = "../templates/login.php";
        } else {
            
            
        if(isset($_SESSION["carrito"])) {
    
        } else {
                $id_usuario = $_SESSION['usuario']['id'];

                $sql = "insert into carrito (id_cliente,date_add) VALUES ($id_usuario,GETDATE())";
                $resultado = sqlsrv_query($conexion, $sql);

                if ($resultado) {

                    $sql = "select top(1) id from carrito order by id desc";

                    $resultado_carrito = sqlsrv_query($conexion, $sql);

                    if($resultado_carrito){
                        $id_carrito = sqlsrv_fetch_array( $resultado_carrito, SQLSRV_FETCH_ASSOC);
                        
                        $_SESSION['carrito'] = $id_carrito;
                    }
              }
        }
            header('Location: ../index.php');
        }
        
    } else {
        $error = "Error de autentificación";
        $template_seccion = "../templates/login.php";
        
    }
    
} else {
    $error = "Error de conexión";
    $template_seccion = "../templates/login.php";
}
include '../templates/main.php';
include("../endApp.php");




