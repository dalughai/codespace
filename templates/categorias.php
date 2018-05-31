<?php 
    $idcategoria = $_GET['id'];

    $sql = "SELECT * FROM categorias where id = $idcategoria";

    $resultado = mysqli_query($conexion, $sql);

    $categoria = mysqli_fetch_assoc( $resultado );    
?>
<input type="hidden" class="categoria" name="categoria" value="<?php echo $idcategoria ?>"> 

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
            <select class="custom-select custom-select-md filtro-marcas">
              <option selected>Marca: </option>
            <?php 
                $sql = "SELECT * FROM fabricantes ";

                $resultado = mysqli_query($conexion, $sql);

                if ($resultado) {
                    while( $categoria = mysqli_fetch_assoc( $resultado ) ) {       
            ?>
              <option value="<?php echo $categoria['id'] ?>"><?php echo $categoria['nombre'] ?></option>
            <?php   } 
                }
            ?>
            </select>
        </div>
        <div>
            <select class="custom-select custom-select-md filtro-tipo">
              <option selected>Tipo de producto: </option>
              <option value="1">Juego de cuerdas</option>
              <option value="2">Cuerdas Sueltas</option>
              <option value="3">Puas</option>
              <option value="4">Manteimiento</option>

            </select>
        </div>
        <div>
            <select class="custom-select custom-select-md filtro-precio">
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

		</section>
    </div><!-- /view -->
    <!-- product compare wrapper -->
    <section class="compare">
        <!-- comparison items come here -->
        <button class="action action--close"><i class="fa fa-remove"></i><span class="action__text action__text--invisible">Close comparison overlay</span></button>
    </section>
</div>