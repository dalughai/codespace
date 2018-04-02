/*
What: Script para crear la tabla categorias
Why: Proyecto 1 To String Shop
Who: Sergio Álvarez García
*/

USE [tostringshop];
GO

--Compruebo si la tabla existe, si existe la borro para crearla más tarde
IF EXISTS(SELECT 1 FROM sys.tables WHERE [name]='categorias')
BEGIN
	DROP TABLE categorias;
	PRINT 'La tabla existía,por tanto la hemos borrado';
END
ELSE
BEGIN 
	PRINT 'No existe,no hace falta borrar';
END

--Creación de la tabla
CREATE TABLE categorias(
	id INT IDENTITY(1,1),
	nombre VARCHAR(50),
	descripcion VARCHAR(500),
	logo VARCHAR(300),
	activo BIT,
	padre INT,
	date_add DATETIME,
	date_update DATETIME,
	CONSTRAINT PK_categorias PRIMARY KEY(id)
);


--------------------------------------------------------------------------------------------
	--	INSERTO VALORES--
--------------------------------------------------------------------------------------------

INSERT INTO dbo.categorias(nombre, descripcion,activo,date_add)
	VALUES  ('Guitarra Electrica','<p>Cuerdas para Guitarra Electrica</p>','1',GETDATE()),
		    ('Guitarra Acustica','<p>Cuerdas para Guitarra Acustica y ElectroAcustica</p>','1',GETDATE()),
		    ('Guitarra Clasica','<p>Cuerdas para Guitarra Clasica y Flamenca</p>','1',GETDATE()),	
			('Bajo Electrico','<p>Cuerdas para Bajo Electrico</p>','1',GETDATE()),
			('Bajo Acustico','<p>Cuerdas para Bajo Acustico y ElectroAcustio</p>','1',GETDATE()),
			('Accesorios','<p>Cuerdas para Guitarra Electrica</p>','1',GETDATE()),
			('Puas','<p>Puas</p>','1',GETDATE()),
			('Cables','<p>Cables para instrumenos electricos</p>','1',GETDATE());		

SELECT*
	FROM categorias;