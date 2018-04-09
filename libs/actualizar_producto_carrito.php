<?php
session_start();
require '../startApp.php';

$id_carrito = (isset($_POST["id_carrito"])) ? $_POST["id_carrito"] : "";



$sql = "select c.id as id_carrito,p.id as id_producto,p.imagen, p.nombre, p.precio_iva, cp.cantidad
from carrito as c
join carrito_producto as cp on cp.id_carrito = c.id
join productos as p on cp.id_producto = p.id
join usuarios as u on c.id_cliente = u.id
where c.id = $id_carrito
";
$resultado = sqlsrv_query($conexion, $sql);



if ($resultado) {
        $datos = sqlsrv_fetch_array( $resultado, SQLSRV_FETCH_ASSOC);
           echo json_encode($datos,JSON_FORCE_OBJECT);
        
    
} else {
    echo "Error";
        $error = "Error de autentificación";
        $template_seccion = "../templates/home.php";
}

?>