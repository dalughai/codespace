<?php
session_start();
require '../startApp.php';
$titulo = "Pedidos";

if(isset($_SESSION["usuario"])) {
    $template_seccion = "../templates/pedidos.php";
} else {
    $error = "Debes iniciar sesion para realizar un pedido!";
    $template_seccion = "../templates/login.php";
}
$carrito = $_SESSION['carrito'];
$usuario = $_SESSION['usuario'];
$id_carrito = $carrito['id'];
$id_usuario = $usuario['id'];

$sql = "select * from pedidos where id_cliente = $id_usuario and id_carrito = $id_carrito";
$resultado = mysqli_query($conexion, $sql);

$consulta = mysqli_fetch_assoc( $resultado );

if(sizeof($consulta) > 0){
} else {
    
    $sql = "insert into pedidos (id_cliente, id_carrito, date_add) VALUES ($id_usuario, $id_carrito, NOW())";

    $resultado = mysqli_query($conexion, $sql);

    if ($resultado) {

    } else {
        echo "Error";
            $error = "Error de autentificación";}
}

include "../templates/main.php";

include "../endApp.php";
?>