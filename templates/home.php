<div id="body-container" class="container">  
<div class="container-fluid">
                <div id="banners" class="row">
                    <div  class="col-12 m-0">
                        <div id="carouselExampleIndicators" class="carousel slide m-0" data-ride="carousel">
                          <ol class="carousel-indicators">
                            <li data-target="#carouselExampleIndicators" data-slide-to="0" class="active"></li>
                            <li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
                            <li data-target="#carouselExampleIndicators" data-slide-to="2"></li>
                          </ol>
                          <div class="carousel-inner">
                            <div class="carousel-item active">
                              <img class="d-block w-100" src="<?php echo $root ?>images/fotos_tienda/banner.jpg" alt="First slide">
                            </div>
                            <div class="carousel-item">
                              <img class="d-block w-100" src="<?php echo $root ?>images/fotos_tienda/banner9.png" alt="Second slide">
                            </div>
                            <div class="carousel-item">
                              <img class="d-block w-100" src="<?php echo $root ?>images/fotos_tienda/banner4.jpg" alt="Third slide">
                            </div>
                          </div>
                          <a class="carousel-control-prev" href="#carouselExampleIndicators" role="button" data-slide="prev">
                            <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                            <span class="sr-only">Previous</span>
                          </a>
                          <a class="carousel-control-next" href="#carouselExampleIndicators" role="button" data-slide="next">
                            <span class="carousel-control-next-icon" aria-hidden="true"></span>
                            <span class="sr-only">Next</span>
                          </a>
                        </div>
                    </div>    
                </div>
                
                <div id="presentacion" class="row d-flex justify-content-center text-center">
                    <div class="col-sm-12 col-lg-4 p-2">
                        <img src="<?php echo $root ?>images/fotos_tienda/repair.svg">
                        <span>Maxima calidad para tu instrumento</span>
                    </div>    
                    <div class="col-sm-12 col-lg-4 p-2">
                        <img src="<?php echo $root ?>images/fotos_tienda/security.svg">
                        <span>Mayor seguridad en los pagos</span>
                    </div> 
                    <div class="col-sm-12 col-lg-4 p-2">
                        <img src="<?php echo $root ?>images/fotos_tienda/almacen.svg">
                        <span>El mayor almacen de cuerdas de Europa</span>
                    </div> 
                </div>
                
                <div id="boxs" class="row text-center d-flex justify-content-center">
                    <div class="col-sm-12 col-lg-4 col-xl-4 box">
                        <img class="" src="<?php echo $root ?>images/calibre.jpg">
                        
                    </div>
                    
                    <div class="col-sm-12 col-lg-4 col-xl-4 box">
                        <img class="" src="<?php echo $root ?>images/mensual.jpeg">

                    </div>
                    
                    <div class="col-sm-12 col-lg-4 col-xl-4 box">
                        <img class="" src="<?php echo $root ?>images/envios.jpg">

                    </div>
                </div>
                
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
