<script src="<?php echo $root?>js/mispedidos.js"></script>
<input type="hidden" class="id_usuario" name="id_usuario" value="<?php echo $id_usuario ?>">
<div id="body-container" class="container">  
    <div class="">
        <div class="col-12 texto-cabecera">
            <h1> HISTORIAL DE PEDIDOS</h1>
            <h6>Lista de pedidos desde la creación de su cuenta</h6>
        </div>
        <div class="row">
            <div class="col-12 mp-pedidos">
                <div class="col-3 mp-cabecera-pedido pedido-box">
                    Referencia del pedido
                </div>
                <div class="col-3 mp-cabecera-pedido pedido-box">
                    Fecha
                </div>
                <div class="col-3 mp-cabecera-pedido pedido-box">
                    Precio total
                </div>
                <div class="col-3 mp-cabecera-pedido pedido-box">
                    Estado
                </div>
            </div>
        </div>

    <div class="row mp-lista-pedidos ">
            
    </div>
    <div class="row">
                <div class="col-12 mp-pedido-boton">
                    <form action="<?php echo $root?>micuenta" method="POST">
                        <button type="submit" class="btn btn-info btn-lg confirmar">Volver a mi cuenta</button>
                    </form>
            </div>
    </div>
