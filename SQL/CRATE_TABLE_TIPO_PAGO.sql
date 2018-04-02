/*
What: Script para crear la tabla tipo_pago
Why: Proyecto 1 To String Shop
Who: Sergio Álvarez García
*/

USE [tostringshop];
GO

--Compruebo si la tabla existe, si existe la borro para crearla más tarde
IF EXISTS(SELECT 1 FROM sys.tables WHERE [name]='tipo_pago')
BEGIN
	DROP TABLE tipo_pago;
	PRINT 'La tabla existía,por tanto la hemos borrado';
END
ELSE
BEGIN 
	PRINT 'No existe,no hace falta borrar';
END

--Creación de la tabla
CREATE TABLE tipo_pago(
	id INT IDENTITY(1,1),
	nombre varchar(100),
	CONSTRAINT PK_tipo_pago PRIMARY KEY(id)
);


--------------------------------------------------------------------------------------------
	--	INSERTO VALORES--
--------------------------------------------------------------------------------------------

INSERT INTO dbo.tipo_pago(nombre)
	VALUES  ('Contrareembolso'),
			('Pago Tarjeta'),
			('Transferencia'),
			('Aplazame'),
			('PayPal');
SELECT*
	FROM tipo_pago;