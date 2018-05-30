<?php
session_start();
header('Content-Type: application/json');
require '../startApp.php';

$id_producto = (isset($_POST["id_producto"])) ? $_POST["id_producto"] : "";
$id_carrito = (isset($_POST["id_carrito"])) ? $_POST["id_carrito"] : "";
$cantidad_get =  (isset($_POST["cantidad"])) ? $_POST["cantidad"] : "";




$sql = "select cantidad from carrito_producto where id_producto = '$id_producto' and id_carrito = '$id_carrito'";

$resultado = mysqli_query($conexion, $sql);
$cantidad_producto = mysqli_fetch_assoc( $resultado );
$cantidad = $cantidad_producto['cantidad'];

if($cantidad){
    //echo "Se ha actualizado la cantidad de un registro / /";
    $sql = "update carrito_producto set cantidad = ($cantidad + 1) where id_producto = '$id_producto' and id_carrito = $id_carrito";
    $resultado = mysqli_query($conexion, $sql);
} else {
    //echo "Se ha insertado un nuevo registro de producto / /";
    $sql = "INSERT INTO carrito_producto (id_carrito,id_producto,cantidad) VALUES ($id_carrito,$id_producto,$cantidad_get)";
    $resultado = mysqli_query($conexion, $sql);
}

if ($resultado) {
        //echo "Todo Correcto";
        $sql="select SUM(carrito_producto.cantidad) as cantidad, SUM(productos.precio_iva * carrito_producto.cantidad) as precio_total
        from carrito_producto 
        join productos
            on productos.id = carrito_producto.id_producto
                where id_carrito = $id_carrito";
        $resultado = mysqli_query($conexion, $sql);
        $array_datos = array();
        if($resultado){

            while($datos = mysqli_fetch_assoc( $resultado )){
                array_push($array_datos,$datos);
            }
            echo json_encode($array_datos);
        }
} else {
    echo "Error en el ultimo paso";
        $error = "Fallo";
        $template_seccion = "../templates/home.php";
}

?>