
$(document).ready(function(){
    id_usuario = $('.id_usuario').val();
    getCustomSet(id_usuario);

});

function getCustomSet(id_usuario){
    $.ajax({
        type: "POST",
        url: root + "/libs/get_customsets.php",
        data: {id_usuario: id_usuario},
        success: function(data){

            $("div").remove('.product');
            for(var productos in data){
                var id_prod = data[productos]['id'];
                var producto = $('<div class="product mp-custom">'
                +'<a href="'+ root + 'productos?id=' + id_prod +'">'
			    +'<div class="product__info">'
				+'<img class="product__image" src="' + data[productos]['imagen'] +'" alt="Product 1" />'
				+'<h3 class="product__title">'+ data[productos]['nombre']+'</h3>'
				+'<span class="product__price">'+ data[productos]['precio_iva']+' €</span>'
				+'<button class="añadir btn btn-dark my-2 my-sm-0">Ver Producto </button>'
                +'</div> </a> </div>');
                $('.contenedor_datos').append(producto);
            }
        }
    });
}