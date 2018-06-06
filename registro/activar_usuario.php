<?php
require '../startApp.php';

$id_usuario = (isset($_GET["id"])) ? $_GET["id"] : "";
//$id_usuario = $id_usuario;
$array_datos = array();

$sql ="select id as md5, id as id from usuarios order by id";
$resultado = mysqli_query($conexion, $sql);

$id_usuario_md5 = mysqli_fetch_array( $resultado ) ;  

while($datos = mysqli_fetch_assoc( $resultado )){
    array_push($array_datos,$datos);
}

for($i = 0;$i < count($array_datos);$i++ ) {

    $array_datos[$i]["md5"] = md5($array_datos[$i]["md5"]);
    if($id_usuario == $array_datos[$i]["md5"]){
        $id_usuario = $array_datos[$i]["id"];
    }

}


// echo $id_usuario_md5['md5'];
if ($id_usuario == '') {
    die();
    $error = "Error en la activación";
    $template_seccion = "../templates/login.php";
} else {
    
    $sql = "UPDATE usuarios SET active = 1 WHERE id = '$id_usuario'";
    $resultado = mysqli_query($conexion, $sql);
    if ($resultado) {
         $template_seccion = "../templates/home.php";
    } else {
        die();
        $error = "Error en la activación";
        $template_seccion = "../templates/login.php";
    }
    
}

include '../templates/main.php';
include("../endApp.php");

?>