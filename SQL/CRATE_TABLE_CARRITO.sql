/*
What: Script para crear la tabla carrito
Why: Proyecto 1 To String Shop
Who: Sergio �lvarez Garc�a
*/

USE [tostringshop];
GO

--Compruebo si la tabla existe, si existe la borro para crearla m�s tarde
IF EXISTS(SELECT 1 FROM sys.tables WHERE [name]='carrito')
BEGIN
	DROP TABLE carrito;
	PRINT 'La tabla exist�a,por tanto la hemos borrado';
END
ELSE
BEGIN 
	PRINT 'No existe,no hace falta borrar';
END

--Creaci�n de la tabla
CREATE TABLE carrito(
	id BIGINT IDENTITY(1,1),
	id_cliente BIGINT,
	date_add DATETIME,
	date_update DATETIME,
	CONSTRAINT PK_carrito PRIMARY KEY(id),
	);


--------------------------------------------------------------------------------------------
	--	INSERTO VALORES--
--------------------------------------------------------------------------------------------

INSERT INTO dbo.carrito(id_cliente,date_add)
	VALUES  (1,GETDATE());		

SELECT*
	FROM carrito;