/*
What: Script para crear la tabla direcciones
Why: Proyecto 1 To String Shop
Who: Sergio �lvarez Garc�a
*/

USE [tostringshop];
GO

--Compruebo si la tabla existe, si existe la borro para crearla m�s tarde
IF EXISTS(SELECT 1 FROM sys.tables WHERE [name]='direcciones')
BEGIN
	DROP TABLE direcciones;
	PRINT 'La tabla exist�a,por tanto la hemos borrado';
END
ELSE
BEGIN 
	PRINT 'No existe,no hace falta borrar';
END

--Creaci�n de la tabla
CREATE TABLE direcciones(
	id BIGINT IDENTITY(1,1),
	direccion VARCHAR(200) NOT NULL,
	codigo_postal SMALLINT,
	ciudad VARCHAR(30),
	provincia VARCHAR(30),
	comunidad_autonoma VARCHAR(30),
	date_add DATETIME,
	date_update DATETIME
	CONSTRAINT PK_direcciones PRIMARY KEY(id)
);


--------------------------------------------------------------------------------------------
	--	INSERTO VALORES--
--------------------------------------------------------------------------------------------

INSERT INTO dbo.direcciones(direccion,codigo_postal,ciudad,provincia,comunidad_autonoma,date_add)
	VALUES  ('Calle Alextebuna N� 35','29680','Estepona','M�laga','Andalucia',GETDATE()),
			('Calle Diego de Almaguer 5 4-7','29006','M�laga','M�laga','Andalucia',GETDATE());
			

SELECT*
	FROM direcciones;