
var init = function(){


	jQuery.get( "/api/categorias", function(datos){
		
		var table = $('#categorias').DataTable({
			data: datos.categoria,
			columns: [
				{data: "id"},
				{data: "nombre"},
				{data: "descripcion"},
				{
					targets : 1 ,
					data: datos.categoria,
					render : function ( url, type, full) {
						if(full.activo == 1){
							return 'Si';
						} else {
							return 'No';
						}
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