/*TRA
What: Script para crear la tabla factura
Why: Proyecto 1 To String Shop
Who: Sergio Álvarez García
*/

USE [tostringshop];
GO

--Compruebo si la tabla existe, si existe la borro para crearla más tarde
IF EXISTS(SELECT 1 FROM sys.tables WHERE [name]='factura')
BEGIN
	DROP TABLE factura;
	PRINT 'La tabla existía,por tanto la hemos borrado';
END
ELSE
BEGIN 
	PRINT 'No existe,no hace falta borrar';
END

--Creación de la tabla
CREATE TABLE factura(
	id BIGINT IDENTITY(1,1),
	id_cliente BIGINT,
	id_pedido BIGINT,
	fecha_factura DATETIME,
	precio_sin_iva decimal,
	precio_iva decimal,
	direccion_facturacion varchar(200),
	direccion_envio varchar(200),
	referencia varchar(20),
	CONSTRAINT PK_factura PRIMARY KEY(id),
	CONSTRAINT FK_FACUTRA_CLIENTE FOREIGN KEY (id_cliente) REFERENCES usuarios (id) on delete no action on update cascade,
);

SELECT*
	FROM factura;