
var init = function(){


	jQuery.get( "/api/clientes", function(datos){
		
		var table = $('#clientes').DataTable({
			data: datos.cliente,
			columns: [
				{data: "id"},
				{data: "nombre"},
				{data: "apellido_1"},
				{data: "apellido_2"},
				{data: "email"},
				{data: "telefono"},
				{data: "fecha_nacimiento"},
				{data: "direccion"},
				{data: "codigo_postal"},
				{data: "ciudad"},
			]
			
		});

	});

	jQuery.get( "/api/carritos", function(datos){
		
		var table = $('#carritos').DataTable({
			data: datos.carrito,
			columns: [
				{data: "id"},
				{data: "email"},
				{data: "fecha"},
				{data: "cantidad"}
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