<?php
session_start();
require '../startApp.php';

$id_producto = (isset($_POST["id_producto"])) ? $_POST["id_producto"] : "";
$id_carrito = (isset($_POST["id_carrito"])) ? $_POST["id_carrito"] : "";
$cantidad_get =  (isset($_POST["cantidad"])) ? $_POST["cantidad"] : "";




$sql = "select cantidad from carrito_producto where id_producto = '$id_producto' and id_carrito = '$id_carrito'";
echo $id_producto;
echo $id_carrito;
echo $cantidad_get;
$resultado = sqlsrv_query($conexion, $sql);
$cantidad_producto = sqlsrv_fetch_array( $resultado, SQLSRV_FETCH_ASSOC);
$cantidad = $cantidad_producto['cantidad'];

if($cantidad){
    echo "Se ha actualizado la cantidad de un registro / /";
    $sql = "update carrito_producto set cantidad = ($cantidad + 1) where id_producto = '$id_producto' and id_carrito = $id_carrito";
    $resultado = sqlsrv_query($conexion, $sql);
} else {
    echo "Se ha insertado un nuevo registro de producto / /";
    $sql = "INSERT INTO carrito_producto (id_carrito,id_producto,cantidad) VALUES ($id_carrito,$id_producto,$cantidad_get)";
    $resultado = sqlsrv_query($conexion, $sql);
}

if ($resultado) {
        echo "Todo Correcto";
    
} else {
    echo "Error";
        $error = "Error de autentificación";
        $template_seccion = "../templates/home.php";
}

?>