/*TRA
What: Script para crear la tabla transporte
Why: Proyecto 1 To String Shop
Who: Sergio �lvarez Garc�a
*/

USE [tostringshop];
GO

--Compruebo si la tabla existe, si existe la borro para crearla m�s tarde
IF EXISTS(SELECT 1 FROM sys.tables WHERE [name]='transporte')
BEGIN
	DROP TABLE transporte;
	PRINT 'La tabla exist�a,por tanto la hemos borrado';
END
ELSE
BEGIN 
	PRINT 'No existe,no hace falta borrar';
END

--Creaci�n de la tabla
CREATE TABLE transporte(
	id INT IDENTITY(1,1),
	nombre varchar(100),
	CONSTRAINT PK_transporte PRIMARY KEY(id)
);


--------------------------------------------------------------------------------------------
	--	INSERTO VALORES--
--------------------------------------------------------------------------------------------

INSERT INTO dbo.transporte(nombre)
	VALUES  ('Seur'),
			('CorreosExpress'),
			('Correos'),
			('Entrega en mano'),
			('Redyser');
SELECT*
	FROM transporte;