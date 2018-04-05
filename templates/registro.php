<div id="body-container" class="container">  
    <div class="row d-flex justify-content-around login-head"><h1>REGISTRO DE USUARIO</h1></div>
    <div class="row d-flex justify-content-around">
        
        <div class="login-sesion col-12">
<form action="<?php echo $root?>registro/insertar_usuario.php" method="post" id="registro" class="registro">
    <div class="form-row">
    <div class="col-md-3 mb-3">
      <label for="validationServer14">Email</label>
      <input type="text" class="form-control"  name="email" value="<?php echo $_POST['email_create']?>">
    </div>
    </div>
    <div class="form-row">
    <div class="col-md-3 mb-3">
      <label for="validationServer10">DNI</label>
      <input type="text" class="form-control" id="validationServer10" placeholder="DNI" name="dni" value="" required>
    </div>
    <div class="col-md-3 mb-3">
      <label for="validationServer01">Nombre</label>
      <input type="text" class="form-control" id="validationServer01" placeholder="First name" name="nombre" value="" required>
    </div>
    
    <div class="col-md-3 mb-3">
      <label for="validationServer024">Primer Apellido</label>
      <input type="text" class="form-control" id="validationServer024" placeholder="Last name" name="apellido1" value="" required>

    </div>
    <div class="col-md-3 mb-3">
      <label for="validationServer02">Segundo Apellido</label>
      <input type="text" class="form-control" id="validationServer02" placeholder="Last name" name="apellido2" value="" required>
    </div>
  </div>
<div class="form-row">
    <div class="col-md-6 mb-3">
      <label for="validationServer011">Contraseña</label>
      <input type="text" class="form-control" id="validationServer011" placeholder="Contraseña" name="password" value="" required>
    </div>
    
    <div class="col-md-6 mb-3">
      <label for="validationServer022">Repita Contraseña</label>
      <input type="text" class="form-control" id="validationServer022" placeholder="Repita la Contraseña" name="repassword" value="" required>
    </div>
</div>
  <div class="form-row">
      
    <div class="col-md-3 mb-3">
      <label for="validationServer03">Codigo Postal</label>
      <input type="text" class="form-control" id="validationServer03" name="codigopostal" placeholder="Codigo Postal" required>
      <div class="invalid-feedback">
        Please provide a valid city.
      </div>
    </div>
    <div class="col-md-3 mb-3">
      <label for="validationServer04">Ciudad</label>
      <input type="text" class="form-control" id="validationServer04" name="ciudad" placeholder="Ciudad" required>
      <div class="invalid-feedback">
        Please provide a valid state.
      </div>
    </div>
    <div class="col-md-3 mb-3">
      <label for="validationServer05">Provincia</label>
      <input type="text" class="form-control" id="validationServer05" name="provincia" placeholder="Zip" required>
      <div class="invalid-feedback">
        Please provide a valid zip.
      </div>
    </div>
    <div class="col-md-3 mb-3">
      <label for="validationServer06">Comunidad Autonoma</label>
      <input type="text" class="form-control" id="validationServer06" name="comunidad" placeholder="City" required>
      <div class="invalid-feedback">
        Please provide a valid city.
      </div>
    </div>
  </div>
<div class="form-row">
    <div class="col-md-6 mb-3">
      <label for="validationServer07">Direccion</label>
      <input type="text" class="form-control" id="validationServer07" name="direccion" placeholder="Dirección" value="" required>
    </div>
    
    <div class="col-md-3 mb-3">
      <label for="validationServer08">Telefono</label>
      <input type="text" class="form-control" id="validationServer08" name="telefono" placeholder="Telefono" value="" required>

    </div>
    <div class="col-md-3 mb-3">
              <label for="validationServer07">Sexo</label><br>
    <div class="custom-control custom-radio custom-control-inline">
      <input type="radio" id="customRadioInline1" name="sexo" value="1" class="custom-control-input">
      <label class="custom-control-label" for="customRadioInline1">Hombre</label>
    </div>
    <div class="custom-control custom-radio custom-control-inline">
      <input type="radio" id="customRadioInline2" name="sexo" value="2" class="custom-control-input">
      <label class="custom-control-label" for="customRadioInline2">Mujer</label>
    </div>
    </div>
  </div>
  <div class="form-group">
    <div class="form-check">
      <input class="form-check-input" type="checkbox" value="" id="invalidCheck3" required>
      <label class="form-check-label" for="invalidCheck3">
        Acepto los terminos y condiciones.
      </label>
      <div class="invalid-feedback">
        Debes aceptar los terminos y condiciones.
      </div>
    </div>
  </div>
  <button class="btn btn-outline-info" type="submit">Registrarse!</button>
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
   
   $("#registro").validate({
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
    


