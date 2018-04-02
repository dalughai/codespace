/*
What: Script para crear la tabla direccion
Why: Proyecto 1 To String Shop
Who: Sergio Álvarez García
*/

USE [tostringshop];
GO

--Compruebo si la tabla existe, si existe la borro para crearla más tarde
IF EXISTS(SELECT 1 FROM sys.tables WHERE [name]='direccion')
BEGIN
	DROP TABLE direccion;
	PRINT 'La tabla existía,por tanto la hemos borrado';
END
ELSE
BEGIN 
	PRINT 'No existe,no hace falta borrar';
END

--Creación de la tabla
CREATE TABLE direccion(
	id BIGINT IDENTITY(1,1),
	direccion VARCHAR(200) NOT NULL,
	codigo_postal SMALLINT,
	ciudad VARCHAR(30),
	provincia VARCHAR(30),
	comunidad_autonoma VARCHAR(30),
	date_add DATETIME,
	date_update DATETIME
	CONSTRAINT PK_DIRECCION PRIMARY KEY(id)
);


--------------------------------------------------------------------------------------------
	--	INSERTO VALORES--
--------------------------------------------------------------------------------------------

INSERT INTO dbo.direccion(direccion,codigo_postal,ciudad,provincia,comunidad_autonoma,date_add)
	VALUES  ('Calle Alextebuna Nº 35','29680','Estepona','Málaga','Andalucia',GETDATE()),
			('Calle Diego de Almaguer 5 4-7','29006','Málaga','Málaga','Andalucia',GETDATE());
			

SELECT*
	FROM direccion;