
var cantidad = 0;
var cantidad_post = 1;
var precio = 0;
var id = 0;
var total = 0;
var imagen = "";
var nombre = "";
var ruta = "";
let elemento_imagen;
let elemento_div_open;
let elemento_div_close;
let elemento_precio;
let elemento_nombre;
    
$(document).ready(function(){
      $('.car').slick({
          infinite: true,
          slidesToShow: 5,
          slidesToScroll: 1,
          autoplay: true,
          autoplaySpeed: 1000,
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
                var elemento_div_open = $('<div class="col-12 item-carrito p-2">');
                var elemento_imagen = $('<img class="carrito-imagen" src="">').attr("src",imagen);
                var elemento_nombre = $('<p> </p> <br/>').text(nombre + " ");
                var elemento_precio = $('<p> </p>').text(". " + precio + " € ");
                var elemento_div_close = $('</div>');
                $('.total').text(total);
                $('.items-carrito').append(elemento_div_open);
                $('.items-carrito').append(elemento_imagen);
                $('.items-carrito').append(elemento_nombre);
                $('.items-carrito').append(elemento_precio);
                $('.items-carrito').append(elemento_div_close);
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
                var elemento_div_open = $('<div class="col-12 item-carrito p-2">');
                var elemento_imagen = $('<img class="carrito-imagen" src="">').attr("src",imagen);
                var elemento_nombre = $('<p> </p> <br/>').text(nombre + " ");
                var elemento_precio = $('<p> </p>').text(". " + precio + " € ");
                var elemento_div_close = $('</div>');
                $('.total').text(total);
                $('.items-carrito').append(elemento_div_open);
                $('.items-carrito').append(elemento_imagen);
                $('.items-carrito').append(elemento_nombre);
                $('.items-carrito').append(elemento_precio);
                $('.items-carrito').append(elemento_div_close);
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
                datos = JSON.parse(data);
                console.log(datos['nombre']);
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
//                    var elemento_div_open = $('<div class="col-12 item-carrito p-2">');
//                    var elemento_imagen = $('<img class="carrito-imagen" src="">').attr("src",datos['imagen']);
//                    var elemento_nombre = $('<p> </p> <br/>').text(datos['nombre'] + " ");
//                    var elemento_precio = $('<p> </p>').text(". " + (datos['cantidad'] * datos['precio_iva']) + " € ");
//                    var elemento_div_close = $('</div>');
//                    //$('.total').text("precio final");
//                    $('.items-carrito').append(elemento_div_open);
//                    $('.items-carrito').append(elemento_imagen);
//                    $('.items-carrito').append(elemento_nombre);
//                    $('.items-carrito').append(elemento_precio);
//                    $('.items-carrito').append(elemento_div_close);  
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