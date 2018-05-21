<?php 

header('Content-Type: application/json');
require '../startApp.php';

$id_carrito = (isset($_POST["id_carrito"])) ? $_POST["id_carrito"] : "";

$sql = "select SUM(carrito_producto.cantidad) as cantidad, SUM(productos.precio_iva * carrito_producto.cantidad) as precio_total
from carrito_producto 
join productos
	on productos.id = carrito_producto.id_producto
where id_carrito = $id_carrito";
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