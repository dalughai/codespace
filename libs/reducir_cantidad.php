<?php
session_start();
header('Content-Type: application/json');
require '../startApp.php';

$id_carrito =  (isset($_POST["id_carrito"])) ? $_POST["id_carrito"] : "";
$id_producto =  (isset($_POST["id_producto"])) ? $_POST["id_producto"] : "";


$array_datos = array();
$sql = "UPDATE carrito_producto SET cantidad = cantidad - 1 WHERE id_carrito = $id_carrito and id_producto = $id_producto;";

$resultado = mysqli_query($conexion, $sql);

if($resultado){
    $sql = "select cantidad from carrito_producto WHERE id_carrito = $id_carrito and id_producto = $id_producto;";

    $resultado = mysqli_query($conexion, $sql);
    if($resultado){
        while($datos = mysqli_fetch_assoc( $resultado )){
            array_push($array_datos,$datos);
        }
        echo json_encode($array_datos);
    }
}

?>