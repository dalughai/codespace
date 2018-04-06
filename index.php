<?php 
include("startApp.php");

/*
if(isset($_SESSION["carrito"])) {
    
} else {
    
        $sql = "insert into carrito (id_cliente,date_add) VALUES (NULL,GETDATE())";
        $resultado = sqlsrv_query($conexion, $sql);

        if ($resultado) {

            $sql = "select top(1) id from carrito order by id desc";

            $resultado_carrito = sqlsrv_query($conexion, $sql);
            
            if($resultado_carrito){

                $id_carrito = sqlsrv_fetch_array( $resultado, SQLSRV_FETCH_ASSOC);

                $_SESSION['carrito'] = $id_carrito;
            }
      }
}

*/
$titulo = "To String Shop";
$template_seccion = "templates/home.php";

include("templates/main.php")
?>

