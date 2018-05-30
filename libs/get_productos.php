<?php
session_start();
header('Content-Type: application/json');
require '../startApp.php';

$consulta =  (isset($_POST["consulta"])) ? $_POST["consulta"] : "";


$array_datos = array();
$sql = "$consulta";

$resultado = mysqli_query($conexion, $sql);

if($resultado){
    while($datos = mysqli_fetch_assoc( $resultado )){
        array_push($array_datos,$datos);
    }
    echo json_encode($array_datos);
}

?>