<?php
session_start();
header('Content-Type: application/json');
require '../startApp.php';

$id_usuario =  (isset($_POST["id_usuario"])) ? $_POST["id_usuario"] : "";


$array_datos = array();
$sql = "select direccion from usuarios where id = $id_usuario";

$resultado = mysqli_query($conexion, $sql);

$id_direccion =  mysqli_fetch_assoc( $resultado );
$id_direccion = $id_direccion['direccion'];
$sql = "delete from usuarios where id = $id_usuario";
$resultado = mysqli_query($conexion, $sql);

$sql = "delete from direcciones where id = $id_direccion";
$resultado = mysqli_query($conexion, $sql);

if($resultado){
    while($datos = mysqli_fetch_assoc( $resultado )){
        array_push($array_datos,$datos);
    }
    echo json_encode($array_datos);
}

?>