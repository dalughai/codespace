<?php
    include("../startApp.php");
    $titulo_seccion = "Catálogo de productos";
    
    $sql = "SELECT * FROM categorias";
    $resultado_categorias = mysqli_query($conexion,$sql);
    
    $sql_productos = "SELECT * FROM productos";
    $resultado_productos = mysqli_query($conexion, $sql_productos);
    
?>

<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <title>Proyecto web</title>
        <link href="<?php echo $root?>css/main.css" rel="stylesheet" type="text/css">
        <link href="<?php echo $root?>css/main2.css" rel="stylesheet" type="text/css">
    </head>
    <body>
        
        <?php include("../templates/header-no-video.php");?>
        
        <main>
            
            <section id="categorias" style="float: left">
                <ul>
                    <?php    
                   
                    while($categoria = mysqli_fetch_assoc($resultado_categorias)) {                     
                        echo "<li>{$categoria["nombre"]}</li>";                    
                     } ?>
                </ul>
                
            </section>
            
            <section id="productos" style="float: right;margin-bottom: 50px ">
                <?php 
                    while($producto = mysqli_fetch_assoc($resultado_productos)) { 
                ?>
                
                <div class="ficha-producto" style="float:left;width: 33%;min-height: 238px;text-align: center">
                    <h3><?php echo $producto["nombre"]?></h3>
                    <img src="<?php echo $carpeta_fotos . $producto["fotografia"]?>" alt="" width="100px">
                    <p>Descripcion</p>
                    <a href="">Más detalles</a>
                </div>
                
                <?php } ?>
            </section>
            
        </main>
        
        <?php include("../templates/footer.php");?>
    </body>
</html>
