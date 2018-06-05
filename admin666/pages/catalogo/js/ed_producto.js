$(document).ready(function(){

	var id_producto = getParameterByName('id');
	getDatosProducto(id_producto);



	$('.guardar').on('click',function(){

		var parametros = {
			id: $('.id').val(),
			nombre: $('.nombre').val(),
			referencia: $('.ref').val(),
			precio: $('.precio').val(),
			descripcion_corta: $('.desc_corta').val(),
			descripcion: $('.desc').val()
		}
		// var id = $('.id').val();
		// var nombre = $('.nombre').val();
		// var ref = $('.ref').val();
		// var precio = $('precio').val();
		// var desc_corta = $('.desc_corta').val();
		// var desc = $('.desc').val();

		jQuery.post("/api/producto/update",{
			id: $('.id').val(),
			nombre: $('.nombre').val(),
			referencia: $('.ref').val(),
			precio: $('.precio').val(),
			descripcion_corta: $('.desc_corta').val(),
			descripcion: $('.desc').val()},
		function(datos){
			var inst = $('[data-remodal-id=modal]').remodal();
			inst.open();
			getDatosProducto(id_producto);
		});
	});
});


function getDatosProducto(id_producto){
	jQuery.get( "/api/producto/"+id_producto +"", function(datos){
		console.log(datos.producto);
		$('.id').val(datos.producto[0]['id']);
		$('.nombre').val(datos.producto[0]['nombre']);
		$('.ref').val(datos.producto[0]['referencia']);
		$('.precio').val(datos.producto[0]['precio_iva']);
		$('.desc_corta').val(datos.producto[0]['descripcion_corta']);
		$('.desc').val(datos.producto[0]['descripcion']);
	});
}

function getParameterByName(name) {
    name = name.replace(/[\[]/, "\\[").replace(/[\]]/, "\\]");
    var regex = new RegExp("[\\?&]" + name + "=([^&#]*)"),
    results = regex.exec(location.search);
    return results === null ? "" : decodeURIComponent(results[1].replace(/\+/g, " "));
}