/*
What: Script para crear la tabla carrito_producto
Why: Proyecto 1 To String Shop
Who: Sergio Álvarez García
*/

USE [tostringshop];
GO

--Compruebo si la tabla existe, si existe la borro para crearla más tarde
IF EXISTS(SELECT 1 FROM sys.tables WHERE [name]='carrito_producto')
BEGIN
	DROP TABLE carrito_producto;
	PRINT 'La tabla existía,por tanto la hemos borrado';
END
ELSE
BEGIN 
	PRINT 'No existe,no hace falta borrar';
END

--Creación de la tabla
CREATE TABLE carrito_producto(
	id_carrito BIGINT,
	id_producto BIGINT,
	cantidad int,
	CONSTRAINT PK_carrito_producto PRIMARY KEY(id_carrito,id_producto),
	constraint FK_carrito_producto_productos foreign key(id_producto) references productos (id) on delete no action on update cascade,
	constraint FK_carrito_producto_carrito foreign key(id_carrito) references carrito (id) on delete no action on update cascade
);


--------------------------------------------------------------------------------------------
	--	INSERTO VALORES--
--------------------------------------------------------------------------------------------

INSERT INTO dbo.carrito_producto(id_carrito, id_producto,cantidad)
	VALUES  (1,1,2),
			(1,2,2),
			(1,3,2);
SELECT*
	FROM carrito_producto;