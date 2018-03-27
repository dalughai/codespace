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
        <section id="banners">
            <img src="<?php echo $carpeta_fotos?>/banner.jpg"
        </section>
        <article id="presentacion">
                    <h1>Aqui comienza la Musica!</h1>
                    <p>Tienda de intrumentos Online con las ultimas novedades del mercado <br>
                    a cargo de grandes profesionales del sector que no dudaran en ofrecerte el mejor  asesoramiento</p>
        </article>
        <section id="index_box">
            <div class="index_view">
                <img src="<?php echo $carpeta_fotos?>/calibre.jpg" alt="calibre" >
            </div>
            <div class="index_view">
                <img src="<?php echo $carpeta_fotos?>/mensual.jpeg" alt="mensual" >
            </div>
            <div class="index_view">
                <img src="<?php echo $carpeta_fotos?>/envios.jpg" alt="envios" >
            </div>
        </section>
        <section id="index_view_product">
            <div id="view-product">
                <div class="producto">
                    <div class="img_producto">
                        <img src="<?php echo $fotos_productos?>/2221.png" alt="eb2221">
                    </div>
                    <div class="cab_producto">
                        <h3>ERNIE BALL 2221 010-046</h3>
                    </div>
                    <div class="info_producto">
                        <p>Juego de cuerdas para guitarra electrica, calibre 010-046</p>
                        <a href="detalleproducto.php">Mas información</a>
                    </div>
                </div>
            </div>
        </section>
    </main>
    <?php include("templates/footer.php");?>     
</body>
</html>
