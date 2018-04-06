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
			<div class="product__info">
				<img class="product__image" src="<?php echo $root ?><?php echo $producto['imagen'] ?>" alt="Product 1" />
				<h3 class="product__title"><?php echo $producto['nombre'] ?></h3>
				<span class="product__price"><?php echo $producto['precio'] ?></span>
				<button class="action action--button action--buy">
					<i class="fa fa-shopping-cart"></i>
					<span class="action__text">Añadir al carrito</span>
				</button>
			</div>
			<label class="action action--compare-add">
				<input class="check-hidden" type="checkbox" />
				<i class="fa fa-plus"></i>
				<i class="fa fa-check"></i>
				<span class="action__text action__text--invisible">Add to compare</span>
			</label>
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