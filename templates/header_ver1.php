<div class="container">
<header>
    <div class="row m-0">
        <div id="enlaces-izquierda" class="col-4 enlaces-header">
            <ul class="header-list">
                <li>
                    <a href="">ENVIOS</a>
                </li>
                <li>
                    <a href="">CONTACTO</a>
                </li>
                <li>
                    <a href="">AYUDA</a>
                </li>
                <li>
                    <a href="">SUGERENCIAS</a>
                </li>
            </ul>
        </div>

        <div id="logo" class="col-sm-12 col-md-12 col-lg-4 col-xl-4 text-center">
            <a href="<?php echo $root ?>index.php"><img src="<?php echo $carpeta_fotos?>/logo4.png"></a>
        </div>
        <div id="enlaces-derecha" class="col-4 enlaces-header">
            <ul class="header-list">
                <li>
                    <a href="">NOTICIAS</a>
                </li>
                <li>
                    <a href="">MARCAS</a>
                </li>
                <li>
                    <a href="">NOVEDADES</a>
                </li>
                <li>
                    <a href="<?php echo $root ?>micuenta">USUARIO</a>
                </li>
            </ul>
            
        </div>
    </div>
    <div class="row m-0">
        <div id="buscador" class="col-6 ">
            <form action="<?php echo $root ?>productos/buscador.php"id="form-buscador" method="GET" autocomplete="off" class="form-inline my-2 my-lg-0">
            <i class="logo-bus fas fa-search"></i>  
            <input id="buscar" name="buscador" class="form-control ml-3 mr-2 col-6"  type="text" placeholder="Introduzca un producto" value="">
            
            </form>                            
            <div id="buscadord" class="row" data-id-producto="">

                    <div class="items-buscador row d-flex justify-content-start text-center">

                    </div>
                             
            </div>

        </div>

        <div id="carrito-div" class="col-6 d-flex justify-content-end">
        <div id="sesion" class="col-6 text-center">
            <a href="<?php echo $root ?>login"  >Iniciar Sesion / Registrarse </a>
        </div>
            <?php 
                    if((isset($_SESSION['carrito']))){                                 
                ?>
            <div id="carrito" class="row" data-carrito-id="<?php echo $_SESSION['carrito']['id']?>">
                <i class="fas fa-shopping-cart fa-2x"></i> 
                
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
<!--
                <div class="pie-carrito row">
                        <div class="col-12">
                        <p>Precio total: <span class="total"></span></p>

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
                            <button type="submit" class="btn btn-success my-2 my-sm-0" >Ir a mi Pedido</button>
                            </form>
                        </div>
            </div>
-->
        </div>
    </div>
        </div>
    <div id="responsive-menu" class="row text-center">

    
        <div class="col-3">
            <nav class="navbar navbar-expand-lg">
                <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarTogglerDemo05" aria-controls="navbarTogglerDemo05" aria-expanded="false" aria-label="Toggle navigation">
                    <i class="fas fa-search fa-2x"></i> 
                </button>
                <div id="navbarTogglerDemo05" class="collapse navbar-collapse">
                    <ul class="navbar-nav mr-auto mt-2 mt-lg-0 categorias-menu">
                      <li class="nav-item">
                            <form id="" class="form-inline my-2 my-lg-0">
                              <input id="" class="form-control mr-auto col-12" type="search" placeholder="Buscar!" aria-label="Search">
                            </form>
                      </li>
                    </ul>
                </div>
            </nav>
        </div>

        <div class="col-3">
            <nav class="navbar navbar-expand-lg">
                <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarTogglerDemo06" aria-controls="navbarTogglerDemo06" aria-expanded="false" aria-label="Toggle navigation">
                    <i class="fas fa-caret-down"></i>         
                </button>
                <div id="navbarTogglerDemo06" class="collapse navbar-collapse">
                    <ul class="navbar-nav mr-auto mt-2 mt-lg-0">
                      <li class="nav-item">
                            <div id=""  class="row">
                                <div class="col-12 m-0">
                                    <ul class="categorias-menu">
                                      <li class="nav-item botonc">
                                        <a href="">Guitarra Electrica</a>
                                      </li>
                                    </ul>
                                </div>
                          </div>
                     </li>
                      <li class="nav-item">
                            <div id=""  class="row">
                                <div class="col-12 m-0">
                                    <ul class="categorias-menu">
                                      <li class="nav-item botonc">
                                        <a href="">Guitarra Acustica</a>
                                      </li>
                                    </ul>
                                </div>
                          </div>
                     </li>
                      <li class="nav-item">
                            <div id=""  class="row">
                                <div class="col-12 m-0">
                                    <ul class="categorias-menu">
                                      <li class="nav-item botonc">
                                        <a href="">Guitarra Clasica</a>
                                      </li>
                                    </ul>
                                </div>
                          </div>
                     </li>
                      <li class="nav-item">
                            <div id=""  class="row">
                                <div class="col-12 m-0">
                                    <ul class="categorias-menu">
                                      <li class="nav-item botonc">
                                        <a href="">Bajo Electrico</a>
                                      </li>
                                    </ul>
                                </div>
                          </div>
                     </li>
                      <li class="nav-item">
                            <div id=""  class="row">
                                <div class="col-12 m-0">
                                    <ul class="categorias-menu">
                                      <li class="nav-item botonc">
                                        <a href="">Bajo Acustico</a>
                                      </li>
                                    </ul>
                                </div>
                          </div>
                     </li>
                      <li class="nav-item">
                            <div id=""  class="row">
                                <div class="col-12 m-0">
                                    <ul class="categorias-menu">
                                      <li class="nav-item botonc">
                                        <a href="">Accesorios</a>
                                      </li>
                                    </ul>
                                </div>
                          </div>
                     </li>

                    </ul>
          </div>
            </nav>
        </div>

     

    
        <div class="col-3">
            <nav class="navbar navbar-expand-lg">
                <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarTogglerDemo07" aria-controls="navbarTogglerDemo07" aria-expanded="false" aria-label="Toggle navigation">
                    <i class="fas fa-shopping-cart"></i>
                </button>
                <div id="navbarTogglerDemo07" class="collapse navbar-collapse">
                    <ul class="navbar-nav mr-auto mt-2 mt-lg-0 categorias-menu">
                      <li class="nav-item">
                                <div id="carrito">
                                    <img src="<?php echo $carpeta_fotos?>/carrito.png">
                                </div>
                      </li>
                    </ul>
                </div>
            </nav>
        </div>

        <div class="col-3">
            <nav class="navbar navbar-expand-lg">
                <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarTogglerDemo08" aria-controls="navbarTogglerDemo08" aria-expanded="false" aria-label="Toggle navigation">
                    <i class="fas fa-user-circle fa-2x"></i>
                </button>
                <div id="navbarTogglerDemo08" class="collapse navbar-collapse">
                    <ul class="navbar-nav mr-auto mt-2 mt-lg-0 categorias-menu">
                      <li class="nav-item">
        <a href="">
            <button id="sesion-hidden" class="btn btn-outline-light my-2 my-sm-0" type="submit">Iniciar Sesion <br>
                Registrarse</button>
        </a>
                      </li>
                    </ul>
                </div>
            </nav>
        </div>
    </div>
    <div class="container">        
    <div id="header-categorias"  class="row mx-0">
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
    </div></header>
    </div>
