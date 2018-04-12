<?php 
    if(!isset($_SESSION["carrito"])){
    }
?>
<div id="body-container" class="container">  

    <div class="row d-flex justify-content-center">
        <h1><?php echo $producto['nombre']?></h1>
    </div>
    <div class="row d-flex justify-content-center">
        <h6>Referencia: <?php echo $producto['referencia']?></h6>
    </div>
    <div class=" d-flex justify-content-end logomarca">
        <img class="marca-logo" src="<?php echo $carpeta_fotos . $marca['imagen']?>">
    </div>
    <div class="row">
        <div class="producto-imagen col-sm-12 col-lg-4">
        <img class="product__image" src="<?php echo $root ?><?php echo $producto['imagen'] ?>" alt="Product 1" />
        </div>
        <div class="col-6">
            
            

            <h4></h4>
            <table class="table table-striped">
              <tbody>
                <tr>
                  <th scope="row"></th>
                  <td>Categoria</td>
                  <td><?php echo $categoria['nombre']?></td>
                </tr>
                <tr>
                  <th scope="row"></th>
                  <td>Disponibilidad</td>
                  <td><?php echo $producto['stock']?></td>
                </tr>
                <tr>
                  <th scope="row"></th>
                  <td>Gastos de envio</td>
                  <td>6.99</td>
                </tr>

                <tr>
                  <th scope="row"></th>
                  <td>Descripción Corta</td>
                  <td><?php echo $producto['descripcion_corta']?></td>
                </tr>
                <tr>
                  <th scope="row"></th>
                  <td>Precio</td>
                  <td><?php echo $producto['precio_iva']?> €</td>
                </tr>
                <tr>
                  <th scope="row"></th>
                  <td colspan="2">
            <?php if(isset($_SESSION["carrito"])){ ?>
                                <button id="" 
                                        data-producto-id="<?php echo $producto['id']?>" 
                                        data-carrito-id="<?php echo $_SESSION['carrito']['id']?>"
                                        data-producto-nombre="<?php echo $producto['nombre']?>" 
                                        data-ruta="<?php echo $root?>"
                                        data-imagen-producto="<?php echo $root ?><?php echo $producto['imagen']?>.png";
                                        data-producto-precio="<?php echo $producto['precio_iva']?>" 
                                        class="añadir btn btn-dark my-2 my-sm-0"><i class="fa fa-shopping-cart"></i> Añadir</button>
                                                        <?php } ?>

                    </td>
                </tr>
              </tbody>
            </table>
        </div>
    </div>
    <div class="descripcion container">
        <div class="col-12">
            <table class="table table-striped">
              <tbody>
                <tr>
                  <th scope="row"></th>
                  <td><h5>DESCRIPCION</h5></td>
                </tr>
                <tr>
                  <th scope="row"></th>
                  <td>
                    <p><?php echo $producto['descripcion']?></p></td>
                </tr>
                </tbody>
            </table>
        </div>
        <div clas="row">
            <?php
    $sql = "SELECT * FROM productos ";

    $resultado = sqlsrv_query($conexion, $sql);

    if ($resultado) {
    ?>
                <div id="product-carrusel" class="row text-center d-flex justify-content-center">
                    <div class="col-10">
                        <div class="car">
                            
                            <?php 
            while( $producto = sqlsrv_fetch_array( $resultado, SQLSRV_FETCH_ASSOC) ) {
                
                ?>
                        
                            <div class="item-carrusel">
                                <a href="<?php echo $root?>productos?id=<?php echo $producto['id'] ?>">
                                <img class="imagen-carrusel" src="<?php echo $root ?><?php echo $producto['imagen']?>"> 

                                <br>
                                <span class="precio-producto"><?php echo $producto['nombre'] ?></span>
                                <br>
                                    <span class="precio-producto" data-producto-precio="<?php echo $producto['precio_iva'] ?>"><?php echo $producto['precio_iva']?></span><span class="precio-producto">€ </span><br>
                                </a>
                                
                                <?php 
                                    if((isset($_SESSION['carrito']))){                                 
                                ?>
                                <!--
                                <a href="<?php echo $root?>libs/insertar_producto_carrito.php?id=<?php echo $producto['id']?>&carrito=<?php echo $_SESSION['carrito']['id']?>&cantidad=1">
-->
                                <button id="" 
                                        data-producto-id="<?php echo $producto['id']?>" 
                                        data-carrito-id="<?php echo $_SESSION['carrito']['id']?>"
                                        data-producto-nombre="<?php echo $producto['nombre']?>" 
                                        data-ruta="<?php echo $root?>"
                                        data-imagen-producto="<?php echo $root ?><?php echo $producto['imagen']?>.png";
                                        data-producto-precio="<?php echo $producto['precio_iva']?>" 
                                        class="añadir btn btn-dark my-2 my-sm-0"><i class="fa fa-shopping-cart"></i> Añadir</button>
                                <!--</a>-->
                                <?php    }  ?>

                            </div>
                            
                <?php } ?>
                        </div>
                    </div>

                </div>

    <?php            
    } else {
        $error = "Error de conexión";
        print_r( sqlsrv_errors());
        echo $error;
    }

                
    ?>
        </div>
    </div>
    
</div>
