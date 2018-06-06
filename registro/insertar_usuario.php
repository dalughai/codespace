<?php
require '../startApp.php';

$dni = (isset($_POST["dni"])) ? $_POST["dni"] : "";
$nombre = (isset($_POST["nombre"])) ? $_POST["nombre"] : "";
$apellido1 = (isset($_POST["apellido1"])) ? $_POST["apellido1"] : "";
$apellido2 = (isset($_POST["apellido2"])) ? $_POST["apellido2"] : "";
$email = (isset($_POST["email"])) ? $_POST["email"] : "";
$password = (isset($_POST["password"])) ? $_POST["password"] : "";
$telefono = (isset($_POST["telefono"])) ? $_POST["telefono"] : "";
$direccion = (isset($_POST["direccion"])) ? $_POST["direccion"] : "";
$ciudad = (isset($_POST["ciudad"])) ? $_POST["ciudad"] : "";
$provincia = (isset($_POST["provincia"])) ? $_POST["provincia"] : "";
$comunidad = (isset($_POST["comunidad"])) ? $_POST["comunidad"] : "";
$sexo = (isset($_POST["sexo"])) ? $_POST["sexo"] : "";
$codigopostal = (isset($_POST["codigopostal"])) ? $_POST["codigopostal"] : "";
/*$ = (isset($_POST[""])) ? $_POST[""] : "";*/

$password = md5($password);


if( $nombre == '' && $apellido1 == '' && $apellido2 == '' && $email == '' && $password == '' && $telefono == '' && $ciudad == '' && $provincia == '' && $comunidad == '' && $sexo == '' && $dni == '' && $codigopostal == '')
{
    die();
    $error = "Error de al crear Usuario";
    $template_seccion = "../templates/login.php";
} else {
    
    $sql = "CALL tss_insertar_nuevo_usuario"
       . "('$nombre','$apellido1','$apellido2','$dni','$sexo','$email','$password', "
       . "'$telefono' ,'$direccion','$codigopostal','$ciudad','$provincia','$comunidad' )";
    
    $resultado = mysqli_query($conexion, $sql);    
    
    if ($resultado) {
        $template_seccion = "../templates/usuario_registrado.php";
        
        
        /*Sacamos el id del nuevo usuario*/
            
            $sql = "select id from usuarios where email = '$email'";
            
            $resultado = mysqli_query($conexion, $sql);
            
            $id_usuario = mysqli_fetch_assoc( $resultado ) ;   
            
            $id = $id_usuario['id'];
            $id = md5($id);
        /*Enviamos mail para activar el usuario*/
    
    $asunto = "Bienvenido a To String Shop!";
    $cuerpo = "Muchas gracias $nombre por Registrarte en To String Shop <br><br>"
            . "Para activar tu cuenta haz click en el siguiente enlace: <br><br>"
            . "127.0.0.1/tostringshop/registro/activar_usuario.php?id=$id";
    
    
    enviarEmail($email, $asunto, $cuerpo, $nombre );
        
    
        
    } else {
        $error = "ERROR AL INTRODUCIR LOS DATOS";
        $template_seccion = "../templates/registro.php";
    }

}
    
include '../templates/main.php';
include("../endApp.php");




?>