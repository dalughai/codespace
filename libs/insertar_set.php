<?php
session_start();
header('Content-Type: application/json');
require '../startApp.php';

// $id_producto = (isset($_POST["id_producto"])) ? $_POST["id_producto"] : "";
// $id_carrito = (isset($_POST["id_carrito"])) ? $_POST["id_carrito"] : "";
// $cantidad_get =  (isset($_POST["cantidad"])) ? $_POST["cantidad"] : "";




$sql = "";
//echo $id_producto;
//echo $id_carrito;
//echo $cantidad_get;
$resultado = mysqli_query($conexion, $sql);
$array_datos = array();
if($resultado){
    
    while($datos = mysqli_fetch_assoc( $resultado )){
        array_push($array_datos,$datos);
    }
    echo json_encode($array_datos);
    
//    $datos = sqlsrv_fetch_array( $resultado, SQLSRV_FETCH_ASSOC);
//    echo json_encode($datos);
    
}

?>