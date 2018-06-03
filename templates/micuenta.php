
<div id="body-container" class="container">  
    <div>
        <div class="col-12 texto-cabecera">
                <h1> MI CUENTA </h1>
                <h6><a href="cerrar_sesion.php"> Salir <i class="fas fa-sign-out-alt"></i></a></h6>
        </div>
    </div>

    <div class="row panel-usuario">
        <div class="col-6">
            <ul>
                <li>
                    <a href="<?php echo $root ?>micuenta/mispedidos">
                        <div class="panel-usuario-texto">
                                <i class="fas fa-list-ol fa-2x"></i>
                                <span>HISTORIAL Y DETALLE DE MIS PEDIDOS</span>
                        </div>
                        
                    </a>
                </li>
                <li>
                    <a href="<?php echo $root ?>micuenta/misdirecciones">
                            <div class="panel-usuario-texto">
                                    <i class="fas fa-address-card fa-2x"></i>
                                    <span>MIS DIRECCIONES</span>
                            </div>
                    </a>
                </li>
                <li>
                    <a href="<?php echo $root ?>micuenta/misdatos">
                            <div class="panel-usuario-texto">
                                    <i class="fas fa-address-book fa-2x"></i>
                                    <span>MIS DATOS PERSONALES</span>
                            </div>
                    </a>
                </li>
            </ul>
        </div>
        <div class="col-6">
            <ul>
                <li>
                    <a href="<?php echo $root ?>micuenta/miscustomsets"> 
                            <div class="panel-usuario-texto">
                                    <i class="fas fa-strikethrough fa-2x"></i>
                                    <span>MIS CUSTOM SETS</span>
                            </div>
                    </a>
                </li>
                <li>
                    <a href="<?php echo $root ?>micuenta/mistringbox">
                        <div class="panel-usuario-texto">
                                <i class="fas fa-box fa-2x"></i>
                                <span>MI STRING BOX</span>
                        </div>
                    </a>
                </li>
                <li>
                    <a href="<?php echo $root ?>micuenta/eliminardatos">
                        <div class="panel-usuario-texto">
                                <i class="fas fa-trash-alt fa-2x"></i>
                                <span>ELIMINAR MIS DATOS</span>
                        </div>
                    </a>
                </li>
            </ul>
        </div>
    </div>
    
</div>