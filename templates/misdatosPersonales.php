<script src="<?php echo $root?>js/misdatosPersonales.js"></script>
<input type="hidden" class="id_usuario" name="id_usuario" value="<?php echo $id_usuario ?>">
<div id="body-container" class="container">  
    <div class="">
        <div class="col-12 texto-cabecera">
            <h1> MIS DATOS PERSONALES</h1>
            <h6>Por favor actualice su información personal si ésta ha cambiado.</h6>
        </div>
        <div class="row contenedor_datos">
            
        </div>
    <div class="row">
                <div class="col-12 mp-pedido-boton">
                    <form action="<?php echo $root?>micuenta" method="POST">
                        <button type="submit" class="btn btn-info btn-lg confirmar">Volver a mi cuenta</button>
                    </form>
                </div>
    </div>
