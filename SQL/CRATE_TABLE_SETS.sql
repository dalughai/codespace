/*TRA
What: Script para crear la tabla sets
Why: Proyecto 1 To String Shop
Who: Sergio �lvarez Garc�a
*/

USE [tostringshop];
GO

--Compruebo si la tabla existe, si existe la borro para crearla m�s tarde
IF EXISTS(SELECT 1 FROM sys.tables WHERE [name]='sets')
BEGIN
	DROP TABLE sets;
	PRINT 'La tabla exist�a,por tanto la hemos borrado';
END
ELSE
BEGIN 
	PRINT 'No existe,no hace falta borrar';
END

--Creaci�n de la tabla
CREATE TABLE sets(
	id BIGINT IDENTITY(1,1),
	num_cuerda smalliNT,
	items BIGINT,
	categoria INT,
	imagen varchar(100),
	CONSTRAINT PK_sets PRIMARY KEY(id),
	CONSTRAINT FK_sets_categorias FOREIGN KEY (categoria) REFERENCES categorias (id) on delete no action on update cascade,
);

SELECT*
	FROM sets;