/*TRA
What: Script para crear la tabla sets_productos
Why: Proyecto 1 To String Shop
Who: Sergio Álvarez García
*/

USE [tostringshop];
GO

--Compruebo si la tabla existe, si existe la borro para crearla más tarde
IF EXISTS(SELECT 1 FROM sys.tables WHERE [name]='sets_productos')
BEGIN
	DROP TABLE sets_productos;
	PRINT 'La tabla existía,por tanto la hemos borrado';
END
ELSE
BEGIN 
	PRINT 'No existe,no hace falta borrar';
END

--Creación de la tabla
CREATE TABLE sets_productos(
	id_set BIGINT,
	id_producto BIGINT,
	CONSTRAINT PK_sets_productos PRIMARY KEY(id_set,id_producto),
	CONSTRAINT FK_sets_productos_sets FOREIGN KEY (id_set) REFERENCES sets (id) on delete no action on update no action,
	CONSTRAINT FK_sets_productos_productos FOREIGN KEY (id_producto) REFERENCES productos (id) on delete no action on update no action,
);

SELECT*
	FROM sets_productos;