/*
What: Script para crear la tabla pedidos
Why: Proyecto 1 To String Shop
Who: Sergio Álvarez García
*/

USE [tostringshop];
GO

--Compruebo si la tabla existe, si existe la borro para crearla más tarde
IF EXISTS(SELECT 1 FROM sys.tables WHERE [name]='pedidos')
BEGIN
	DROP TABLE pedidos;
	PRINT 'La tabla existía,por tanto la hemos borrado';
END
ELSE
BEGIN 
	PRINT 'No existe,no hace falta borrar';
END

--Creación de la tabla
CREATE TABLE pedidos(
	id INT IDENTITY(1,1),
	id_cliente BIGINT,
	id_carrito BIGINT,
	id_tipo_pago INT,
	id_transporte INT,
	id_estado INT,
	id_factura BIGINT,
	date_add DATETIME,
	date_update DATETIME,
	total INT,
	total_IVA INT,
	referencia VARCHAR,
	CONSTRAINT PK_pedidos PRIMARY KEY(id,id_cliente,id_carrito),
	constraint FK_PEDIDOS_USUARIOS foreign key(id_cliente) references usuarios (id) on delete no action on update cascade,
	constraint FK_PEDIDOS_CARRITO foreign key(id_carrito) references carrito (id) on delete no action on update cascade,
	constraint FK_PEDIDOS_TIPO_PAGO foreign key(id_tipo_pago) references tipo_pago (id) on delete no action on update cascade,
	constraint FK_PEDIDOS_TRANSPORTE foreign key(id_transporte) references transporte (id) on delete no action on update cascade,
	constraint FK_PEDIDOS_ESTADO foreign key(id_estado) references estado_pedido (id) on delete no action on update cascade,
	constraint FK_PEDIDOS_FACTURA foreign key(id_factura) references factura (id) on delete no action on update no action
);

SELECT*
	FROM pedidos;