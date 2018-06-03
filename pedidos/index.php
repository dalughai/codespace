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
$refenrecia = random_string(10);

$sql = "select id from pedidos where id_cliente = $id_usuario and id_carrito = $id_carrito";
$resultado = mysqli_query($conexion, $sql);

$consulta = mysqli_fetch_assoc( $resultado );
if(sizeof($consulta) > 0){

} else {
    echo $refenrecia;
    $sql = "insert into pedidos (id_cliente, id_carrito,id_estado,date_add,referencia) VALUES ($id_usuario, $id_carrito,1, NOW(),'$refenrecia')";

    $resultado = mysqli_query($conexion, $sql);

    if ($resultado) {

    } else {
        echo "Error";
            $error = "Error de autentificación";}
}

include "../templates/main.php";

include "../endApp.php";

function random_string($length) {
    switch(true) {
        case function_exists('mcrypt_create_iv') :
            $r = mcrypt_create_iv($length, MCRYPT_DEV_URANDOM);
        break;
        case function_exists('openssl_random_pseudo_bytes') :
            $r = openssl_random_pseudo_bytes($length);
        break;
        case is_readable('/dev/urandom') : // deceze
            $r = file_get_contents('/dev/urandom', false, null, 0, $length);
        break;
        default :
            $i = 0;
            $r = '';
            while($i ++ < $length) {
                $r .= chr(mt_rand(0, 255));
            }
        break;
    }
    return substr(bin2hex($r), 0, $length);
}
?>
