/*
What: Script para crear la tabla estado_producto
Why: Proyecto 1 To String Shop
Who: Sergio Álvarez García
*/

USE [tostringshop];
GO

--Compruebo si la tabla existe, si existe la borro para crearla más tarde
IF EXISTS(SELECT 1 FROM sys.tables WHERE [name]='estado_producto')
BEGIN
	DROP TABLE estado_producto;
	PRINT 'La tabla existía,por tanto la hemos borrado';
END
ELSE
BEGIN 
	PRINT 'No existe,no hace falta borrar';
END

--Creación de la tabla
CREATE TABLE estado_producto(
	id INT IDENTITY(1,1),
	nombre VARCHAR(30),
	descripcion VARCHAR(100),
	CONSTRAINT PK_estado_producto PRIMARY KEY(id),
);


--------------------------------------------------------------------------------------------
	--	INSERTO VALORES--
--------------------------------------------------------------------------------------------

INSERT INTO dbo.estado_producto(nombre, descripcion)
	VALUES  ('Disponible','<p>Disponible para envio inmediato</p>'),	
			('Pocas Unidades','<p>Disponible para envio, pero quedan pocas unidades (Entre 1 o 3)</p>'),	
			('Sin Stock','<p>No hay stock, disponible en 4-5 dias</p>'),
			('DESCATALOGADO','<p>¡Articulo descatalogado!</p>');


SELECT*
	FROM estado_producto;