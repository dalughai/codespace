<?php 

header('Content-Type: application/json');

require '../startApp.php';

$id_producto = (isset($_POST["id_producto"])) ? $_POST["id_producto"] : "";
$id_carrito = (isset($_POST["id_carrito"])) ? $_POST["id_carrito"] : "";

$sql = "delete carrito_producto
        from carrito_producto
        where id_producto = $id_producto and id_carrito = $id_carrito";
$resultado = mysqli_query($conexion, $sql);
$array_datos = array();
if($resultado){
    $sql = "select sum(cantidad) as cantidad from carrito_producto WHERE id_carrito = $id_carrito;";

    $resultado = mysqli_query($conexion, $sql);
    if($resultado){
        while($datos = mysqli_fetch_assoc( $resultado )){
            array_push($array_datos,$datos);
        }
        echo json_encode($array_datos);
    }
}

?>