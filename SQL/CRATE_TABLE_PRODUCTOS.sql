/*
What: Script para crear la tabla productos
Why: Proyecto 1 To String Shop
Who: Sergio Álvarez García
*/

USE [tostringshop];
GO

--Compruebo si la tabla existe, si existe la borro para crearla más tarde
IF EXISTS(SELECT 1 FROM sys.tables WHERE [name]='productos')
BEGIN
	DROP TABLE productos;
	PRINT 'La tabla existía,por tanto la hemos borrado';
END
ELSE
BEGIN 
	PRINT 'No existe,no hace falta borrar';
END

--Creación de la tabla
CREATE TABLE productos(
	id INT IDENTITY(1,1),
	id_fabricante int,
	id_categoria int,
	activo bit,
	ean13 smallint,
	precio int,
	precio_iva int,
	referencia varchar(100),
	stock int, 
	date_add datetime,
	date_update datetime,
	estado int,
	CONSTRAINT PK_productos PRIMARY KEY(id),
	constraint FK_productos_categorias foreign key(id_categoria) references categorias (id) on delete no action on update cascade,
	constraint FK_productos_fabricantes foreign key(id_fabricante) references fabricantes (id) on delete no action on update cascade,
	constraint FK_productos_estado foreign key(estado) references estado_producto (id) on delete no action on update cascade,
);


--------------------------------------------------------------------------------------------
	--	INSERTO VALORES--
--------------------------------------------------------------------------------------------

INSERT INTO dbo.productos(id_fabricante, id_categoria,activo,ean13,precio, precio_iva, referencia,stock,date_add,date_update,estado)
	VALUES  ('Disponible','<p>Disponible para envio inmediato</p>'),	
			('Pocas Unidades','<p>Disponible para envio, pero quedan pocas unidades (Entre 1 o 3)</p>'),	
			('Sin Stock','<p>No hay stock, disponible en 4-5 dias</p>'),
			('DESCATALOGADO','<p>¡Articulo descatalogado!</p>');


SELECT*
	FROM productos;