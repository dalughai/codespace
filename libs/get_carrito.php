<?php
session_start();
header('Content-Type: application/json');
require '../startApp.php';

$id_carrito =  (isset($_POST["id_carrito"])) ? $_POST["id_carrito"] : "";


$array_datos = array();
$sql = "select c.id as id_carrito, c.id_cliente as id_usuario, cp.cantidad as cantidad, p.nombre as nombre, p.id as id_producto, p.precio_iva as pvp, p.precio_iva * cp.cantidad as precio_total_producto from carrito as c join carrito_producto as cp on cp.id_carrito = c.id join productos as p on p.id = cp.id_producto where c.id = $id_carrito;";

$resultado = mysqli_query($conexion, $sql);

if($resultado){
    while($datos = mysqli_fetch_assoc( $resultado )){
        array_push($array_datos,$datos);
    }
    echo json_encode($array_datos);
}

?>