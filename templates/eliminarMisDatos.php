<script src="<?php echo $root?>js/eliminarMisDatos.js"></script>
<input type="hidden" class="id_usuario" name="id_usuario" value="<?php echo $id_usuario ?>">
<div id="body-container" class="container">  
    <div class="">
        <div class="col-12 texto-cabecera">
            <h1>Eliminar mis datos</h1>
            
        </div>
        <div class="row contenedor_datos grid">
            <h6>¿Estas seguro de que quieres eliminar tus datos completamente del sistema?</h6><br/>
            <a class="" href="<?php echo $root ?>/micuenta/cerrar_sesion.php">
                <button type="submit" class="btn btn-danger btn-lg eliminar-datos">SI, ESTOY SEGURO</button>
            </a>
        </div>
            
    <div class="row">
                <div class="col-12 mp-pedido-boton">
                    <form action="<?php echo $root?>micuenta" method="POST">
                        <button type="submit" class="btn btn-info btn-lg confirmar">Volver a mi cuenta</button>
                    </form>
                </div>
    </div>
