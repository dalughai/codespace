<?php
session_start();

require '../startApp.php';
$titulo = "Productos";
$id_producto = (isset($_GET["id"])) ? $_GET["id"] : "";

$sql = "SELECT * FROM productos WHERE id = $id_producto";

    $resultado = mysqli_query($conexion, $sql);

    if ($resultado) {
        
        $producto = mysqli_fetch_assoc( $resultado );
        
        
        $sql = "select categorias.nombre from productos join categorias on categorias.id = productos.id_categoria where productos.id = '$id_producto'";
        
        $resultado = mysqli_query($conexion, $sql);
        
        $categoria = mysqli_fetch_assoc($resultado);
        
        $sql = "select fabricantes.nombre, fabricantes.imagen from productos join fabricantes on fabricantes.id = productos.id_fabricante where productos.id = '$id_producto'";
        
        $resultado = mysqli_query($conexion, $sql);
        
        $marca = mysqli_fetch_assoc($resultado );
        
        $template_seccion = "../templates/producto.php";

    } else {
        $template_seccion = "../templates/home.php";
    }
        
include "../templates/main.php";

include "../endApp.php";

?>
