<div id="body-container" class="container">  
    <div class="row d-flex justify-content-around login-head"><h1>AUTENTICACIÓN</h1></div>
    <div class="row d-flex justify-content-around">
        
        <div class="login-sesion col-6">
            <form action="<?php echo $root?>login/reg.php" method="post" id="" class="formulario">
                <h3 class="login-titulo">Crear una cuenta</h3>
                <div class="form_content clearfix">
                    <p>Escriba su correo electrónico para crear su cuenta</p>
                    <div class="alert alert-danger" id="create_account_error" style="display:none"></div>
                    <div class="form-group"> <label for="email_create">Correo electrónico</label> 
                        <input type="email" class="form-control" id="email_create" name="email_create" value="" required></div>
                    <div class="submit"> 
                       <button class="btn btn-default button button-medium exclusive" type="submit" id="SubmitCreate" name="SubmitCreate"> 
                           <span> <i class="icon-user left"></i> Crear una cuenta </span> </button></div>
                </div>
            </form>
        </div>
        
        <div class="login-sesion col-6">
        <form action="<?php echo $root?>login/auth.php" method="post" id="login_form" class="formulario">
            <h3 class="page-subheading">¿Ya está registrado?</h3>
            <div class="form_content clearfix"><div class="form-group"> 
                <label for="email">Correo electrónico</label> 
                <input class="is_required validate account_input form-control" data-validate="isEmail" type="email" id="email" name="email" value=""></div>
                <div class="form-group"> 
                    <label for="passwd">Contraseña</label> 
                    <input class="is_required validate account_input form-control" type="password" data-validate="isPasswd" id="password" name="password" value="">
                </div>
                <p class="lost_password form-group">
                    <a href="" title="Recuperar la contraseña" rel="nofollow">
                        ¿Olvidó su contraseña?
                    </a>
                </p>
                <p class="submit"> 
                    <input type="hidden" class="hidden" name="back" value="my-account"> 
                    <button type="submit" id="SubmitLogin" name="SubmitLogin" class="button btn btn-default button-medium"> 
                        <span> 
                            <i class="icon-lock left"></i> Iniciar sesión 
                        </span> 
                    </button>
                </p>
            </div>
        </form>
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
<script>

$(document).ready(function(){
   
   $("#login").validate({
         rules: {
            email:
                {
                    required: true,
                    minlength: 10
                }
            ,
            password:"required"
         },
         messages: {
             email: "Debes introducir un email",
             password: "Debes introducir una contraseña"
         }
         
    }
    );
   
    
});

</script>
    


