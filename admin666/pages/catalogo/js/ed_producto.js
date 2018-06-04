$(document).ready(function(){

	var id_producto = getParameterByName('id');
	jQuery.get( "/api/producto/"+id_producto +"", function(datos){
		console.log(datos.producto);
		$('.nombre').val(datos.producto[0]['nombre']);
		$('.ref').val(datos.producto[0]['referencia']);
		$('.precio').val(datos.producto[0]['precio_iva'] + ' €');
		$('.desc_corta').val(datos.producto[0]['descripcion_corta']);
		$('.desc').val(datos.producto[0]['descripcion']);

	});


});

function getParameterByName(name) {
    name = name.replace(/[\[]/, "\\[").replace(/[\]]/, "\\]");
    var regex = new RegExp("[\\?&]" + name + "=([^&#]*)"),
    results = regex.exec(location.search);
    return results === null ? "" : decodeURIComponent(results[1].replace(/\+/g, " "));
}