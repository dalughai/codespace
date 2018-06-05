
var init = function(){

	
	var ruta = "http://localhost/tostringshop/images/fotos_tienda/";
	jQuery.get( "/api/fabricantes", function(datos){
		
		var table = $('#fabricantes').DataTable({
			data: datos.fabricante,
			columns: [
				{data: "id"},
				{data: "nombre"},
				{data: "descripcion"},
				{
					targets : 1 ,
					data: datos.fabricante,
					render : function ( url, type, full) {
					return	'<img height="75px" width="250px" src="'+ ruta + full.imagen+ '"/>'
					}
				}
			]
			
		});


		
	});




};

$().ready(init);

function eliminarProducto(id){
	jQuery.post("/api/producto/delete",{id: id},function(datos){
		var inst = $('[data-remodal-id=modal]').remodal();
		inst.open();
	});
}