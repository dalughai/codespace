<?php
session_start();
header('Content-Type: application/json');
require '../startApp.php';

$id_carrito =  (isset($_POST["id_carrito"])) ? $_POST["id_carrito"] : "";
$id_usuario =  (isset($_POST["id_usuario"])) ? $_POST["id_usuario"] : "";
$dia_entrega =  (isset($_POST["dia_entrega"])) ? $_POST["dia_entrega"] : "";


$array_datos = array();
$sql = "call tss_crear_stringbox($id_usuario,$id_carrito,$dia_entrega)";
$resultado = mysqli_query($conexion, $sql);

if($resultado){
    while($datos = mysqli_fetch_assoc( $resultado )){
        array_push($array_datos,$datos);
    }
    echo json_encode($array_datos);
}

?>