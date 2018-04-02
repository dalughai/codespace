/*
What: Script para crear la tabla fabricantes
Why: Proyecto 1 To String Shop
Who: Sergio Álvarez García
*/

USE [tostringshop];
GO

--Compruebo si la tabla existe, si existe la borro para crearla más tarde
IF EXISTS(SELECT 1 FROM sys.tables WHERE [name]='fabricantes')
BEGIN
	DROP TABLE fabricantes;
	PRINT 'La tabla existía,por tanto la hemos borrado';
END
ELSE
BEGIN 
	PRINT 'No existe,no hace falta borrar';
END

--Creación de la tabla
CREATE TABLE fabricantes(
	id INT IDENTITY(1,1),
	nombre VARCHAR(30),
	descripcion VARCHAR(30),
	imagen VARCHAR(30)
	CONSTRAINT PK_fabricantes PRIMARY KEY(id),
);


--------------------------------------------------------------------------------------------
	--	INSERTO VALORES--
--------------------------------------------------------------------------------------------

INSERT INTO dbo.fabricantes(nombre, descripcion)
	VALUES  ('Ernie Ball','<p>Fabricante de cuerdas</p>'),	
			('Daddario','<p>Fabricante de cuerdas</p>'),	
			('DR','<p>Fabricante de cuerdas</p>'),
			('ELIXIR','<p>Fabricante de cuerdas</p>');


SELECT*
	FROM fabricantes;