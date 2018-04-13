<?php
session_start();

require '../startApp.php';
$titulo = "Productos";
$nombre = (isset($_GET["buscador"])) ? $_GET["buscador"] : "";

$sql = "SELECT * FROM productos WHERE nombre = '$nombre'";

    $resultado = sqlsrv_query($conexion, $sql);

    if ($resultado) {
        
        $producto = sqlsrv_fetch_array( $resultado, SQLSRV_FETCH_ASSOC);
        
        $id_producto = $producto['id'];
        
        $sql = "select categorias.nombre from productos join categorias on categorias.id = productos.id_categoria where productos.id = '$id_producto'";
        
        $resultado = sqlsrv_query($conexion, $sql);
        
        $categoria = sqlsrv_fetch_array($resultado, SQLSRV_FETCH_ASSOC);
        
        $sql = "select fabricantes.nombre, fabricantes.imagen from productos join fabricantes on fabricantes.id = productos.id_fabricante where productos.id = '$id_producto'";
        
        $resultado = sqlsrv_query($conexion, $sql);
        
        $marca = sqlsrv_fetch_array($resultado, SQLSRV_FETCH_ASSOC);
        
        $template_seccion = "../templates/producto.php";

    } else {
        $template_seccion = "../templates/home.php";
    }
        
include "../templates/main.php";

include "../endApp.php";

?>
