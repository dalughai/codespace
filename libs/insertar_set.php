<?php
session_start();
header('Content-Type: application/json');
require '../startApp.php';

$id_head =  (isset($_POST["id_head"])) ? $_POST["id_head"] : "";
$id_usuario =  (isset($_POST["id_usuario"])) ? $_POST["id_usuario"] : "";
$cuerda_1 = (isset($_POST["cuerda_1"])) ? $_POST["cuerda_1"] : "";
$cuerda_2 = (isset($_POST["cuerda_2"])) ? $_POST["cuerda_2"] : "";
$cuerda_3 = (isset($_POST["cuerda_3"])) ? $_POST["cuerda_3"] : "";
$cuerda_4 = (isset($_POST["cuerda_4"])) ? $_POST["cuerda_4"] : "";
$cuerda_5 = (isset($_POST["cuerda_5"])) ? $_POST["cuerda_5"] : "";
$cuerda_6 = (isset($_POST["cuerda_6"])) ? $_POST["cuerda_6"] : "";
$cuerda_7 = (isset($_POST["cuerda_7"])) ? $_POST["cuerda_7"] : "";
$cuerda_8 = (isset($_POST["cuerda_8"])) ? $_POST["cuerda_8"] : "";
$descripcion = (isset($_POST["descripcion"])) ? $_POST["descripcion"] : "";

$array_datos = array();

if($id_head == 6){
    $sql = "call tss_insertar_nuevo_set_6($id_usuario,$id_head,$cuerda_1,$cuerda_2,$cuerda_3,$cuerda_4,$cuerda_5,$cuerda_6,'$descripcion')";
}
if($id_head == 7){
    $sql = "call tss_insertar_nuevo_set_7($id_usuario,$id_head,$cuerda_1,$cuerda_2,$cuerda_3,$cuerda_4,$cuerda_5,$cuerda_6,$cuerda_7,'$descripcion')";
}
if($id_head == 8){
    $sql = "call tss_insertar_nuevo_set_8($id_usuario,$id_head,$cuerda_1,$cuerda_2,$cuerda_3,$cuerda_4,$cuerda_5,$cuerda_6,$cuerda_7,$cuerda_8,'$descripcion')";
}

$resultado = mysqli_query($conexion, $sql);

if($resultado){
    while($datos = mysqli_fetch_assoc( $resultado )){
        array_push($array_datos,$datos);
    }
    echo json_encode($array_datos);
}

?>