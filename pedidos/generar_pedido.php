<?php
session_start();
require '../startApp.php';

$usuario = (isset($_SESSION["usuario"])) ? $_SESSION["usuario"] : "";
$carrito = (isset($_SESSION["carrito"])) ? $_SESSION["carrito"] : "";
$id_carrito = $carrito['id'];
$id_usuario = $usuario['id'];
$sql="select u.id as id_usuario, c.id as id_carrito,p.id as id_producto,p.imagen,p.descripcion_corta, p.referencia, p.nombre, p.precio_iva, cp.cantidad
            from carrito as c
            join carrito_producto as cp on cp.id_carrito = c.id
            join productos as p on cp.id_producto = p.id
            join usuarios as u on c.id_cliente = u.id
            where c.id = $id_carrito";
        
        $resultado_producto = sqlsrv_query($conexion, $sql);


$sql = "select usuarios.* , direcciones.*, direcciones.direccion as dir from usuarios 
join carrito on carrito.id_cliente = usuarios.id 
join direcciones on direcciones.id = usuarios.direccion
where carrito.id = $id_carrito";
        $resultado = sqlsrv_query($conexion, $sql);
if($resultado){
    $usuario = sqlsrv_fetch_array( $resultado, SQLSRV_FETCH_ASSOC);
}

$direccion = $usuario['dir'];
$sql = "select * from pedidos where id_cliente = $id_usuario and id_carrito = $id_carrito";
$resultado = sqlsrv_query($conexion, $sql);
if($resultado){
    $pedido = sqlsrv_fetch_array( $resultado, SQLSRV_FETCH_ASSOC);
}


$total_productos = 20;
$precio_total = 99;
$base = 0;
$iva = '21%';
$precio_final = 0;
$articulos = 0;

// (c) Xavier Nicolay
// Exemple de génération de devis/facture PDF

require('invoice.php');

$pdf = new PDF_Invoice( 'P', 'mm', 'A4' );
$pdf->AddPage();
$pdf->Image('../images/fotos_tienda/logo5.png',10,8,50);
$pdf->addSociete( "To String Shop",
                  "Calle Alextebuna N-35\n" .
                  "Tel: 635946097\n" .
                  "29006 MALAGA\n" );
$pdf->fact_dev( "Factura Numero ", "" );
$pdf->addDate(date_format($pedido['date_add'], 'd-m-Y'));
$pdf->addClient($usuario['id']);
$pdf->addPageNumber("1");
$pdf->addClientAdresse($usuario['nombre'] . " ". $usuario["apellido_1"] . " ". $usuario["apellido_2"] . "\n". $usuario["dir"] . "\n". $usuario["ciudad"] . " ". $usuario["provincia"] . " ". $usuario["codigo_postal"] . "\n". $usuario["comunidad_autonoma"] . "\n". $usuario["telefono"]. "\n". $usuario["email"]);
$pdf->addReglement("Pago Tarjeta");
$pdf->addEcheance(date_format($pedido['date_add'], 'd-m-Y'));
$pdf->addNumTVA("PEDIDO - " . $pedido['id'] );
$pdf->addReference("To String Shop");
$cols=array( "REFERENCIA"    => 23,
             "DESCRIPCION"  => 78,
             "CANTIDAD"     => 22,
             "PRECIO"      => 26,
             "TOTAL" => 30,
             "IVA"          => 11 );
$pdf->addCols( $cols);
$cols=array( "REFERENCIA"    => "L",
             "DESCRIPCION"  => "L",
             "CANTIDAD"     => "C",
             "PRECIO"      => "R",
             "TOTAL" => "R",
             "IVA"          => "C" );
$pdf->addLineFormat( $cols);
$pdf->addLineFormat($cols);






$y    = 109;


if($resultado_producto){
    while($producto = sqlsrv_fetch_array( $resultado_producto, SQLSRV_FETCH_ASSOC)){

$producto_ref = $producto['referencia'];
$producto_nombre = $producto['nombre'];
$producto_descripcion = $producto['descripcion_corta'];
$producto_cantidad = $producto['cantidad'];
$producto_precio = $producto['precio_iva'];


$line = array( "REFERENCIA"    => "$producto_ref",
               "DESCRIPCION"  => "$producto_nombre\n" .
                                 "$producto_descripcion",
               "CANTIDAD"     => "$producto_cantidad",
               "PRECIO"      => "$producto_precio",
               "TOTAL" => $producto_precio * $producto_cantidad,
               "IVA"          => "21%" );
$precio_final = $precio_final + ($producto_precio * $producto_cantidad);
$size = $pdf->addLine( $y, $line );
$y   += $size + 2;
$articulos = $articulos + $producto_cantidad;
}
}
$base = number_format(($precio_final /1.21),2);
$pdf->addCadreEuros($base,$iva,$precio_final,$articulos);
$sql = "insert into factura (id_cliente, fecha_factura, precio_sin_iva, precio_iva, direccion_facturacion, direccion_envio,referencia) 
VALUES ($id_usuario, GETDATE(),$base, $precio_final,'$direccion','$direccion','$id_usuario.$id_usuario.$id_carrito')";

    $resultado = sqlsrv_query($conexion, $sql);
if($resultado){
    $pdfdoc = $pdf->Output();
    $pdftosend = chunk_split(base64_encode($pdfdoc));
    
    $asunto ="Has recibido una Factura de To String Shop";
    $email = $usuario['email'];
    $cuerpo = "Muchas Gracias por su compra, adjuntamos la factura de su compra a continuacion. Un saludo!";
    enviarEmailPDF($email, $asunto, $cuerpo, $usuario['nombre'],$pdftosend);
    
} else {
        echo $sql;
}



?>