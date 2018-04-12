<?php 


require '../startApp.php';

$id_producto = (isset($_POST["id_producto"])) ? $_POST["id_producto"] : "";
$id_carrito = (isset($_POST["id_carrito"])) ? $_POST["id_carrito"] : "";

$sql = "delete carrito_producto
        from carrito_producto
        where id_producto = $id_producto and id_carrito = $id_carrito";
$resultado = sqlsrv_query($conexion, $sql);
$array_datos = array();
if($resultado){
    echo "Producto Eliminado con Exito!";
}

?>