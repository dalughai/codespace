
$(document).ready(function(){
    id_usuario = $('.id_usuario').val();
    getDatos(id_usuario);



    var eventDelegationDireccion = function(evento){
        var id_direccion = $(this).attr('data-id');
        var mp_direccion = $('#direccion'+id_direccion).val();
        var mp_cp = $('#codigo_postal'+id_direccion).val();
        var mp_ciudad = $('#ciudad'+id_direccion).val();
        var mp_provincia = $('#provincia'+id_direccion).val();
        var mp_comunidad = $('#comunidad'+id_direccion).val();

        updateDireccion(id_direccion,id_usuario,mp_direccion,mp_cp,mp_ciudad,mp_provincia,mp_comunidad)
    };
    $('.contenedor_datos').on('click','.actualizar_direccion', eventDelegationDireccion);

});
function updateDireccion(id_direccion,id_usuario,direcion,cp,ciudad,provincia,comunidad){
    
    var parametros = {
        "id_direccion": id_direccion,
        "direccion": direcion,
        "cp": cp,
        "ciudad": ciudad,
        "provincia": provincia,
        "comunidad": comunidad
    };
    $.ajax({
        type: "POST",
        url: root + "/libs/update_misdatos.php",
        data: parametros,
        success: function(data){
            getDireccion(id_usuario);
        }
    
});

}
function getDatos(id_usuario){
    $.ajax({
        type: "POST",
        url: root + "/libs/get_misdatos.php",
        data: {id_usuario: id_usuario},
        success: function(data){

            $("div").remove('.product');
            for(var datos in data){
                var dato = $( '<div class="col-6 mp-datos">'+
                '<form method="post" class="mp-datos">'+
                    '<div class="form-group form-row row">'+
                        '<label for="direccion">Nombre</label>'+
                        '<input type="text" class="form-control" id="nombre'+data[datos]['id']+'" name="nombre'+data[datos]['id']+'" value="'+data[datos]['nombre'] +'">'+
                        '<label for="direccion">Apellido 1</label>'+
                        '<input type="text" class="form-control" id="apellido_1'+data[datos]['id']+'" name="apellido_1'+data[datos]['id']+'" value="'+data[datos]['apellido_1'] +'">'+
                        '<label for="direccion">Apellido 2</label>'+
                        '<input type="text" class="form-control" id="apellido_2'+data[datos]['id']+'" name="apellido_2'+data[datos]['id']+'" value="'+data[datos]['apellido_2'] +'">'+
                        '<label for="direccion">e-mail</label>'+
                        '<input type="text" class="form-control" id="email'+data[datos]['id']+'" name="email'+data[datos]['id']+'" value="'+data[datos]['email'] +'" required>'+
                    '</div>'+
                    '<div class="form-group form-row row">'+
                        '<label for="direccion">Telefono</label>'+
                        '<input type="text" class="form-control" id="telefono'+data[datos]['id']+'" name="telefono'+data[datos]['id']+'" value="'+data[datos]['telefono'] +'" required>'+
                        '<label for="direccion">Contraseña Actual</label>'+
                        '<input type="text" class="form-control" id="password'+data[datos]['id']+'" name="password'+data[datos]['id']+'" value="">'+
                        '<label for="direccion">Nueva Contraseña</label>'+
                        '<input type="text" class="form-control" id="newpassword'+data[datos]['id']+'" name="newpassword'+data[datos]['id']+'" value="">'+
                        '<label for="direccion">Confirmar Contraseña</label>'+
                        '<input type="text" class="form-control" id="confnewpassword'+data[datos]['id']+'" name="confnewpssword'+data[datos]['id']+'" value="" required>'+
                        '<button type="button" class="btn btn-primary btn-lg actualizar_direccion" id="actualizar_direccion'+data[datos]['id']+'" data-id="'+data[datos]['id']+'">Actualizar Datos</button>'+
                        '<input type="hidden" id="id_'+data[datos]['id']+'" class="id_direccion" name="id_direccion" value="'+data[datos]['id']+'">'+
                    '</div>'+
                '</form>'+
            '</div>');
                $('.contenedor_datos').append(dato);
            }
        }
    });
}