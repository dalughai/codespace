/*TRA
What: Script para crear la tabla estado_pedido
Why: Proyecto 1 To String Shop
Who: Sergio Álvarez García
*/

USE [tostringshop];
GO

--Compruebo si la tabla existe, si existe la borro para crearla más tarde
IF EXISTS(SELECT 1 FROM sys.tables WHERE [name]='estado_pedido')
BEGIN
	DROP TABLE estado_pedido;
	PRINT 'La tabla existía,por tanto la hemos borrado';
END
ELSE
BEGIN 
	PRINT 'No existe,no hace falta borrar';
END

--Creación de la tabla
CREATE TABLE estado_pedido(
	id INT IDENTITY(1,1),
	nombre varchar(100),
	color varchar(15),
	CONSTRAINT PK_estado_pedido PRIMARY KEY(id)
);


--------------------------------------------------------------------------------------------
	--	INSERTO VALORES--
--------------------------------------------------------------------------------------------

INSERT INTO dbo.estado_pedido(nombre,color)
	VALUES  ('Pago Aceptado','#08D8D3'),
			('Preparación en curso','#DE840E'),
			('Enviado','#2875C3'),
			('En reparto','#4C784F'),
			('Incidecia','#000000'),
			('En transito','#4C784F'),
			('Esperando Transferencia','#D80896'),
			('Pago denegado','#BF0808'),
			('Esperando reposicion de productos','#D80896'),
			('Entregado','#00A10C');
SELECT*
	FROM estado_pedido;