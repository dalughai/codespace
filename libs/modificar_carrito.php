<?php
session_start();
header('Content-Type: application/json');
require '../startApp.php';

$id_carrito =  (isset($_POST["id_carrito"])) ? $_POST["id_carrito"] : "";
$id_usuario =  (isset($_POST["id_usuario"])) ? $_POST["id_usuario"] : "";
$array_datos = array();

$resultado_carrito = modificar_carrito($id_carrito,$id_usuario,$conexion);

// while($datos = mysqli_fetch_assoc( $resultado_carrito )){
//     array_push($array_datos,$datos);
// }

echo json_encode($resultado_carrito);
function modificar_carrito($id_carrito, $id_usuario,$conexion){
    
    $sql = "insert into carrito (id_cliente,date_add) VALUES ($id_usuario,NOW())";
    $resultado = mysqli_query($conexion, $sql);
    
    if ($resultado) {
    
        $sql = "select id from carrito order by id desc limit 1";
    
        $resultado_carrito = mysqli_query($conexion, $sql);
    
        if($resultado_carrito){
            $id_carrito = $resultado_carrito;
    
            $id_carrito_nuevo = mysqli_fetch_assoc( $id_carrito );
                            
            $_SESSION['carrito'] = $id_carrito_nuevo;
            return $id_carrito_nuevo;
        }
    }
}
?>