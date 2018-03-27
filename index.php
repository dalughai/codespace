<?php 

include("startApp.php"); 
$titulo = "To String Shop";
?>
<!doctype html>
<html>
    <?php include("templates/head.php");?> 
<body>
    
    <?php include("templates/header.php");?>
    
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
                              <img class="d-block w-100" src="images/envios.jpg" alt="Third slide">
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
                
                <div id="boxs" class="row">
                    <div class="col-4 box">
                        <img class="" src="images/calibre.jpg">
                    </div>
                    
                    <div class="col-4 box">
                        <img class="" src="images/mensual.jpeg">

                    </div>
                    
                    <div class="col-4 box">
                        <img class="" src="images/envios.jpg">

                    </div>
                </div>
                
                <div id="product-carrusel" class="row">
                    <div  class="col-12 m-0">
                        <div id="carouselExampleIndicators" class="carousel slide" data-ride="carousel">
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
                              <img class="d-block w-100" src="images/banner2.png" alt="Second slide">
                            </div>
                            <div class="carousel-item">
                              <img class="d-block w-100" src="images/banner.jpg" alt="Third slide">
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
                
                
            </div>
 
        
        
    </main>
    <?php include("templates/footer.php");?>     
</body>
</html>
