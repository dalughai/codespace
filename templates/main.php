
<!DOCTYPE html>
    <head>
        <meta charset="UTF-8">
        <title>Proyecto web</title>
        <link href="<?php echo $root?>css/main.css" rel="stylesheet" type="text/css">
    </head>
    <body>
        
        <?php include("header-no-video.php");?>
        
        <main>
            
            <?php include ($template_seccion); ?>
            
        </main>
        
        <?php include("footer.php");?>
    </body>
</html>
