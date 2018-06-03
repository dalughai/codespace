<?php
        $sql = "select sum(cantidad) as c from carrito_producto where id_carrito = $id_carrito";

        $resultado = mysqli_query($conexion, $sql);

        $total_carrito = mysqli_fetch_assoc( $resultado );

        $sql = "select sum(productos.precio_iva * carrito_producto.cantidad) as total from carrito_producto
                join productos on productos.id = carrito_producto.id_producto where id_carrito = $id_carrito";

        $resultado = mysqli_query($conexion, $sql);

        $total_pay = mysqli_fetch_assoc( $resultado );
?>

<div id="body-container" class="container">  
    <div class="rowe pedido-show">
        <div class="col-12 texto-cabecera">
            <h1> PRODUCTOS DE SU CARRITO</h1>
            <h6>Su carrito contiene <span class="cantidad_total"><?php echo $total_carrito['c'] ?></span> productos</h6>
        </div>
        <div class="row">
            <div class="col-12 producto-pedido">
                <div class="col-2 cabecera-pedido pedido-box">
                </div>
                <div class="col-2 cabecera-pedido pedido-box">
                    NOMBRE
                </div>
                <div class="col-4 cabecera-pedido pedido-box">
                    DESCRIPCIÓN
                </div>
                <div class="col-2 cabecera-pedido pedido-box">
                    CANTIDAD
                </div>
                <div class="col-1 cabecera-pedido pedido-box">

                </div>
                <div class="col-1 cabecera-pedido pedido-box">
                    TOTAL
                </div>
            </div>
        </div>
        <?php
            $sql="select u.id as id_usuario, c.id as id_carrito,p.id as id_producto,p.imagen,p.descripcion_corta, p.nombre, p.precio_iva, cp.cantidad, p.id_categoria
            from carrito as c
            join carrito_producto as cp on cp.id_carrito = c.id
            join productos as p on cp.id_producto = p.id
            join usuarios as u on c.id_cliente = u.id
            where c.id = $id_carrito";
        
         $resultado = mysqli_query($conexion, $sql);

        if ($resultado) {
            while( $producto = mysqli_fetch_assoc( $resultado ) ) {
        ?>
        <div class="row">
            <div class="col-12 producto-pedido pr_pe<?php echo $producto['id_producto']?>">
                <div class="col-2 imagen-pedido pedido-box">

                    <img src="<?php echo $producto['imagen']?>">

                </div>
                <div class="col-2 texto-pedido  pedido-box">
                    <?php echo $producto['nombre']?><br/>
                </div>
                <div class="col-4 texto-pedido pedido-box">
                <?php echo $producto['descripcion_corta']?>

                </div>

                <div class="col-2 cantidad-producto-pedido texto-pedido  pedido-box">
                    <?php 
                        if($producto['cantidad'] > 1) { ?> 
                        <input type="text" class=" form-control cantidad-info<?php echo $producto['id_producto']?>" readonly="readonly" value="<?php echo $producto['cantidad'] ?> Unidades"></br>
                            
                        <?php } else { ?>
                            <input type="text" class=" form-control cantidad-info<?php echo $producto['id_producto']?>" readonly="readonly" value="<?php echo $producto['cantidad'] ?> Unidad"></br>
                    <?php } ?>

                    <div>
                        <?php 
                            if($producto['id_categoria'] <> 32){
                                
                          ?>
                        <input class="cantidad_menos" type="button"  data-id="<?php echo $producto['id_producto']?>" data-precio="<?php echo $producto['precio_iva']?>" value="-">
                        <input class="cantidad_mas" type="button"  data-id="<?php echo $producto['id_producto']?>" data-precio="<?php echo $producto['precio_iva']?>" value="+">
                        <?php
                                }
                        ?>
                    </div>
                </div>
                <div class="col-1 pedido-box">
                    <i class="eliminar fas fa-times fa-3x" 
                                        data-id="<?php echo $producto['id_producto']?>"
                                        data-carrito="<?php echo $producto['id_carrito']?>">
                    </i>
                </div>
                <div class="col-1 texto-pedido pedido-box">
                    <span class="info-precio<?php echo $producto['id_producto']?>"><?php echo $producto['precio_iva']?></span> €<br/>

                </div>
                
            </div>
        </div>
        <?php
            }
        }
        ?>

    <div class="row">
                <div class="col-12 pedido-boton">
                <form action="<?php echo $root?>pedidos/generar_pedido.php" method="POST">
                <input type="hidden" class="id_carrito" name="id_carrito" value="<?php echo $id_carrito?>">
                <input type="hidden" name="id_usuario" value="<?php echo $id_usuario?>">
                    <script
                        src="https://checkout.stripe.com/checkout.js" class="stripe-button"
                        data-key="pk_test_BoQ6nuKBoeRBsC5TtBU5RPDL"
                        data-amount= ""
                        data-name="To String Shop"
                        data-description="Introduce los datos de tu tarjeta"
                        data-image="https://stripe.com/img/documentation/checkout/marketplace.png"
                        data-locale="auto"
                        data-currency="eur">
                    </script>
                </form>
                    <form action="<?php echo $root?>pedidos/generar_pedido.php" method="POST">
                        <input type="hidden" class="id_carrito" name="id_carrito" value="<?php echo $id_carrito?>">
                        <input type="hidden" name="id_usuario" value="<?php echo $id_usuario?>">
                        <!-- <button type="submit" class="btn btn-info btn-lg confirmar" data-url="<?php echo $root?>pedidos/generar_pedido.php">Confirmar Pedido!</button> -->
                    </form>
                    <!-- <a href="<?php echo $root?>pasarela"><button type="submit" class="btn btn-info btn-lg pasarela">Pasarela Prueba!</button></a> -->
            </div>
    </div>


<script>
$(document).ready(function(){
   $(".stripe-button-el").submit(function() {
      url = $(this).attr("data-url");
      window.open(url, '_blank');
      return false;
   });
});
</script>
