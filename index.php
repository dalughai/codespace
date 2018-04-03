<?php 

include("startApp.php"); 
$titulo = "To String Shop";
?>
<!doctype html>
<html>
    <?php include("templates/head.php");?> 
    
    <body>
    
        <?php include("templates/header.php");?>
    <div id="body-container" class="container">
    <main>
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
                              <img class="d-block w-100" src="images/fotos_tienda/banner.jpg" alt="First slide">
                            </div>
                            <div class="carousel-item">
                              <img class="d-block w-100" src="images/calibre2.jpg" alt="Second slide">
                            </div>
                            <div class="carousel-item">
                              <img class="d-block w-100" src="images/fotos_tienda/banner4.jpg" alt="Third slide">
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
                
                <div id="presentacion" class="row">
                    <h3><p>Aqui comienza la Musica!</h3><br/>
                    <p>Tienda de intrumentos Online con las ultimas novedades del mercado
                    a cargo de grandes profesionales del sector que no dudaran en ofrecerte el mejor asesoramiento</p>
                </div>
                
                <div id="boxs" class="row text-center">
                    <div class="col-lg-12 col-xl-4 box">
                        <img class="" src="images/calibre.jpg">
                    </div>
                    
                    <div class="col-lg-12 col-xl-4 box">
                        <img class="" src="images/mensual.jpeg">

                    </div>
                    
                    <div class="col-lg-12 col-xl-4 box">
                        <img class="" src="images/envios.jpg">

                    </div>
                </div>
                <img src="<?php echo $root ?>..\images\productos\EB2627.png">
                
    <?php
    $sql = "SELECT * FROM productos ";

    $resultado = sqlsrv_query($conexion, $sql);
    //$resultado = false;

    if ($resultado) {

    ?>
                <div id="product-carrusel" class="row text-center">
                    <div id="product-carrusel" class="col-10">
                        <div class="car">
                            
                            <?php 
            while( $row = sqlsrv_fetch_array( $resultado, SQLSRV_FETCH_ASSOC) ) {
                
                ?>
                            <div>
                                <img class="imagen-carrusel" src="<?php echo $row['imagen']?>"> 
                                <br>
                                <?php echo $row['nombre'] ?>
                                <br>
                                <?php echo $row['precio_iva'] ?> €<br>
                                <button class="btn btn-success my-2 my-sm-0">Añadir</button>
                                
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
    </main>
    <?php include("templates/footer.php");?>     
</body>
    
</html>

<script>
    $(document).ready(function(){
      $('.car').slick({
          infinite: true,
          slidesToShow: 5,
          slidesToScroll: 1,
          autoplay: true,
          autoplaySpeed: 1000,
});
    });
</script>