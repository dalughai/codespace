/*
What: Script para crear la tabla usuario_direccion
Why: Proyecto 1 To String Shop
Who: Sergio Álvarez García
*/

USE [tostringshop];
GO

--Compruebo si la tabla existe, si existe la borro para crearla más tarde
IF EXISTS(SELECT 1 FROM sys.tables WHERE [name]='usuario_direccion')
BEGIN
	DROP TABLE usuario_direccion;
	PRINT 'La tabla existía,por tanto la hemos borrado';
END
ELSE
BEGIN 
	PRINT 'No existe,no hace falta borrar';
END

--Creación de la tabla
CREATE TABLE usuario_direccion(
	id BIGINT IDENTITY(1,1),

	CONSTRAINT PK_usuario_direccion PRIMARY KEY(id),
	CONSTRAINT FK_usuario_direccion_SEXO FOREIGN KEY (usuario_direccion_fk) REFERENCES usuario_direccion_fk (id) ON DELETE CASCADE ON UPDATE CASCADE
);


--------------------------------------------------------------------------------------------
	--	INSERTO VALORES--
--------------------------------------------------------------------------------------------

INSERT INTO dbo.usuario_direccion()
	VALUES  ();
			

SELECT*
	FROM usuario_direccion;