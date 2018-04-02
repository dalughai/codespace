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
	id_usuario BIGINT,
	id_direccion BIGINT,
	CONSTRAINT PK_usuario_direccion PRIMARY KEY(id_usuario, id_direccion),
	CONSTRAINT FK_usuario_direccion_usuario FOREIGN KEY (id_usuario) REFERENCES usuarios (id) ON DELETE CASCADE ON UPDATE CASCADE,
	CONSTRAINT FK_usuario_direccion_direccion FOREIGN KEY (id_direccion) REFERENCES direcciones (id) ON DELETE CASCADE ON UPDATE CASCADE
);


--------------------------------------------------------------------------------------------
	--	INSERTO VALORES--
--------------------------------------------------------------------------------------------

INSERT INTO dbo.usuario_direccion(id_usuario,id_direccion)
	VALUES  (1,1),
			(1,2);
			

SELECT*
	FROM usuario_direccion;