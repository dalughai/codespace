<?php 

header('Content-Type: application/json');
require '../startApp.php';

$id_categoria = (isset($_POST["id_categoria"])) ? $_POST["id_categoria"] : "";
$cuerda = (isset($_POST["cuerda"])) ? $_POST["cuerda"] : "";

// CONSULTAS PARA GUITARRA ELECTRICA, ACUSTICA Y CLASICA
if($cuerda == 1 and $id_categoria == 10 || $cuerda == 1 && $id_categoria == 11 || $cuerda == 1 && $id_categoria == 12){
    $sql = "select * from productos where (id_categoria = $id_categoria) and (calibre = 8 or calibre = 9 or calibre = 10 or calibre = 11 or calibre = 12 or calibre = 13)  order by calibre";
}
else if($cuerda == 2 && $id_categoria == 10 || $cuerda == 2 && $id_categoria == 11 || $cuerda == 2 && $id_categoria == 12){
    $sql = "select * from productos where (id_categoria = $id_categoria) and (calibre = 11 or calibre = 12 or calibre = 13 or calibre = 14 or calibre = 15 or calibre = 16)  order by calibre";
}
else if($cuerda == 3 && $id_categoria == 10 || $cuerda == 3 && $id_categoria == 11 || $cuerda == 3 && $id_categoria == 12){
    $sql = "select * from productos where (id_categoria = $id_categoria) and (calibre = 14 or calibre = 16 or calibre = 17 or calibre = 18 or calibre = 20 or calibre = 22 or calibre = 24) order by calibre";
}
else if($cuerda == 4 && $id_categoria == 10 || $cuerda == 4 && $id_categoria == 11 || $cuerda == 4 && $id_categoria == 12){
    $sql = "select * from productos where (id_categoria = $id_categoria) and (calibre = 22 or calibre = 24 or calibre = 26 or calibre = 28 or calibre = 30 or calibre = 32) order by calibre";
}
else if($cuerda == 5 && $id_categoria == 10 || $cuerda == 5 && $id_categoria == 11 || $cuerda == 5 && $id_categoria == 12){
    $sql = "select * from productos where (id_categoria = $id_categoria) and (calibre = 30 or calibre = 32 or calibre = 36 or calibre = 38 or calibre = 40 or calibre = 42 or calibre = 44) order by calibre";
}
else if($cuerda == 6 && $id_categoria == 10 || $cuerda == 6 && $id_categoria == 11 || $cuerda == 6 && $id_categoria == 12){
    $sql = "select * from productos where (id_categoria = $id_categoria) and (calibre = 38 or calibre = 40 or calibre = 42 or calibre = 44 or calibre = 46 or calibre = 48 or calibre = 50 or calibre = 52 or calibre = 54 or calibre = 56) order by calibre";
}
else if($cuerda == 7 && $id_categoria == 10){
    $sql = "select * from productos where (id_categoria = $id_categoria) and (calibre = 50 or calibre = 52 or calibre = 54 or calibre = 56 or calibre = 58 or calibre = 60 or calibre = 62 or calibre = 64 or calibre = 66 or calibre = 68 or calibre = 70 or calibre = 72) order by calibre";
}
else if($cuerda == 8 && $id_categoria == 10){
    $sql = "select * from productos where (id_categoria = $id_categoria) and (calibre = 68 or calibre = 70 or calibre = 72 or calibre = 74 or calibre = 80) order by calibre";
}
// CONSULTAS PARA BAJO ELECTRICO Y ACUSTICO
else if($cuerda == 1 && $id_categoria == 13 || $cuerda == 1 && $id_categoria == 14){
    $sql = "select * from productos where (id_categoria = $id_categoria) and (calibre = 40 or calibre = 45 or calibre = 50 or calibre = 55) order by calibre";
}
else if($cuerda == 2 && $id_categoria == 13 || $cuerda == 2 && $id_categoria == 14){
    $sql = "select * from productos where (id_categoria = $id_categoria) and (calibre = 60 or calibre = 65 or calibre = 70 or calibre = 75) order by calibre";
}
else if($cuerda == 3 && $id_categoria == 13 || $cuerda == 3 && $id_categoria == 14){
    $sql = "select * from productos where (id_categoria = $id_categoria) and (calibre = 70 or calibre = 80 or calibre = 85 or calibre = 90) order by calibre";
}
else if($cuerda == 4 && $id_categoria == 13 || $cuerda == 4 && $id_categoria == 14){
    $sql = "select * from productos where (id_categoria = $id_categoria) and (calibre = 95 or calibre = 100 or calibre = 105 or calibre = 110) order by calibre";
}
else if($cuerda = 5 && $id_categoria = 13 || $cuerda = 5 && $id_categoria = 14){
    $sql = "select * from productos where (id_categoria = $id_categoria) and (calibre = 125 or calibre = 130 or calibre = 135) order by calibre";
}
//$sql = "select * from productos where (id_categoria = $id_categoria) and calibre is not null order by calibre";
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