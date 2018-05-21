<?php
session_start();
header('Content-Type: application/json');
require '../startApp.php';

$id_carrito = (isset($_POST["id_carrito"])) ? $_POST["id_carrito"] : "";

$sql = "select c.id as id_carrito,p.id as id_producto,p.imagen, p.nombre, p.precio_iva, cp.cantidad, (cp.cantidad * p.precio_iva) as precio_total
from carrito as c
join carrito_producto as cp on cp.id_carrito = c.id
join productos as p on cp.id_producto = p.id
join usuarios as u on c.id_cliente = u.id
where c.id = '$id_carrito'";

$array_datos = array();
$resultado = mysqli_query($conexion, $sql);

if ($resultado) {
    
    while($datos = mysqli_fetch_assoc( $resultado )){
        array_push($array_datos,$datos);
    }
    echo json_encode($array_datos);
    
    
} else {
    echo "Error en json";
        $error = "Error de autentificación";
        $template_seccion = "../templates/home.php";
}

?>