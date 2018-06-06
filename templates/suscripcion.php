<div class="container custom">
        <div class="row d-flex justify-content-around categorias-head">
                <h1 class="stringbox_h1">¡Crea tu String Box!</h1>
        </div>
        <div class="row d-flex justify-content-around categorias-head">
                <h2 class="stringbox_h2">Selecciona la fecha de entrega</h2>
        </div>
        <div class="row date-picker">
                <div class="col-12">
                        <span class="et-fecha">Fecha: </span>
                        <input class="form-control col-3 " type="text" id="datepicker">
                </div>
        </div>
        <div class="row info-stringbox">
                <div class="col-12">
                        <span class="info-fecha fadeIn animated">Tu String Box se enviará el <b><u><span class="fecha"></span></u></b>  </span><br/>
                        <span class="info-fecha fadeIn animated">Recibirás tu StringBox el <b><u><span class="dia_fecha"></span></u></b> de cada mes  </span><br/>
                        <span class="info-fecha fadeIn animated">Con el siguiente contenido:  </span>
                </div>
        </div>
        <div class="row info-productos-box">
                <div class="col-12 fadeIn animated">
                        <ul class="lista_carrito">
                                
                        </ul>
                </div>
        </div>
        <div class="row btn-crear-sbox">
                <div class="col-12  fadeInUp animated">
                        <input id="crear_stringbox" type="button" value="Crear StringBox">
                </div>
        </div>
        

</div>
<input type="hidden" class="id_usuario" name="id_usuario" value="<?php echo $_SESSION['usuario']['id'] ?>"> 
<input type="hidden" class="id_carrito" name="id_carrito" value="<?php echo $_SESSION['carrito']['id'] ?>"> 

<div data-remodal-id="modal">
  <button data-remodal-action="close" class="remodal-close"></button>
  <h1>¡ENHORABUENA!</h1>
  <p>
        ¡HAS CREADO TU STRING BOX!
  </p>
  <img src="<?php echo $root ?>images/cubo.gif"><br/>
  <button data-remodal-action="confirm" class="remodal-confirm">Ir a mi pedido</button>
</div>

