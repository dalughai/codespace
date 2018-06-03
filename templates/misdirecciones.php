<script src="<?php echo $root?>js/misdirecciones.js"></script>
<input type="hidden" class="id_usuario" name="id_usuario" value="<?php echo $id_usuario ?>">
<div id="body-container" class="container">  
    <div class="">
        <div class="col-12 texto-cabecera">
            <h1> MIS DIRECCIONES</h1>
            <h6>Configure sus datos de pago y de envio. Estos serán seleccionados por defecto cuando haga un pedido.</h6>
        </div>
        <div class="row contenedor_direcciones">
            
        </div>
    <div class="row">
                <div class="col-12 mp-pedido-boton">
                    <form action="<?php echo $root?>micuenta" method="POST">
                        <button type="submit" class="btn btn-info btn-lg confirmar">Volver a mi cuenta</button>
                    </form>
                </div>
    </div>
