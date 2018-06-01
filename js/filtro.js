
$(document).ready(function(){
    
var sql = "select productos.*,productos.nombre as nombre_producto, productos.id as p_id from productos";
var where = "";
var marca = "";
var tipo = "";
var precio = "";
    console.log(root);
    var categoria = $('.categoria').val();
    renderProductos(sql,categoria,where);

    $('.filtro-marcas').on('click',function(){
        var id_marca = ($(this).val());
        marca = id_marca;

        renderProductos(sql,categoria,where,marca,tipo,precio);

    });
    $('.filtro-tipo').on('click',function(){
        var id_tipo = ($(this).val());
        
        tipo = id_tipo;
    
        renderProductos(sql,categoria,where,marca,tipo,precio);

    });
    $('.filtro-precio').on('click',function(){
        var id_precio = ($(this).val());
        
        precio = id_precio;
    
        renderProductos(sql,categoria,where,marca,tipo,precio);

    });


});

function renderProductos(sql,categoria,where,marca,tipo, precio){
    
    var consulta = sql;
    //join con categorias
    consulta = sql + " JOIN categorias ON productos.id_categoria = categorias.id WHERE categoria_padre = " + categoria;
    
    //WHERE 
    if(marca == 1 || marca == 2 || marca == 3 || marca == 4 || marca == 5){
        where = " and id_fabricante = " + marca;
    }
    if(tipo == 1){
        where += " and (id_categoria = 25 or id_categoria = 26 or id_categoria = 27 or id_categoria = 28 or id_categoria = 29 or id_categoria = 30)";
    }
    if(tipo == 2){
        where += " and (id_categoria = 10 or id_categoria = 11 or id_categoria = 12 or id_categoria = 13 or id_categoria = 14 or id_categoria = 15)";
    }
    if(tipo == 3){
        where += " and (id_categoria = 7 )";
    }
    if(tipo == 4){
        where += " and (id_categoria = 8)";
    }
    consulta += where;
    //order by
    if(precio == 1){
        consulta += " order by productos.precio_iva ";
    }
    else if(precio == 2){
        consulta += " order by productos.precio_iva desc ";
    } else {
        consulta += " order by productos.id";
    }
    
    var parametros = {
        "consulta" : consulta,
    };

    console.log("Consulta a ejecutar " + consulta);
    $.ajax({
        type: "POST",
        url: root + "/libs/get_productos.php",
        data: parametros,
        success: function(data){
            $("div").remove('.product');

            for(var producto in data){
                
                var id_prod = data[producto]['p_id'];
                var divprod = $('<div class="product">'
                +'<a href="'+ root + 'productos?id=' + id_prod +'">'
			    +'<div class="product__info">'
				+'<img class="product__image" src="' + data[producto]['imagen'] +'" alt="Product 1" />'
				+'<h3 class="product__title">'+ data[producto]['nombre_producto']+'</h3>'
				+'<span class="product__price">'+ data[producto]['precio_iva']+' €</span>'
				+'<button class="añadir btn btn-dark my-2 my-sm-0">Ver Producto </button>'
                +'</div> </a> </div>');
                $('.grid').append(divprod);
            }
            
        }
    });

}