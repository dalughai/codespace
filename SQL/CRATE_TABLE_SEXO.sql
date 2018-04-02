/*
What: Script para crear la tabla sexo
Why: Proyecto 1 To String Shop
Who: Sergio Álvarez García
*/

USE [tostringshop];
GO

--Compruebo si la tabla existe, si existe la borro para crearla más tarde
IF EXISTS(SELECT 1 FROM sys.tables WHERE [name]='sexo')
BEGIN
	DROP TABLE sexo;
	PRINT 'La tabla existía,por tanto la hemos borrado';
END
ELSE
BEGIN 
	PRINT 'No existe,no hace falta borrar';
END

--Creación de la tabla
CREATE TABLE sexo(
	id TINYINT IDENTITY(1,1)
	, sexo VARCHAR(50) NOT NULL
	, CONSTRAINT PK_SEXO PRIMARY KEY(id)
);


--------------------------------------------------------------------------------------------
	--	INSERTO VALORES--
--------------------------------------------------------------------------------------------

INSERT INTO dbo.sexo (sexo)
	VALUES  ('Masculino'),
			('Femenino');

SELECT*
	FROM sexo;