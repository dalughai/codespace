<?php
session_start();
header('Content-Type: application/json');
require '../startApp.php';

$id_usuario =  (isset($_POST["id_usuario"])) ? $_POST["id_usuario"] : "";


$array_datos = array();
$sql = "select productos.* from stringbox
join stringbox_producto on stringbox.id = stringbox_producto.id_stringbox
join productos on productos.id = stringbox_producto.id_producto
where stringbox.id_usuario = $id_usuario";

$resultado = mysqli_query($conexion, $sql);

if($resultado){
    while($datos = mysqli_fetch_assoc( $resultado )){
        array_push($array_datos,$datos);
    }
    echo json_encode($array_datos);
}

?>