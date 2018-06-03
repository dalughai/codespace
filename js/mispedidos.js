
$(document).ready(function(){
    id_usuario = $('.id_usuario').val();
    var mp_total;
    var mp_estado;
    $.ajax({
        type: "POST",
        url: root + "/libs/get_mispedidos.php",
        data: {id_usuario: id_usuario},
        success: function(data){

            $("div").remove('.product');
            for(var pedidos in data){
                if(data[pedidos]['total_IVA'] == null){
                    mp_total = "Pedido no confirmado";
                    mp_estado = "-"
                } else {
                    mp_total = data[pedidos]['total_IVA'] + ' €';
                    mp_estado =  data[pedidos]['estado'];
                }
                var pedido = $('<div class="col-12 mp-pedidos">'+
                    '<div class="col-3 mp-box">'+
                        data[pedidos]['referencia']+
                    '</div>'+
                    '<div class="col-3 mp-box">'+
                        data[pedidos]['fecha']+ 
                    '</div>'+
                    '<div class="col-3 mp-box">'+
                        mp_total +
                    '</div>'+
                    '<div class="col-3 mp-box">'+
                       mp_estado+
                    '</div>'+
                '</div>'
                );
                $('.mp-lista-pedidos').append(pedido);
            }
        }
    });
});