$(document).ready(function(){

	$('.crear').on('click',function(){
		jQuery.post("/api/producto/add",{
			nombre: $('.nombre').val(),
			referencia: $('.ref').val(),
			precio: $('.precio').val(),
			categoria: $('.categorias').val(),
			marca: $('.marca').val(),
			descripcion_corta: $('.desc_corta').text(),
			descripcion: $('.desc').text()} , 
		function(){
					
				var inst = $('[data-remodal-id=modal]').remodal();
				inst.open();
		});
	});
});



	
