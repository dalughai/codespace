<?php
session_start();
require '../startApp.php';
header("Content-Type: text/html; charset=iso-8859-1 ");
require_once('../libs/stripe-php/init.php');
$usuario = (isset($_SESSION["usuario"])) ? $_SESSION["usuario"] : "";
$carrito = (isset($_SESSION["carrito"])) ? $_SESSION["carrito"] : "";
$id_carrito = $carrito['id'];
$id_usuario = $usuario['id'];
$idc = $id_carrito;
$sql="select u.id as id_usuario, c.id as id_carrito,p.id as id_producto,p.imagen,p.descripcion_corta, p.referencia, p.nombre, p.precio_iva, cp.cantidad, p.id_categoria
            from carrito as c
            join carrito_producto as cp on cp.id_carrito = c.id
            join productos as p on cp.id_producto = p.id
            join usuarios as u on c.id_cliente = u.id
            where c.id = $id_carrito";
        
        $resultado_producto = mysqli_query($conexion, $sql);
$sql="select id from factura order by id desc limit 1";
        $resultado = mysqli_query($conexion, $sql);
        
$fact = mysqli_fetch_assoc( $resultado);
$id_fact = $fact["id"]+1;



$sql = "select usuarios.* , direcciones.*, direcciones.direccion as dir from usuarios 
join carrito on carrito.id_cliente = usuarios.id 
join direcciones on direcciones.id = usuarios.direccion
where carrito.id = $id_carrito";
        $resultado = mysqli_query($conexion, $sql);
if($resultado){
    $usuario = mysqli_fetch_assoc( $resultado);
}

$direccion = $usuario['dir'];
$sql = "select * from pedidos where id_cliente = $id_usuario and id_carrito = $id_carrito";
$resultado = mysqli_query($conexion, $sql);
if($resultado){
    $pedido = mysqli_fetch_assoc( $resultado);
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
$pdf->Image('../images/fotos_tienda/tostringshop.png',10,8,50);
$pdf->addSociete( "To String Shop",
                  "Calle Alextebuna N-35\n" .
                  "Tel: 635946097\n" .
                  "29006 MALAGA\n" );
$pdf->fact_dev( "Factura Numero $id_fact ", "" );
$pdf->addDate(date("d/m/y"));
$pdf->addClient($usuario['id']);
$pdf->addPageNumber("1");
$pdf->addClientAdresse(utf8_decode($usuario['nombre'] . " ". $usuario["apellido_1"] . " ". $usuario["apellido_2"] . "\n". $usuario["dir"] . "\n". $usuario["ciudad"] . " ". $usuario["provincia"] . " ". $usuario["codigo_postal"] . "\n". $usuario["comunidad_autonoma"] . "\n". $usuario["telefono"]. "\n". $usuario["email"]));
$pdf->addReglement("Pago Tarjeta");
$pdf->addEcheance(date("d/m/y"));
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
    while($producto = mysqli_fetch_assoc( $resultado_producto )){

$producto_ref = $producto['referencia'];
$producto_nombre = $producto['nombre'];
$producto_descripcion = $producto['descripcion_corta'];
$producto_cantidad = $producto['cantidad'];
$producto_precio = $producto['precio_iva'];
$producto_cat = $producto['id_categoria'];




$line = array( "REFERENCIA"    => "$producto_ref",
               "DESCRIPCION"  => "$producto_nombre\n" .
                utf8_decode("$producto_descripcion"),
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

$sql = "update pedidos set total_IVA = '$precio_final' where id_carrito = '$idc'";
$resultado = mysqli_query($conexion, $sql);


$sql = "insert into factura (id_cliente, fecha_factura, precio_sin_iva, precio_iva, direccion_facturacion, direccion_envio,referencia) 
VALUES ($id_usuario, NOW(),$base, $precio_final,'$direccion','$direccion','$id_usuario.$id_usuario.$id_carrito')";

    $resultado = mysqli_query($conexion, $sql);



// ////////////////////////////////////////////////////////////////

if($producto_cat == 32){
    $stremail = $usuario['email'];
    // Set your secret key: remember to change this to your live secret key in production
    // See your keys here: https://dashboard.stripe.com/account/apikeys
    \Stripe\Stripe::setApiKey("sk_test_wOUzaV1EmGSRSK9GaQYV2bHD");
    
    // Token is created using Checkout or Elements!
    // Get the payment token ID submitted by the form:
    $token = $_POST['stripeToken'];
    
    $customer = \Stripe\Customer::create(array(
        "email" => $stremail,
        "source" => $token,
      ));
    $plan = \Stripe\Plan::create(array(
        "amount" => ($precio_final*100),
        "interval" => "month",
        "product" => array(
          "name" => "String Box"
        ),
        "currency" => "eur",
        "id" => "StringBox"."$id_usuario"."$id_usuario"."$id_carrito"
      ));

    $sub = \Stripe\Subscription::create(array(
        "customer" => $customer,
        "items" => array(
          array(
            "plan" => $plan,
          ),
        )
      ));

} else {
    $stremail = $usuario['email'];
// Set your secret key: remember to change this to your live secret key in production
// See your keys here: https://dashboard.stripe.com/account/apikeys
\Stripe\Stripe::setApiKey("sk_test_wOUzaV1EmGSRSK9GaQYV2bHD");

// Token is created using Checkout or Elements!
// Get the payment token ID submitted by the form:
$token = $_POST['stripeToken'];

$customer = \Stripe\Customer::create(array(
    "email" => $stremail,
    "source" => $token,
  ));

$charge = \Stripe\Charge::create([
    'amount' => ($precio_final*100),
    'currency' => 'eur',
    'customer' => $customer,
    'description' => 'Pedido de '.$stremail.' en To String Shop',
]); 
}

///////////////////////////////////////////////////////////////////////////////////

$sql = "insert into carrito (id_cliente,date_add) VALUES ($id_usuario,NOW())";
    $resultado = mysqli_query($conexion, $sql);
    
    if ($resultado) {
    
        $sql = "select id from carrito order by id desc limit 1";
    
        $resultado_carrito = mysqli_query($conexion, $sql);
    
        if($resultado_carrito){
            $id_carrito = $resultado_carrito;
    
            $id_carrito_nuevo = mysqli_fetch_assoc( $id_carrito );
                            
            $_SESSION['carrito'] = $id_carrito_nuevo;
        }
    }


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