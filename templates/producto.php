
<div id="body-container" class="container">  

    <div class="row d-flex justify-content-center">
        <h1><?php echo $producto['nombre']?></h1>
    </div>
    <div class="row d-flex justify-content-center">
        <h6>Referencia: <?php echo $producto['referencia']?></h6>
    </div>
    <div class=" d-flex justify-content-end logomarca">
        <?php echo $marca['nombre']?>
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
                  <td><?php echo $producto['precio']?> €</td>
                </tr>
                <tr>
                  <th scope="row"></th>
                  <td colspan="2">
                      <button class="action action--button action--buy">
                        <i class="fa fa-shopping-cart"></i>
                        <span class="action__text">Añadir al carrito</span>
				</button></td>
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
    </div>
</div>
