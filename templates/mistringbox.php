<script src="<?php echo $root?>js/mistringbox.js"></script>
<input type="hidden" class="id_usuario" name="id_usuario" value="<?php echo $id_usuario ?>">
<div id="body-container" class="container">  
    <div class="">
        <div class="col-12 texto-cabecera">
            <h1> MI STRING BOX</h1>
            <h6>Aqui puedes visualizar tus String Box que has creado.</h6>
        </div>
        <div class="cont">
            <div class="row contenedor_datos container_pag grid">
            
            </div>
        </div>
    <div class="row">
                <div class="col-12 mp-pedido-boton">
                    <form action="<?php echo $root?>micuenta" method="POST">
                        <button type="submit" class="btn btn-info btn-lg confirmar">Volver a mi cuenta</button>
                    </form>
                </div>
    </div>
