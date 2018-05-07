<div class="container-fluid ">

        <nav class="navbar navbar-expand-lg navbar-light bg-light">
                <a class="navbar-brand" href="#">Navbar</a>
                <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarTogglerDemo02" aria-controls="navbarTogglerDemo02" aria-expanded="false" aria-label="Toggle navigation">
                  <span class="navbar-toggler-icon"></span>
                </button>
              
                <div class="collapse navbar-collapse" id="navbarTogglerDemo02">
                  <ul class="navbar-nav mr-auto mt-2 mt-lg-0">
                    <li class="nav-item active">
                      <a class="nav-link" href="#">Home <span class="sr-only">(current)</span></a>
                    </li>
                    <li class="nav-item">
                      <a class="nav-link" href="#">Link</a>
                    </li>
                    <li class="nav-item">
                      <a class="nav-link disabled" href="#">Disabled</a>
                    </li>
                  </ul>
                                 
                  <div id="carrito-div" class="col-6 d-flex justify-content-end">

                        <?php 
                                if((isset($_SESSION['carrito']))){                                 
                            ?>
                        <div id="carrito" class="row" data-carrito-id="<?php echo $_SESSION['carrito']['id']?>">
                            <i class="fas fa-shopping-cart fa-1x"></i> 
                            
                            <?php    } else {  ?>
                        <div id="carrito" class="row">
                            <i class="fas fa-shopping-cart fa-1x"></i> 
                            <?php } ?>
                                
                                <span id="cantidad" class="cantidad"></span>
                            <span id="precio" class="precio">0 €</span>
                            <a href="#" id="desc-carrito"><i class="fas fa-arrow-down"></i></a>
                        </div>
                        <div id="carritod" class="row" data-id-producto="">
                            
                            <div class="col-12 p-2">
                                <span>Productos del carrito &nbsp &nbsp &nbsp      </span>
                                <p>Precio total: &nbsp  &nbsp  <span class="total"></span></p>
                                <form action="<?php echo $root?>pedidos/" method="POST">
                                            <input type="hidden" id="id_carrito_pedido" name="id_carrito_pedido" 
                                                   value="
                                                          <?php 
                                                                if((isset($_SESSION['carrito']))){     
                                                                echo $_SESSION['carrito']['id']; 
                                                                }
                                                          ?>">
                                            <input type="hidden" id="id_usuario_pedido" name="id_usuario_pedido" 
                                                   value="<?php 
                                                                if((isset($_SESSION['usuario']))){     
                                                                echo $_SESSION['usuario']['id']; 
                                                                }
                                                          ?>">
                                        <button type="submit" class="ir-pedido btn btn-success my-2 my-sm-0" >Ir a mi Pedido</button>
                                </form>
                            
                            </div>
                        
                            <div class="items-carrito row d-flex justify-content-start text-center">
                                
                        </div></div></div>
                    </div>
    </div>
            </div
                </div>
              </nav>



























<header>
<nav>
<div class="row fila_1">
        <div class="col-4" >
            <span class="hcontacto" >Contacto: 635 94 60 97 | info@tostringshop.com</span>
        </div>
        <div id="sesion" class="col-4 text-center">
                <a href="<?php echo $root ?>login"  >Iniciar Sesion / Registrarse </a>
        </div>
        <!-- Carrito -->
        <div class="col-4">

                <div id="carrito-div" class="col-6 d-flex justify-content-end">

                            <?php 
                                    if((isset($_SESSION['carrito']))){                                 
                                ?>
                            <div id="carrito" class="row" data-carrito-id="<?php echo $_SESSION['carrito']['id']?>">
                                <i class="fas fa-shopping-cart fa-1x"></i> 
                                
                                <?php    } else {  ?>
                            <div id="carrito" class="row">
                                <i class="fas fa-shopping-cart fa-1x"></i> 
                                <?php } ?>
                                    
                                    <span id="cantidad" class="cantidad"></span>
                                <span id="precio" class="precio">0 €</span>
                                <a href="#" id="desc-carrito"><i class="fas fa-arrow-down"></i></a>
                            </div>
                            <div id="carritod" class="row" data-id-producto="">
                                
                                <div class="col-12 p-2">
                                    <span>Productos del carrito &nbsp &nbsp &nbsp      </span>
                                    <p>Precio total: &nbsp  &nbsp  <span class="total"></span></p>
                                    <form action="<?php echo $root?>pedidos/" method="POST">
                                                <input type="hidden" id="id_carrito_pedido" name="id_carrito_pedido" 
                                                       value="
                                                              <?php 
                                                                    if((isset($_SESSION['carrito']))){     
                                                                    echo $_SESSION['carrito']['id']; 
                                                                    }
                                                              ?>">
                                                <input type="hidden" id="id_usuario_pedido" name="id_usuario_pedido" 
                                                       value="<?php 
                                                                    if((isset($_SESSION['usuario']))){     
                                                                    echo $_SESSION['usuario']['id']; 
                                                                    }
                                                              ?>">
                                            <button type="submit" class="ir-pedido btn btn-success my-2 my-sm-0" >Ir a mi Pedido</button>
                                    </form>
                                
                                </div>
                            
                                <div class="items-carrito row d-flex justify-content-start text-center">
                                    
                            </div>
                        </div>
        </div>
                </div></div>
        <!-- Fin Carrito -->
    </div>
</div>
<div class="row m-0 fila_2">
        <div class="col-4 mx-0">
            <span>La mayor y mas variada exposicion de cuerdas</span>
        </div>
        <div class="col-4 mx-0">
            <div id="logo" class="col-sm-12 col-md-12 col-lg-4 col-xl-4 text-center">
                    <a href="<?php echo $root ?>index.php"><img src="<?php echo $carpeta_fotos?>/logo5.png"></a>
            </div>
        </div>
        <div class="col-4 mx-0">
            <!-- Buscador -->
            <div id="buscador" class="">
                    <form action="<?php echo $root ?>productos/buscador.php"id="form-buscador" method="GET" autocomplete="off" class="form-inline my-2 my-lg-0">
                    <i class="logo-bus fas fa-search"></i>  
                    <input id="buscar" name="buscador" class="form-control ml-3 mr-2"  type="text" placeholder="Introduzca un producto" value="">
                    
                    </form>                            
                    <div id="buscadord" class="row" data-id-producto="">
        
                            <div class="items-buscador row d-flex justify-content-start text-center">
        
                            </div>
                                     
                    </div>
        
                </div>
            <!-- Fin Buscador -->
</div>     </div>   </div>
    </div>

</div>
</nav>
<nav>

        <div id="header-categorias"  class="row mx-0 fila_3">
                <div class="mc col-12 m-0">
        
            <ul class="categorias-menu">
              <li class="nav-item botonc">
                <a href="<?php echo $root ?>categorias?id=1">Guitarra Electrica</a>
              </li>
              <li class="nav-item botonc">
                <a href="<?php echo $root ?>categorias?id=2">Guitarra Acustica</a>
              </li>
              <li class="nav-item botonc">
                <a href="<?php echo $root ?>categorias?id=3">Guitarra Clasica</a>
              </li>
              <li class="nav-item botonc">
                <a href="<?php echo $root ?>categorias?id=4">Bajo Electrico</a>
              </li>
              <li class="nav-item botonc">
                <a href="<?php echo $root ?>categorias?id=5">Bajo Acustico</a>
              </li>
              <li class="nav-item botonc">
                <a href="<?php echo $root ?>categorias?id=6">Accesorios</a>
              </li>
            </ul>
              </div>
            </div>
</div>
</nav>
</header>

