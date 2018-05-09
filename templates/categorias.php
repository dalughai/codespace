<?php 
    $idcategoria = $_GET['id'];

    $sql = "SELECT * FROM categorias where id = $idcategoria";

    $resultado = sqlsrv_query($conexion, $sql);

    $categoria = sqlsrv_fetch_array( $resultado, SQLSRV_FETCH_ASSOC);    
?>

<div id="body-container" class="container">  
    <div class="row d-flex justify-content-around categoria-show">
        <img src="<?php echo $root?><?php echo $categoria['logo']?>">
    </div>
    <div class="row d-flex justify-content-around categorias-head">
        <h1><?php echo $categoria['nombre']?> </h1>
    </div>
    <div class="row d-flex justify-content-around categorias-head">
        <h5><?php echo $categoria['descripcion']?> </h5>
    </div>
    
    <div class="filtro">
        <div class="titulo-filtro">FILTRAR POR:</div>
        <div>
            <select class="custom-select custom-select-md">
              <option selected>Marca: </option>
            <?php 
                $sql = "SELECT * FROM fabricantes ";

                $resultado = sqlsrv_query($conexion, $sql);

                if ($resultado) {
                    while( $categoria = sqlsrv_fetch_array( $resultado, SQLSRV_FETCH_ASSOC) ) {       
            ?>
              <option value="<?php echo $categoria['id'] ?>"><?php echo $categoria['nombre'] ?></option>
            <?php   } 
                }
            ?>
            </select>
        </div>
        <div>
            <select class="custom-select custom-select-md">
              <option selected>Tipo de producto: </option>
              <option value="1">Juego de cuerdas</option>
              <option value="2">Cuerdas Sueltas</option>
              <option value="3">Sets Customizados</option>
            </select>
        </div>
        <div>
            <select class="custom-select custom-select-md">
              <option selected>Precio: </option>
              <option value="1">Mas Baratos Primero</option>
              <option value="2">Mas Caro Primero</option>
            </select>
        </div>
    </div>
    <div class="compare-basket">
	<!-- comparison item miniatures come here -->
	<button class="action action--button action--compare"><i class="fa fa-check"></i><span class="action__text">Compare</span></button>
    </div>
<!-- Main view -->
    <div class="view">
	<!-- Blueprint header -->
	<header class="bp-header cf"><!-- ... --></header>
	<!-- Product grid -->
	<section class="grid">
		<!-- Products -->
        
    <?php
    $sql = "SELECT * FROM productos where id_categoria = '$idcategoria'";

    $resultado = sqlsrv_query($conexion, $sql);

    if ($resultado) {
                            
     while( $producto = sqlsrv_fetch_array( $resultado, SQLSRV_FETCH_ASSOC) ) {
                
        ?>
		<div class="product">
            <a href="<?php echo $root?>productos?id=<?php echo $producto['id'] ?>">
			<div class="product__info">
				<img class="product__image" src="<?php echo $producto['imagen'] ?>" alt="Product 1" />
				<h3 class="product__title"><?php echo $producto['nombre'] ?></h3>
				<span class="product__price"><?php echo $producto['precio_iva'] ?> €</span>
				<button class="añadir btn btn-dark my-2 my-sm-0">Ver Producto </button>
		
                   <!--             <button id="" 
                                        data-producto-id="<?php echo $producto['id']?>" 
                                        data-carrito-id="<?php echo $_SESSION['carrito']['id']?>"
                                        data-producto-nombre="<?php echo $producto['nombre']?>" 
                                        data-ruta="<?php echo $root?>"
                                        data-imagen-producto="<?php echo $root ?><?php echo $producto['imagen']?>.png";
                                        data-producto-precio="<?php echo $producto['precio_iva']?>" 
                                        class="añadir btn btn-dark my-2 my-sm-0">Añadir</button>
-->
			</div>
            </a>
		</div>

   <?php  
     }
    } else {
        $error = "Error de conexión";
        print_r( sqlsrv_errors());
        echo $error;
    } ?>
		</section>
    </div><!-- /view -->
    <!-- product compare wrapper -->
    <section class="compare">
        <!-- comparison items come here -->
        <button class="action action--close"><i class="fa fa-remove"></i><span class="action__text action__text--invisible">Close comparison overlay</span></button>
    </section>
</div>