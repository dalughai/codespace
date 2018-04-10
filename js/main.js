
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
//let elemento_imagen;
//let elemento_div_open;
//let elemento_div_close;
//let elemento_precio;
//let elemento_nombre;
    
$(document).ready(function(){
      $('.car').slick({
          infinite: true,
          slidesToShow: 5,
          slidesToScroll: 1,
          autoplay: true,
          autoplaySpeed: 1000,
});
    
    
    function obtener_registros(valorBusqueda){
        var datos = new Array();
        $.ajax({
            url: './libs/datos_busqueda.php',
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
        console.log($(this).text());
        $("#buscar").val($(this).text());
};
    $('#buscadord').on('click','.nombre-producto', eventDelegation);
       
    $('#buscar').on('keyup',function(){
        var valorBusqueda = $(this).val();
        console.log(valorBusqueda);
        if(valorBusqueda != ""){
            obtener_registros(valorBusqueda);    
        } else {
            
            $("#buscadord").css("visibility", "hidden");
        }
        
    });
        
    $('.añadir').on('click', function() {
        cantidad ++;
        precio = $(this).attr('data-producto-precio');
        imagen = $(this).attr('data-imagen-producto');
        root = $(this).attr('data-ruta');
        total = total + parseInt(precio);
        id_producto = $(this).attr('data-producto-id');
        nombre = $(this).attr('data-producto-nombre');
        id_carrito = $(this).attr('data-carrito-id');
        cantidad_post = 1;
        $("#cantidad").html(cantidad + " Productos: ");
        $("#precio").html(total + " € ");
        var parametros = {
            "id_producto" : id_producto,
            "id_carrito" : id_carrito,
            "cantidad": cantidad_post
        };
        $.ajax({
            type: "POST",
            url: "../codespace/libs/insertar_producto_carrito.php",
            data: parametros,
            success: function(data){
//                var elemento_div_open = $('<div class="col-12 item-carrito p-2">');
//                var elemento_imagen = $('<img class="carrito-imagen" src="">').attr("src",imagen);
//                var elemento_nombre = $('<p> </p> <br/>').text(nombre + " ");
//                var elemento_precio = $('<p> </p>').text(". " + precio + " € ");
//                var elemento_div_close = $('</div>');
//                $('.total').text(total);
//                $('.items-carrito').append(elemento_div_open);
//                $('.items-carrito').append(elemento_imagen);
//                $('.items-carrito').append(elemento_nombre);
//                $('.items-carrito').append(elemento_precio);
//                $('.items-carrito').append(elemento_div_close);
            }
        });
        
});
        $('.añadir2').on('click', function() {
        cantidad ++;
        precio = $(this).attr('data-producto-precio');
        imagen = $(this).attr('data-imagen-producto');
        root = $(this).attr('data-ruta');
        total = total + parseInt(precio);
        id_producto = $(this).attr('data-producto-id');
        nombre = $(this).attr('data-producto-nombre');
        id_carrito = $(this).attr('data-carrito-id');
        cantidad_post = 1;
        $("#cantidad").html(cantidad + " Productos: ");
        $("#precio").html(total + " € ");
        var parametros = {
            "id_producto" : id_producto,
            "id_carrito" : id_carrito,
            "cantidad": cantidad_post
        };
        $.ajax({
            type: "POST",
            url: "../libs/insertar_producto_carrito.php",
            data: parametros,
            success: function(data){
//                var elemento_div_open = $('<div class="col-12 item-carrito p-2">');
//                var elemento_imagen = $('<img class="carrito-imagen" src="">').attr("src",imagen);
//                var elemento_nombre = $('<p> </p> <br/>').text(nombre + " ");
//                var elemento_precio = $('<p> </p>').text(". " + precio + " € ");
//                var elemento_div_close = $('</div>');
//                $('.total').text(total);
//                $('.items-carrito').append(elemento_div_open);
//                $('.items-carrito').append(elemento_imagen);
//                $('.items-carrito').append(elemento_nombre);
//                $('.items-carrito').append(elemento_precio);
//                $('.items-carrito').append(elemento_div_close);
            }
        });
        
});
    
    $("#carrito").mouseenter(function(){
        $("#carritod").addClass("fadeInDown ");
        $("#carritod").css("visibility", "visible");
        var datos = new Array();
        id_carrito = $(this).attr('data-carrito-id');
        var parametros = {
            "id_carrito" : id_carrito
        };
        
            $.ajax({
            type: "POST",
            url: "../codespace/libs/actualizar_producto_carrito.php",
            data: parametros,
            beforeSend: function () {
                        //alert("Funciona");
                },
            success: function(data){
                total = 0;
                    $("div").remove('.items-carrito');
                    var contenedor_carrito = $('<div class="items-carrito row d-flex justify-content-start">');
                    $('#carritod').append(contenedor_carrito);
                    for(var producto in data){
                    console.log(data[producto]['imagen']);
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
                    total = total + parseInt(data[producto]['precio_iva']);
                    cantidad = cantidad + data[producto]['cantidad'];
                    }
                    $(".total").text(total + '€');
                    $("#precio").text(total + '€');
                    $(".cantidad").text(canitdad);


//                var producto;
//                for(producto in data){
//                    console.log(data[producto]);
//                }
                //datos = jQuery.parseJSON(data);
                //console.log(datos['nombre']);
//                datos = jQuery.parseJSON(data);
////                alert(data.length);
////                alert(datos.length);
////                data.forEach(function(producto){
////                    alert(producto['nombre']);
////                });

            }
        });
    });
    $("#carrito").mouseleave(function(){
        $("#carritod").css("visibility", "hidden");
    });
    $("#carritod").mouseenter(function(){
        $("#carritod").css("visibility", "visible");
    });
    $("#carritod").mouseleave(function(){
        $("#carritod").css("visibility", "hidden");
    });
}); 