/*
What: Script para crear la tabla usuarios
Why: Proyecto 1 To String Shop
Who: Sergio Álvarez García
*/

USE [tostringshop];
GO

--Compruebo si la tabla existe, si existe la borro para crearla más tarde
IF EXISTS(SELECT 1 FROM sys.tables WHERE [name]='usuarios')
BEGIN
	DROP TABLE usuarios;
	PRINT 'La tabla existía,por tanto la hemos borrado';
END
ELSE
BEGIN 
	PRINT 'No existe,no hace falta borrar';
END

--Creación de la tabla
CREATE TABLE usuarios(
	id BIGINT IDENTITY(1,1),
	nombre VARCHAR(50) NOT NULL,
	apellido_1 VARCHAR(50) NOT NULL,
	apellido_2 VARCHAR(50),
	dni varchar(9),
	sexo TINYINT,
	active tinyint,
	email VARCHAR(100),
	passwd VARCHAR(30),
	telefono int,
	fecha_nacimiento VARCHAR(30),
	direccion bigint,
	date_add datetime,
	date_update datetime,
	last_connection datetime,
	newsletter TINYINT,
	newsletter_date_add datetime,

	CONSTRAINT PK_USUARIOS PRIMARY KEY(id),
	CONSTRAINT FK_USUARIOS_SEXO FOREIGN KEY (sexo) REFERENCES sexo (id) ON DELETE CASCADE ON UPDATE CASCADE
);


--------------------------------------------------------------------------------------------
	--	INSERTO VALORES--
--------------------------------------------------------------------------------------------

INSERT INTO dbo.usuarios(nombre,apellido_1,apellido_2,dni,sexo,active,email,passwd,telefono,fecha_nacimiento,direccion,date_add)
	VALUES  ('Sergio', 'Álvarez','García','09057066B','1','1','sergioalvarez@tostringshop.com','123456',635946097,'10-09-1991','1',GETDATE());
			

SELECT*
	FROM usuarios;