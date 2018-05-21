

var cantidad = 0;
var cantidad_post = 1;
var precio = 0;
var id = 0;
var total = 0;
var imagen = "";
var nombre = "";
var ruta = "";
var contenedor_buscador = "";
var cierre_contenedor = "";
var elemento_div_close = $('</div>');
var root = "/codespace/";


$(document).ready(function(){
    var id_carrito = $('#id_carrito_pedido').val();
    $.ajax({
            url: root + 'libs/actualizar_datos_carrito.php',
            type: 'POST',
            data: {id_carrito : id_carrito},
            success: function(data){
                if(data[cantidad]['cantidad'] == null){
                    $('#cantidad').text( 0 );
                    $('#precio').text('0€');
                } else {    
                    $('#cantidad').text(data[cantidad]['cantidad']);
                    $('#precio').text(data[cantidad]['precio_total'] + '€');
                }
            }
        });
});

$(document).ready(function(){
      $('.car').slick({
          infinite: true,
          slidesToShow: 5,
          slidesToScroll: 1,
          autoplay: true,
          autoplaySpeed: 1000
});
    $('.botonizq').on('mouseenter',function(){
        console.log("hola");
        $(".mc").css("background-image", "url(" + root + "images/famarillo.png)");
        $(".mc").css("background-repeat", "repeat");
        $(".mc").css("background-size", "100px");
        $("#header-categorias").css("transition", "3s");
        $("#header-categorias").css("border-color", "#ccff00");
        
        
    })
    $('.botonizq').on('mouseleave',function(){
        console.log("dios");
        $(".mc").css("background", "");
        $("#header-categorias").css("border-color", "#C8E2E2");
    })
    $('.b2').on('mouseenter',function(){
        console.log("hola");
        $(".mc").css("background-image", "url(" + root + "images/fverde.png)");
        $(".mc").css("background-repeat", "repeat");
        $(".mc").css("background-size", "100px");
        $("#header-categorias").css("transition", "3s");
        $("#header-categorias").css("border-color", "#39ff14");
        
    })
    $('.b2').on('mouseleave',function(){
        console.log("dios");
        $(".mc").css("background", "");
        $("#header-categorias").css("border-color", "#C8E2E2");
    })
    $('.b3').on('mouseenter',function(){
        console.log("hola");
        $(".mc").css("background-image", "url(" + root + "images/frojo.png)");
        $(".mc").css("background-repeat", "repeat");
        $(".mc").css("background-size", "100px");
        $("#header-categorias").css("transition", "3s");
        $("#header-categorias").css("border-color", "#FE0000");
        
    })
    $('.b3').on('mouseleave',function(){
        console.log("dios");
        $(".mc").css("background", "");
        $("#header-categorias").css("border-color", "#C8E2E2");
    })  
    $('.b4').on('mouseenter',function(){
        console.log("hola");
        $(".mc").css("background-image", "url(" + root + "images/frosa.png)");
        $(".mc").css("background-repeat", "repeat");
        $(".mc").css("background-size", "100px");
        $("#header-categorias").css("transition", "3s");
        $("#header-categorias").css("border-color", "#FF1493");
        
    })
    $('.b4').on('mouseleave',function(){
        console.log("dios");
        $(".mc").css("background", "");
        $("#header-categorias").css("border-color", "#C8E2E2");
    })
    $('.b5').on('mouseenter',function(){
        console.log("hola");
        $(".mc").css("background-image", "url(" + root + "images/fnaranja.png)");
        $(".mc").css("background-repeat", "repeat");
        $(".mc").css("background-size", "100px");
        $("#header-categorias").css("transition", "3s");
        $("#header-categorias").css("border-color", "#FF5601");
        
    })
    $('.b5').on('mouseleave',function(){
        console.log("dios");
        $(".mc").css("background", "");
        $("#header-categorias").css("border-color", "#C8E2E2");
    })
    $('.botonder').on('mouseenter',function(){
        console.log("hola");
        $(".mc").css("background-image", "url(" + root + "images/fazul.png)");
        $(".mc").css("background-repeat", "repeat");
        $(".mc").css("background-size", "100px");
        $("#header-categorias").css("transition", "3s");
        $("#header-categorias").css("border-color", "#0098FD");
        
    })
    $('.botonder').on('mouseleave',function(){
        console.log("dios");
        $(".mc").css("background", "");
        $("#header-categorias").css("border-color", "#C8E2E2");
    })

























































    $('.eliminar').on('click',function(){
        var id_producto = $(this).attr('data-id');
        var id_carrito = $(this).attr('data-carrito');
        $.ajax({
            url: root + 'libs/eliminar_producto_pedido.php',
            type: 'POST',
            data: {
                    id_producto: id_producto,
                    id_carrito: id_carrito
                  },
            success: function(data){
                $('.pr'+id_producto).remove('.texto-pedido');
                $("tr").remove('.pr'+id_producto);
            }
        });
    });

    function obtener_registros(valorBusqueda){
        var datos = new Array();
        $.ajax({
            url: root + 'libs/datos_busqueda.php',
            type: 'POST',
            data: {valor : valorBusqueda},
            success: function(data){
                $("div").remove('.items-buscador');
                $("#buscadord").css("visibility", "visible");
                
                //datos = JSON.parse(data);
                contenedor_buscador = $('<div class="items-buscador row d-flex justify-content-start">');
                $('#buscadord').append(contenedor_buscador);
                for(var producto in data){
                    var elemento_div_open = $('<div class="col-12 item-buscador p-2"> ');
                    var elemento_imagen = $('<img class="buscador-imagen" src="">').attr("src",data[producto]['imagen']);
                    var elemento_nombre = $('<p class="nombre-producto"> </p>').text(data[producto]['nombre'] + " ");
                    
                    //var elemento_precio = $('<p> </p>').text(". " + precio + " € ");
                    elemento_div_close = $('</a></div>');
                    
                    $('.items-buscador').append(elemento_div_open);
                    $('.items-buscador').append(elemento_div_open);
                    $('.items-buscador').append(elemento_imagen);
                    $('.items-buscador').append(elemento_nombre);
                    //$('.items-carrito').append(elemento_precio);
                    $('.items-buscador').append(elemento_div_close);
                }
                $('#buscadord').append(elemento_div_close);
                //console.log(datos['nombre']);
                //$('.tx').text(datos[0]);
            }
        })
    }
    
    var eventDelegation = function(evento){
        $("#id_producto").val($(this).attr('id'));
        $("#buscar").val($(this).text());
};
    $('#buscadord').on('click','.nombre-producto', eventDelegation);
       
    $('#buscar').on('keyup',function(){
        var valorBusqueda = $(this).val();
        //console.log(valorBusqueda);
        if(valorBusqueda != ""){
            obtener_registros(valorBusqueda);    
        } else {
            
            $("#buscadord").css("visibility", "hidden");
        }
        
    });
        
    $('.añadir').on('click', function() {
        
        precio = $(this).attr('data-producto-precio');
        imagen = $(this).attr('data-imagen-producto');
        id_producto = $(this).attr('data-producto-id');
        nombre = $(this).attr('data-producto-nombre');
        id_carrito = $(this).attr('data-carrito-id');
        var parametros = {
            "id_producto" : id_producto,
            "id_carrito" : id_carrito,
            "cantidad": cantidad_post
        };
        $.ajax({
            type: "POST",
            url: root + "/libs/insertar_producto_carrito.php",
            data: parametros,
            success: function(data){
                $("#cantidad").html(data[cantidad]['cantidad']);
                $("#precio").html(data[cantidad]['precio_total'] + '€');
            }
        });
        
});
    $('#desc-carrito').click(function(){
        $("#carritod").toggle("slow");
    });
    
    $("#carrito").mouseenter(function(){
        //$("#carritod").addClass("animacion");
        //$("#carritod").css("visibility", "visible");
        
        var datos = new Array();
        id_carrito = $(this).attr('data-carrito-id');
        var parametros = {
            "id_carrito" : id_carrito
        };
        
            $.ajax({
            type: "POST",
            url: root + "/libs/actualizar_producto_carrito.php",
            data: parametros,
            beforeSend: function () {
                        //alert("Funciona");
                },
            success: function(data){
                
                total = 0;
                var cantidad = 0;
                    $("div").remove('.items-carrito');
                    var contenedor_carrito = $('<div class="items-carrito row d-flex justify-content-start">');
                    $('#carritod').append(contenedor_carrito);
                    for(var producto in data){
                        var elemento_div_open = $('<div class="col-12 item-carrito p-2">');
                        var elemento_imagen = $('<img class="carrito-imagen" src="">').attr("src",data[producto]['imagen']);
                        var elemento_nombre = $('<p> </p> <br/>').text(data[producto]['nombre'] + " ");
                        var elemento_precio = $('<p> </p>').text(". " + (data[producto]['precio_iva'] + " € "));
                        var elemento_cantidad = $('</br><p> </p>').text("- Cantidad: " + (data[producto]['cantidad']));
                        var elemento_div_close = $('</div>');

                        $('.total').text("precio final");
                        $('.items-carrito').append(elemento_div_open);
                        $('.items-carrito').append(elemento_imagen);
                        $('.items-carrito').append(elemento_nombre);
                        $('.items-carrito').append(elemento_precio);
                        $('.items-carrito').append(elemento_cantidad);                        
                        $('.items-carrito').append(elemento_div_close);
                        $('.items-carrito').append(elemento_div_close); 

                        total = total + parseInt(data[producto]['precio_total']);
                        //cantidad = cantidad + data[producto]['cantidad'];
                    }
                    $(".total").text(total + '€');
                    $("#precio").text(total + '€');
                    //*$(".cantidad").text(cantidad);


            }
        });
    });
//    $("#carrito").mouseleave(function(){
//        $("#carritod").css("visibility", "hidden");
//    });
//    $("#carritod").mouseenter(function(){
//        $("#carritod").css("visibility", "visible");
//    });
//    $("#carritod").mouseleave(function(){
//        $("#carritod").css("visibility", "hidden");
//    });
}); 