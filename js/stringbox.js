$.datepicker.regional['es'] = {
        closeText: 'Cerrar',
        prevText: '< Ant',
        nextText: 'Sig >',
        currentText: 'Hoy',
        monthNames: ['Enero', 'Febrero', 'Marzo', 'Abril', 'Mayo', 'Junio', 'Julio', 'Agosto', 'Septiembre', 'Octubre', 'Noviembre', 'Diciembre'],
        monthNamesShort: ['Ene','Feb','Mar','Abr', 'May','Jun','Jul','Ago','Sep', 'Oct','Nov','Dic'],
        dayNames: ['Domingo', 'Lunes', 'Martes', 'Miércoles', 'Jueves', 'Viernes', 'Sábado'],
        dayNamesShort: ['Dom','Lun','Mar','Mié','Juv','Vie','Sáb'],
        dayNamesMin: ['Do','Lu','Ma','Mi','Ju','Vi','Sá'],
        weekHeader: 'Sm',
        dateFormat: 'dd/mm/yy',
        firstDay: 1,
        isRTL: false,
        showMonthAfterYear: false,
        yearSuffix: ''
        };
        $.datepicker.setDefaults($.datepicker.regional['es']);

$(document).ready(function(){
    $.datepicker.setDefaults($.datepicker.regional["es"]);

    $("#datepicker").datepicker({
        firstDay: 1
    });

    $('#datepicker').on('change',function(){
        
        var fecha = $(this).val();
        var fecha_envio = "";
        var dia_envio = "";
        var diaActual = new Date().getDate();
        var mesActual = new Date().getMonth() + 1;
        var anioActual = new Date().getFullYear();

        console.log(diaActual);
        fechaen =convertDateEsToEn(fecha,1);
        let date = new Date(fechaen);
        var ndiaSemana = date.getDay();
        var ndia = date.getDate();
        var nmes = date.getMonth() + 1;
        var nanio = date.getFullYear();
        

        console.log(ndia, diaActual);

        if(ndiaSemana == 0){
            if(ndia == 31){
                ndia = 1;
                nmes = nmes + 1;
            } else {
                ndia = date.getDate() + 1;
            }
        }
        if(ndiaSemana == 6){
            if(ndia == 30 || ndia == 31){
                ndia = 1;
                nmes = nmes + 1;
            } else {
                ndia = date.getDate() + 2;
            }
        }
        dia_envio = ndia;
        //SI EL MES ES EL MISMO
        if(nmes == mesActual){
            if(ndia < diaActual){
                ndia = diaActual;
            }
        } else if(nmes < mesActual){
            nmes = mesActual;
            ndia = diaActual;
        }

        if(nmes < mesActual){
            nmes = mesActual;
        }
        if(nanio < anioActual){
            nanio = anioActual;
        }

        fecha_envio = ndia + "/" + nmes + "/" + nanio;
        console.log(fecha_envio);
        $('.info-stringbox').css('display','block');
        $('.fecha').text(fecha_envio);
        $('.dia_fecha').text(dia_envio);
        $('.btn-crear-sbox').css('display','block');

        var id_carrito = $('.id_carrito').val();
        var id_usuario = $('.id_usuario').val();

        getListaCarrito(id_carrito);

    });

    $('#crear_stringbox').on('click',function(){
        var id_carrito = $('.id_carrito').val();
        var id_usuario = $('.id_usuario').val();
        var dia_entrega = $('.dia_fecha').text();
        

        crearStringBox(id_carrito,id_usuario,dia_entrega);
    });


    
});
function crearStringBox(id_carrito,id_usuario,dia_entrega){

    var parametros = {
        "id_carrito" : id_carrito,
        "id_usuario" : id_usuario,
        "dia_entrega": dia_entrega
    };

    $.ajax({
        type: "POST",
        url: root + "/libs/crear_stringbox.php",
        data: parametros,
        success: function(data){

            var inst = $('[data-remodal-id=modal]').remodal();
            setTimeout(function(){
                inst.open();
                $('.date-picker').css('display','none');
                $('.info-stringbox').css('display','none');
                $('.btn-crear-sbox').css('display','none');
                $('.lista_carrito').css('display','none');
                $('.stringbox_h1').text("¡Has creado tu StringBox con exito!");
                $('.stringbox_h2').text("Puedes editar la fecha de entrega en el apartado StringBox de tu Panel de Usuario");
            },500);
            
            setTimeout(function(){
                inst.close();
            },5000);
        }
    });
}
function getListaCarrito(id_carrito){
    $.ajax({
        type: "POST",
        url: root + "/libs/get_carrito.php",
        data: {'id_carrito': id_carrito},
        success: function(data){
            $("li").remove('.infop');

            for(var producto in data){
                $('.info-productos-box').css('display','block');
                let infoProducto = $('<li class="infop"><div> <span>  </span> <span class="nombre">'+data[producto]['nombre'] +'</span><span> x </span><span class="cantidad">'+data[producto]['cantidad'] +'</span></div></li>')
                $('.lista_carrito').append(infoProducto);
            }
        
        }
    });
} 
