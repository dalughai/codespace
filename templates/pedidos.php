<div id="body-container" class="container">  
    <div class="row pedido-show">
        <div class="col-12">
            <h1> PRODUCTOS DE SU CARRITO</h1>
            <h6>Su carrito contiene X productos</h6>
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
            $sql="select u.id as id_usuario, c.id as id_carrito,p.id as id_producto,p.imagen,p.descripcion_corta, p.nombre, p.precio_iva, cp.cantidad
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
            <div class="col-12 producto-pedido">
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
                            <?php echo $producto['cantidad'] ?> Unidades
                        <?php } else { ?>
                            <?php echo $producto['cantidad'] ?> Unidad
                    <?php } ?>
                </div>
                <div class="col-1 pedido-box">
                    <i class="eliminar fas fa-times fa-3x" 
                                        data-id="<?php echo $producto['id_producto']?>"
                                        data-carrito="<?php echo $producto['id_carrito']?>">
                    </i>
                </div>
                <div class="col-1 texto-pedido pedido-box">
                    <?php echo $producto['precio_iva']?> €<br/>

                </div>
                
            </div>
        </div>
        <?php
            }
        }
        ?>

    <div class="row">
                <div class="col-6">
                    <form action="<?php echo $root?>pedidos/generar_pedido.php" method="POST">
                        <input type="hidden" name="id_carrito" value="<?php echo $id_carrito?>">
                        <input type="hidden" name="id_usuario" value="<?php echo $id_usuario?>">
                        <button type="submit" class="btn btn-success my-2 my-sm-0" data-url="<?php echo $root?>pedidos/generar_pedido.php">Confirmar Pedido!</button>
                    </form>
            </div>
    </div>


<script>
$(document).ready(function(){
   $(".pedido").click(function() {
      url = $(this).attr("data-url");
      window.open(url, '_blank');
      return false;
   });
});
</script>
