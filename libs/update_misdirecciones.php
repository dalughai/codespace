<?php
session_start();
header('Content-Type: application/json');
require '../startApp.php';

$id_direccion =  (isset($_POST["id_direccion"])) ? $_POST["id_direccion"] : "";
$direccion =  (isset($_POST["direccion"])) ? $_POST["direccion"] : "";
$cp =  (isset($_POST["cp"])) ? $_POST["cp"] : "";
$ciudad =  (isset($_POST["ciudad"])) ? $_POST["ciudad"] : "";
$provincia =  (isset($_POST["provincia"])) ? $_POST["provincia"] : "";
$comunidad =  (isset($_POST["comunidad"])) ? $_POST["comunidad"] : "";


$array_datos = array();
$sql = "update direcciones set direccion = '$direccion', codigo_postal = '$cp', ciudad = '$ciudad', provincia = '$provincia', comunidad_autonoma = '$comunidad', date_update = now() where id = $id_direccion";

$resultado = mysqli_query($conexion, $sql);

if($resultado){
    while($datos = mysqli_fetch_assoc( $resultado )){
        array_push($array_datos,$datos);
    }
    echo json_encode($array_datos);
}

?> 