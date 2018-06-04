<?php 

header('Content-Type: application/json');
require '../startApp.php';

$valor = (isset($_POST["valor"])) ? $_POST["valor"] : "";

$sql = "select id, nombre, imagen,precio_IVA from productos where nombre like '%$valor%' limit 10";
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