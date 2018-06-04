

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
var root = "/tostringshop/";


$(document).ready(function(){
    
    var id_carrito = $('#id_carrito_pedido').val();
        actualizarCarrito(id_carrito);
});
function actualizarCarrito(id_carrito){
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
            var cant = $('#cantidad').text();
            console.log(cant);
            
        }
    });
}
$(document).ready(function(){
      $('.car').slick({
          infinite: true,
          slidesToShow: 5,
          slidesToScroll: 3,
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







































    var tot = $('.cantidad_total').text();
    
    if( (tot) < 1){
        $('.pedido-boton').css('display','none');
        $('.producto-pedido').css('display','none');
    }




    $('.cantidad_menos').on('click',function(){
        var cantidad = 1;
        var id_carrito = $('.id_carrito').val();
        var id_producto = $(this).attr('data-id');
        var precio = $(this).attr('data-precio');
        var cantidad_total = $('.cantidad_total').text();
        cantidad_total --;
        $.ajax({
            url: root + 'libs/reducir_cantidad.php',
            type: 'POST',
            data: {
                id_carrito: id_carrito,
                id_producto: id_producto
              },
            success: function(data){
            
                if(data[0]['cantidad'] < 1){
                    eliminarProducto(id_producto,id_carrito);
                }else {
                    $('.cantidad-info'+id_producto).val(data[0]['cantidad'] + " Unidades");
                    $('.info-precio'+id_producto).text(data[0]['cantidad'] * precio);
                    $('.cantidad_total').text(cantidad_total);
                    $('#cantidad').text(cantidad_total);

                    actualizarCarrito(id_carrito);


                }
            }
        });
    });


    $('.cantidad_mas').on('click',function(){
        var cantidad = 1;
        var id_carrito = $('.id_carrito').val();
        var id_producto = $(this).attr('data-id');
        var precio = $(this).attr('data-precio');
        var cantidad_total = $('.cantidad_total').text();
        cantidad_total ++;
        $.ajax({
            url: root + 'libs/aumentar_cantidad.php',
            type: 'POST',
            data: {
                id_carrito: id_carrito,
                id_producto: id_producto
              },
            success: function(data){
                if(data[0]['cantidad' == 0]){
                    eliminarProducto(id_producto,id_carrito);
                }else {
                    $('.cantidad-info'+id_producto).val(data[0]['cantidad'] + " Unidades");
                    $('.info-precio'+id_producto).text(data[0]['cantidad'] * precio);
                    $('.cantidad_total').text(cantidad_total);
                    $('#cantidad').text(cantidad_total);
                    actualizarCarrito(id_carrito);                    
                }
            }
        });

    });



    $('.eliminar').on('click',function(){
        var id_producto = $(this).attr('data-id');
        var id_carrito = $(this).attr('data-carrito');
        eliminarProducto(id_producto, id_carrito);
    });
function eliminarProducto(id_producto, id_carrito){
    $.ajax({
        url: root + 'libs/eliminar_producto_pedido.php',
        type: 'POST',
        data: {
                id_producto: id_producto,
                id_carrito: id_carrito
              },
        success: function(data){
            $('div').remove('.pr_pe'+id_producto);
            $('#cantidad').text(data[0]['cantidad']);
            $('.cantidad_total').text(data[0]['cantidad']);
            actualizarCarrito(id_carrito);
            var tot = $('.cantidad_total').text();
            console.log(tot);
            if( (tot-1) < 1){
                $('.pedido-boton').css('display','none');
                $('.producto-pedido').css('display','none');
            }
        }
    });
}
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
                    var elemento_div_open = $('<div data-id="'+data[producto]['id']+'" class="col-12 item-buscador p-2"> '+
                    '<img class="buscador-imagen" src="'+data[producto]['imagen']+'">'+
                    '<p class="nombre-producto" data-id="'+data[producto]['id']+'">'+data[producto]['nombre']+ ' </p></div>');
                    
                    //var elemento_precio = $('<p> </p>').text(". " + precio + " € ");
                    elemento_div_close = $('</div>');
                    
                    $('.items-buscador').append(elemento_div_open);
                    //$('.items-buscador').append(elemento_div_open);
                    //$('.items-buscador').append(elemento_imagen);
                    //$('.items-buscador').append(elemento_nombre);
                    //$('.items-carrito').append(elemento_precio);
                }
                $('#buscadord').append(elemento_div_close);
                //console.log(datos['nombre']);
                //$('.tx').text(datos[0]);
            }
        })
    }
    var eventDelegationBuscador = function(evento){
        var idbp = $(this).attr('data-id');
        setTimeout(function(){
            window.location.replace("/tostringshop/productos?id="+ idbp);
        }, 3000);

        window.location.replace("/tostringshop/productos?id="+ idbp);

    };
    $('#buscadord').on('click','.item-buscador', eventDelegationBuscador);
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
                var precio_pay = data[cantidad]['precio_total'];
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
                        if(data[producto]['cantidad'] > 1){
                            var un = " Unidades"
                        } else {
                            var un = " Unidad"
                        }
                        var elemento_div_open = $('<div id="item-'+ data[producto]['id_producto'] +'" class="col-12 item-carrito p-2">');
                        var elemento_imagen = $('<img class="carrito-imagen" src="">').attr("src",data[producto]['imagen']);
                        var elemento_nombre = $('<p class="item-nombre"> </p>').text(data[producto]['nombre'] + " ");
                        var elemento_precio = $('<p class="item-precio"> </p>').text((data[producto]['precio_iva'] + " € "));
                        var elemento_cantidad = $('<p class="item-unidad"> </p>').text((data[producto]['cantidad']) + un);
                        var elemento_div_close = $('</div>');

                        $('.total').text("precio final");
                        $('.items-carrito').append(elemento_div_open);
                        $('#item-'+ data[producto]['id_producto'] +'').append(elemento_imagen);
                        $('#item-'+ data[producto]['id_producto'] +'').append(elemento_nombre);
                        $('#item-'+ data[producto]['id_producto'] +'').append(elemento_cantidad);
                        $('#item-'+ data[producto]['id_producto'] +'').append(elemento_precio);
                        $('#item-'+ data[producto]['id_producto'] +'').append(elemento_div_close);                        
                        $('#item-'+ data[producto]['id_producto'] +'').append(elemento_div_close);
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