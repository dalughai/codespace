<?php

$root = "/codespace/";
$carpeta_fotos = $root . "images/fotos_tienda/";
$fotos_productos = $root . "images/productos/";
    
/** CARGAR LIBRERIAS NECESARIAS PARA NUESTRO PROYECTO */
/*
require 'libs/PHPMailer/src/Exception.php';
require 'libs/PHPMailer/src/PHPMailer.php';
require 'libs/PHPMailer/src/SMTP.php';
require 'libs/funciones.php';
*/

/** CONECTAR A BASE DE DATOS */
/*
define("HOST_BBDD","localhost");
define("USER_BBDD","root");
define("PASS_BBDD","");
define("NAME_BBDD","tostring");

$conexion = mysqli_connect(HOST_BBDD, USER_BBDD, PASS_BBDD, NAME_BBDD);
// Comprobar conexión
if($conexion === false){
    die("ERROR: Error de conexión " . mysqli_connect_error());
}
*/

//conexion A SQL_SERVER

$serverName = "localhost"; 
$connectionInfo = array( "Database"=>"tostringshop", "UID"=>"tostringshop", "PWD"=>"123456");
$conexion = sqlsrv_connect( $serverName, $connectionInfo);
if( $conexion === false )
{  
     echo "Connection could not be established.\n";  
     die( print_r( sqlsrv_errors(), true));  
}