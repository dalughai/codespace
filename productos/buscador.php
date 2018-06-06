<?php
session_start();

require '../startApp.php';
$titulo = "Productos";
$nombre = (isset($_GET["buscador"])) ? $_GET["buscador"] : "";

$sql = "SELECT * FROM productos WHERE nombre = '$nombre'";

    $resultado = mysqli_query($conexion, $sql);

    if ($resultado) {
        
        $producto = mysqli_fetch_assoc( $resultado );
        

        $id_producto = $producto['id'];


        $sql = "select categorias.nombre from productos join categorias on categorias.id = productos.id_categoria where productos.id = '$id_producto'";
        
        $resultado = mysqli_query($conexion, $sql);
        
        $categoria = mysqli_fetch_assoc($resultado );
        
        $sql = "select fabricantes.nombre, fabricantes.imagen from productos join fabricantes on fabricantes.id = productos.id_fabricante where productos.id = '$id_producto'";
        
        $resultado = mysqli_query($conexion, $sql);
        
        $marca = mysqli_fetch_assoc($resultado );
        if($id_producto < 1){
            $template_seccion = "../templates/404.php";
        } else {
            $template_seccion = "../templates/producto.php";
        }
    } else {
        $template_seccion = "../templates/home.php";
    }
        
include "../templates/main.php";

include "../endApp.php";

?>
