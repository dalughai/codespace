
var init = function(){


	jQuery.get( "/api/pedidos", function(datos){
		
		var table = $('#pedidos').DataTable({
			data: datos.pedido,
			columns: [
				{data: "id"},
				{data: "referencia"},
				{data: "email"},
				{data: "id_carrito"},
				{data: "estado"},
				{data: "fecha"}
			]
			
		});

	});

	jQuery.get( "/api/facturas", function(datos){
		
		var table = $('#facturas').DataTable({
			data: datos.factura,
			columns: [
				{data: "id"},
				{data: "referencia"},
				{data: "nombre"},
				{data: "email"},
				{data: "precio_iva"},
				{data: "direccion_facturacion"},
				{data: "fecha"}
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