<?php
session_start();
header('Content-Type: application/json');
require '../startApp.php';

$id_usuario =  (isset($_POST["id_usuario"])) ? $_POST["id_usuario"] : "";


$array_datos = array();
$sql = "select pedidos.id as idp, estado_pedido.nombre as estado, pedidos.*, date_format(pedidos.date_add,'%d %m %Y') as fecha from pedidos join estado_pedido on pedidos.id_estado = estado_pedido.id where id_cliente = $id_usuario order by idp desc";

$resultado = mysqli_query($conexion, $sql);

if($resultado){
    while($datos = mysqli_fetch_assoc( $resultado )){
        array_push($array_datos,$datos);
    }
    echo json_encode($array_datos);
}

?>