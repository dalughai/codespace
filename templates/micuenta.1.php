<div id="body-container" class="container">  
    <div class="row mx-0 d-flex justify-content-around login-head"><h1>ADMINISTRACION DE USUARIO </h1></div>
    <div class="row d-flex justify-content-around">
        
        <div class="login-sesion col-6">
            <table class="table table-striped table-dark">
              <tbody>
                <tr>
                  <th scope="row"></th>
                  <td>Nombre</td>
                  <td><?php echo $_SESSION['usuario']['nombre']?></td>
                </tr>
                <tr>
                  <th scope="row"></th>
                  <td>Primer Apellido</td>
                  <td><?php echo $_SESSION['usuario']['apellido_1']?></td>
                </tr>
                <tr>
                  <th scope="row"></th>
                  <td>Segundo Apellido</td>
                  <td><?php echo $_SESSION['usuario']['apellido_2']?></td>
                </tr>
                <tr>
                  <th scope="row"></th>
                  <td>Email</td>
                  <td><?php echo $_SESSION['usuario']['email']?></td>
                </tr>
                  
              </tbody>
                
            </table>
            <a href="cerrar_sesion.php">
                <button class="btn btn-outline-danger my-2 my-sm-0" type="submit">Cerrar Sesion</button>
            </a>
        </div>

    </div>
    <div class="row text-center">
        <div class="col-12 ">
                <?php if(isset($error)) { ?>
            <div class="alert alert-danger" role="alert">
                <?php echo $error?>
            </div>
        <?php } ?>
        </div>
    </div>
    
</div>