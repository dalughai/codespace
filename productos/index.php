<?php
session_start();

require '../startApp.php';
$titulo = "Productos";
$id_producto = (isset($_GET["id"])) ? $_GET["id"] : "";

$sql = "SELECT * FROM productos WHERE id = $id_producto";

    $resultado = sqlsrv_query($conexion, $sql);

    if ($resultado) {
        
        $producto = sqlsrv_fetch_array( $resultado, SQLSRV_FETCH_ASSOC);
        
        
        $sql = "select categorias.nombre from productos join categorias on categorias.id = productos.id_categoria where productos.id = '$id_producto'";
        
        $resultado = sqlsrv_query($conexion, $sql);
        
        $categoria = sqlsrv_fetch_array($resultado, SQLSRV_FETCH_ASSOC);
        
        $sql = "select fabricantes.nombre from productos join fabricantes on fabricantes.id = productos.id_categoria where productos.id = '$id_producto'";
        
        $resultado = sqlsrv_query($conexion, $sql);
        
        $marca = sqlsrv_fetch_array($resultado, SQLSRV_FETCH_ASSOC);
        
        $template_seccion = "../templates/producto.php";

    } else {
        $template_seccion = "../templates/home.php";
    }
        
include "../templates/main.php";

include "../endApp.php";

?>
