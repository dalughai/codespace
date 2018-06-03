
$(document).ready(function(){
    id_usuario = $('.id_usuario').val();
    getDireccion(id_usuario);



    var eventDelegationDireccion = function(evento){
        var id_direccion = $(this).attr('data-id');
        var mp_direccion = $('#direccion'+id_direccion).val();
        var mp_cp = $('#codigo_postal'+id_direccion).val();
        var mp_ciudad = $('#ciudad'+id_direccion).val();
        var mp_provincia = $('#provincia'+id_direccion).val();
        var mp_comunidad = $('#comunidad'+id_direccion).val();

        updateDireccion(id_direccion,id_usuario,mp_direccion,mp_cp,mp_ciudad,mp_provincia,mp_comunidad)
    };
    $('.contenedor_direcciones').on('click','.actualizar_direccion', eventDelegationDireccion);

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
        url: root + "/libs/update_misdirecciones.php",
        data: parametros,
        success: function(data){
            getDireccion(id_usuario);
        }
    
});
}
function getDireccion(id_usuario){
    $.ajax({
        type: "POST",
        url: root + "/libs/get_misdirecciones.php",
        data: {id_usuario: id_usuario},
        success: function(data){

            $("div").remove('.product');
            for(var direcciones in data){
                var direccion = $( '<div class="col-4 mp-direccion">'+
                '<form method="post" class="mp-direccion">'+
                    '<label for="direccion">Usuario</label>'+
                    '<input type="text" class="form-control" id="usuario'+data[direcciones]['id']+'" name="usuario'+data[direcciones]['id']+'" value="'+data[direcciones]['usuario'] +'" disabled>'+
                    '<label for="direccion">Dirección</label>'+
                    '<input type="text" class="form-control" id="direccion'+data[direcciones]['id']+'" name="direccion'+data[direcciones]['id']+'" value="'+data[direcciones]['direccion'] +'" required>'+
                    '<label for="direccion">Codigo Postal</label>'+
                    '<input type="text" class="form-control" id="codigo_postal'+data[direcciones]['id']+'" name="codigo_postal'+data[direcciones]['id']+'" value="'+data[direcciones]['codigo_postal'] +'" required>'+
                    '<label for="direccion">Ciudad</label>'+
                    '<input type="text" class="form-control" id="ciudad'+data[direcciones]['id']+'" name="ciudad'+data[direcciones]['id']+'" value="'+data[direcciones]['ciudad'] +'" required>'+
                    '<label for="direccion">Provincia</label>'+
                    '<input type="text" class="form-control" id="provincia'+data[direcciones]['id']+'" name="provincia'+data[direcciones]['id']+'" value="'+data[direcciones]['provincia'] +'" required>'+
                    '<label for="direccion">Comunidad Autonoma</label>'+
                    '<input type="text" class="form-control" id="comunidad'+data[direcciones]['id']+'" name="comunidad'+data[direcciones]['id']+'" value="'+data[direcciones]['comunidad_autonoma'] +'" required>'+
                    '<button type="button" class="btn btn-primary btn-lg actualizar_direccion" id="actualizar_direccion'+data[direcciones]['id']+'" data-id="'+data[direcciones]['id']+'">Actualizar Dirección</button>'+
                    '<input type="hidden" id="id_'+data[direcciones]['id']+'" class="id_direccion" name="id_direccion" value="'+data[direcciones]['id']+'">'+
                '</form>'+
            '</div>');
                $('.contenedor_direcciones').append(direccion);
            }
        }
    });
}