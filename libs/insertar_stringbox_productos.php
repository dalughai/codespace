<?php
session_start();
header('Content-Type: application/json');
require '../startApp.php';

$id_carrito =  (isset($_POST["id_carrito"])) ? $_POST["id_carrito"] : "";
$id_stringbox =  (isset($_POST["id_stringbox"])) ? $_POST["id_stringbox"] : "";
$descripcion =  (isset($_POST["descripcion"])) ? $_POST["descripcion"] : "";


$array_datos = array();
$sql = "call tss_insertar_producto_stringbox($id_carrito,$id_stringbox,'$descripcion')";

$resultado = mysqli_query($conexion, $sql);
if($resultado){
    while($datos = mysqli_fetch_assoc( $resultado )){
        array_push($array_datos,$datos);
    }

    echo json_encode($array_datos);
}

?>