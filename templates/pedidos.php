<div id="body-container" class="container">  
    <div class="row d-flex justify-content-around  categoria-show">
        <div class="col-12 login-head text-center p-2">
            <h1> MI PEDIDO</h1>
        </div>

        <?php
            $sql="select u.id as id_usuario, c.id as id_carrito,p.id as id_producto,p.imagen,p.descripcion_corta, p.nombre, p.precio_iva, cp.cantidad
            from carrito as c
            join carrito_producto as cp on cp.id_carrito = c.id
            join productos as p on cp.id_producto = p.id
            join usuarios as u on c.id_cliente = u.id
            where c.id = $id_carrito";
        
         $resultado = sqlsrv_query($conexion, $sql);

        if ($resultado) {
        ?>
        
        <div class="row">
            
        <table class="table table">
        <?php 
        while( $producto = sqlsrv_fetch_array( $resultado, SQLSRV_FETCH_ASSOC) ) {
        ?>
            <div class="col-12">
              <tbody>
                <tr class="pr<?php echo $producto['id_producto']?>">
                  <th scope="row"><i class="eliminar fas fa-times fa-1x" 
                                     data-id="<?php echo $producto['id_producto']?>"
                                     data-carrito="<?php echo $producto['id_carrito']?>">
                </i></th>
                  <td class="imagen-pedido"><img src="<?php echo $producto['imagen']?>"></td>
                  <td class="texto-pedido"><?php echo $producto['nombre']?><br/><?php echo $producto['precio_iva']?> €
                    <br/><?php if($producto['cantidad'] > 1) { ?> 
                      <?php echo $producto['cantidad'] ?> Unidades</td>
                    <?php } else { ?>
                    <?php echo $producto['cantidad'] ?> Unidad </td>
                    <?php } ?>

                </tr>
                <tr>
                    <td><td colspan="2"><?php echo $producto['descripcion_corta']?></td>
                </tr>
            </div>
        <?php
            }
        }
        ?>

            </tbody>
        </table>
    </div>
    <div class="row">
                <div class="col-12">
            <tr>
                <td>
                    <form action="<?php echo $root?>pedidos/generar_pedido.php" method="POST">
                        <input type="hidden" name="id_carrito" value="<?php echo $id_carrito?>">
                        <input type="hidden" name="id_usuario" value="<?php echo $id_usuario?>">
                        <button type="submit" class="btn btn-success my-2 my-sm-0 pedido" data-url="<?php echo $root?>pedidos/generar_pedido.php">Confirmar Pedido!</button>
                    </form>
                </td>
            </tr>
            </div>
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
